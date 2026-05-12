#version 330

#moj_import <minecraft:dynamictransforms.glsl>

#moj_import <minecraft:fog.glsl>
uniform sampler2D Sampler0;

in vec2 texCoord0;

out vec4 fragColor;
bool roughly_equals(float a, float b) { // 由于浮点数精度问题，不适合直接使用等号判断
    return abs(a - b) < 0.000001;
}
void main() {
    vec4 color = texture(Sampler0, texCoord0);
    if (color.a == 0.0) {
        discard;
    }
    if (roughly_equals(FogSkyEnd, 10.001)){
        discard;
    }
    fragColor = color * ColorModulator;
}
