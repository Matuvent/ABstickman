#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;
in vec2 NormalizedUV;
in vec2 screenPos;

out vec4 fragColor;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453123);
}

float distToSegment(vec2 p, vec2 a, vec2 b) {
    vec2 pa = p - a;
    vec2 ba = b - a;
    float t = clamp(dot(pa, ba) / dot(ba, ba), 0.0, 1.0);
    return length(pa - ba * t);
}
bool roughly_equals(float a, float b) { // 由于浮点数精度问题，不适合直接使用等号判断
    return abs(a - b) < 0.000001;
}
void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;


    vec4 marker = texture(Sampler0, texCoord0, 0.0); 
    bool isEffectTexture = (marker.r > 0.9 && marker.g > 0.9 && marker.b < 0.1);
    bool isWhite = (marker.r > 0.9 && marker.g > 0.9 && marker.b > 0.9 && (roughly_equals(marker.a, 253.0 / 255.0)));
    bool isLight = (marker.r > 0.9 && marker.g > 0.9 && marker.b > 0.9 && (roughly_equals(marker.a,127.0 / 255.0)));
    bool isBlack = (marker.r < 0.01 && marker.g < 0.01 && marker.b < 0.01);
    bool isEndPortal = (roughly_equals(marker.a, 254.0 / 255.0));
    if (color.a < 0.1 && !isEffectTexture) {
        discard;
    }
    if (isEffectTexture) {
        vec2 uv = vec2(
            (gl_FragCoord.x - 960.0) / 150.0 + 0.5,
            gl_FragCoord.y / 150.0
        );
        const float BLACK_OFFSET = 0.1;
        const float WHITE_MULT = 0.9; 
        vec2 uvBlack = uv + vec2(0.0, BLACK_OFFSET);

        float minDistWhite = 999.0;
        float minDistBlack = 999.0;
        const int MAX_NODES = 31;

        for (int n = 0; n < MAX_NODES; n++) {
            int depth = int(log2(float(n + 1)));

            float bx = 0.5, by = -5, segLen = 3;
            vec2 segStart, segEnd;

            for (int d = 0; d <= depth; d++) {
                segStart = vec2(bx, by);

                int ancestor = (n + 1) >> (depth - d);

                float angle;
                int period = int(GameTime * 10000) % 90 - 45;
                if (d == 0) {
                    angle = hash(vec2(0.0, 0.0)) * 0.12 * period - 0.06;
                } else {
                    float h = hash(vec2(float(ancestor * period), float(d)));
                    angle = h * 0.5 - 0.25;
                    angle += (ancestor & 1) == 0 ? -0.5 : 0.5;
                }

                bx += sin(angle) * segLen;
                by += cos(angle) * segLen;
                segEnd = vec2(bx, by);
                segLen *= 1.1;
            }

            float baseWidth = 0.2 * pow(0.7, float(depth));
            // 白树（粗，原地）
            float sdW = distToSegment(uv, segStart, segEnd);
            minDistWhite = min(minDistWhite, sdW / (baseWidth * WHITE_MULT));
            // 黑树（细，下移）
            float sdB = distToSegment(uvBlack, segStart, segEnd);
            minDistBlack = min(minDistBlack, sdB / baseWidth);
        }

        if (minDistBlack <= 1.0) {
            fragColor = vec4(0.0, 0.0, 0.0, 1.0); 
        } else if (minDistWhite <= 1.0) {
            fragColor = vec4(1.0, 1.0, 1.0, 1.0); 
        } else {
            discard;
        }
        return;
    }
    if (isWhite){
        fragColor = vec4(1.0, 1.0, 1.0, 1.0);
        return;
    }
    if (isLight){
        fragColor = vec4(1.0, 1.0, 1.0, 0.5);
        return;
    }
    if (isEndPortal){
        vec2 du_dx = dFdx(NormalizedUV);
        vec2 du_dy = dFdy(NormalizedUV);
        vec2 dt_dx = dFdx(texCoord0);
        vec2 dt_dy = dFdy(texCoord0);

        float det = du_dx.x * du_dy.y - du_dx.y * du_dy.x;
        
        float invDet = 1.0 / det;

        float m00 = (dt_dx.x * du_dy.y - dt_dy.x * du_dx.y) * invDet;
        float m01 = (dt_dy.x * du_dx.x - dt_dx.x * du_dy.x) * invDet;
        float m10 = (dt_dx.y * du_dy.y - dt_dy.y * du_dx.y) * invDet;
        float m11 = (dt_dy.y * du_dx.x - dt_dx.y * du_dy.x) * invDet;

        vec2 b = texCoord0 - vec2(m00 * NormalizedUV.x + m01 * NormalizedUV.y,
                                  m10 * NormalizedUV.x + m11 * NormalizedUV.y);

        float tileScale = 1.0 / 128.0;
        vec2 screenDelta = (gl_FragCoord.xy - vec2(960.0, 540.0)) * tileScale;
        vec2 atlasUV = texCoord0 + vec2(m00 * screenDelta.x + m01 * screenDelta.y,
                                         m10 * screenDelta.x + m11 * screenDelta.y);

        vec2 corner00 = b;
        vec2 corner10 = b + vec2(m00, m10);
        vec2 corner01 = b + vec2(m01, m11);
        vec2 corner11 = b + vec2(m00 + m01, m10 + m11);
        vec2 atlasMin = min(min(corner00, corner10), min(corner01, corner11));
        vec2 atlasMax = max(max(corner00, corner10), max(corner01, corner11));
        vec2 regionSize = atlasMax - atlasMin;
        if (regionSize.x > 0.0001 && regionSize.y > 0.0001) {
            atlasUV = atlasMin + fract((atlasUV - atlasMin) / regionSize) * regionSize;
        }

        vec4 final_color = textureLod(Sampler0, atlasUV, 0.0) * vertexColor;
        fragColor = vec4(final_color.rgb * 6, 1.0);
        return;
    }
    if (isBlack ){
        fragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
