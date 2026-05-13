#version 330

#moj_import <minecraft:fog.glsl>


in float vertexDistance;
in vec4 vertexColor;

out vec4 fragColor;

bool roughly_equals(float a, float b) {
    return abs(a - b) < 0.000001;
}
void main() {
    vec4 color = vertexColor;
    if (roughly_equals(FogSkyEnd, 10.001)) {
        discard;
        return;
    }
    color.a *= 1.0f - linear_fog_value(vertexDistance, 0, FogCloudsEnd);
    fragColor = color;
}
