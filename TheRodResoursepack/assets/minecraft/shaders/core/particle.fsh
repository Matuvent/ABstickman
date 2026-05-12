#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec2 texCoord0;
in vec4 vertexColor;

out vec4 fragColor;
bool roughly_equals(float a, float b) { // 由于浮点数精度问题，不适合直接使用等号判断
    return abs(a - b) < 0.000001;
}
void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    vec4 marker = texture(Sampler0, texCoord0, 0.0); 
    if (color.a < 0.1) {
        discard;
    }
    if (marker.r > 0.9 && marker.g > 0.9 && marker.b > 0.9 && (roughly_equals(marker.a, 253.0 / 255.0))) {
        fragColor = vec4(1.0, 1.0, 1.0, 1.0);
        return;
    }
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
