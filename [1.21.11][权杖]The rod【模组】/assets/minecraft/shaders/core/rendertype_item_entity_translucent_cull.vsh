#version 330

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;


out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord1;
out vec2 texCoord2;
out vec2 NormalizedUV;
out vec2 screenPos;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    screenPos = gl_Position.xy / gl_Position.w;

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
    texCoord1 = UV1;
    texCoord2 = UV2;
    if (gl_VertexID % 4 == 0) { // 通过顶点ID计算子图坐标，注意顺序
        NormalizedUV = vec2(0.0, 1.0);
    } else if (gl_VertexID % 4 == 1) {
        NormalizedUV = vec2(0.0, 0.0);
    } else if (gl_VertexID % 4 == 2) {
        NormalizedUV = vec2(1.0, 0.0);
    } else {
        NormalizedUV = vec2(1.0, 1.0);
    }
    
}
