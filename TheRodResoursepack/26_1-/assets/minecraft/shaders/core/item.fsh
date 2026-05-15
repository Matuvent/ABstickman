#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 NormalizedUV;

out vec4 fragColor;

bool roughly_equals(float a, float b) {
    return abs(a - b) < 0.000001;
}

void main() {
    vec4 color = texture(Sampler0, texCoord0);

    vec4 marker = texture(Sampler0, texCoord0, 0.0);
    bool isWhite = (marker.r > 0.9 && marker.g > 0.9 && marker.b > 0.9 && (roughly_equals(marker.a, 253.0 / 255.0)));
    bool isLight = (marker.r > 0.9 && marker.g > 0.9 && marker.b > 0.9 && (roughly_equals(marker.a, 127.0 / 255.0)));
    bool isBlack = (marker.r < 0.01 && marker.g < 0.01 && marker.b < 0.01);
    bool isEndPortal = (roughly_equals(marker.a, 254.0 / 255.0));

#ifdef ALPHA_CUTOUT
    if (color.a < ALPHA_CUTOUT) {
        discard;
    }
#endif

    if (color.a < 0.1) {
        discard;
    }
    if (isWhite) {
        fragColor = vec4(1.0, 1.0, 1.0, 1.0);
        return;
    }
    if (isLight) {
        fragColor = vec4(1.0, 1.0, 1.0, 0.5);
        return;
    }
    if (isEndPortal) {
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
    if (isBlack) {
        fragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    color *= vertexColor * ColorModulator;
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
