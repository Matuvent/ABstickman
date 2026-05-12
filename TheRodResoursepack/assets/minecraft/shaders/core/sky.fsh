#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:globals.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec3 skyPosition;

out vec4 fragColor;

bool roughly_equals(float a, float b) {
    return abs(a - b) < 0.000001;
}

void main() {
    if (roughly_equals(FogSkyEnd, 10.001)) {
        vec3 skyDir = normalize(skyPosition);
        float theta = atan(skyDir.z, skyDir.x);

        // === Water ripple waves at the horizon ===
        float w1 = sin(theta * 7.0 + GameTime * 1500.0);
        w1 = sign(w1) * pow(abs(w1), 0.25);
        float w2 = sin(theta * 14.0 - GameTime * 1800.0 + 1.8);
        w2 = sign(w2) * pow(abs(w2), 0.25);
        float w3 = sin(theta * 22.0 + GameTime * 2100.0 + 3.5);
        w3 = sign(w3) * pow(abs(w3), 0.3);
        float w4 = sin(theta * 30.0 - GameTime * 2500.0 + 5.2);
        w4 = sign(w4) * pow(abs(w4), 0.35);
        float waterLevel = 0.08 + w1 * 0.035 + w2 * 0.018 + w3 * 0.01 + w4 * 0.006;

        // === White pool surface: white at water level, fades to black going up ===
        float distAboveWater = skyDir.y - waterLevel;
        float horizonFactor = clamp(1.0 - distAboveWater, 0.0, 1.0);
        float brightness = pow(horizonFactor, 5.0);

        // Thin bright edge line at the water surface
        float edgeGlow = exp(-abs(distAboveWater) * 60.0) * 0.5;

        // === Water splashes flying above ripple peaks ===
        float splashes = 0.0;
        if (distAboveWater > 0.0 && distAboveWater < 0.07 && waterLevel > 0.012) {
            float splashStrength = smoothstep(0.012, 0.04, waterLevel);
            vec2 sCoord = vec2(theta * 35.0, distAboveWater * 90.0);
            vec2 sGrid = floor(sCoord);
            vec2 sSub = sCoord - sGrid;
            float sHash = fract(sin(dot(sGrid, vec2(317.581, 183.472))) * 43758.5453);
            if (sHash > 0.88) {
                vec2 sCenter = vec2(
                    fract(sin(dot(sGrid, vec2(71.234, 59.821))) * 43758.5453),
                    fract(sin(dot(sGrid, vec2(143.672, 91.438))) * 43758.5453)
                );
                sCenter.x = fract(sCenter.x + GameTime * 0.06);
                sCenter.y = fract(sCenter.y + GameTime * 0.12);
                float sDist = length(sSub - sCenter);
                if (sDist < 0.06) {
                    splashes = (1.0 - sDist / 0.06) * 0.7 * splashStrength;
                }
            }
        }

        // === Star field in dark upper sky ===
        float star = 0.0;
        if (brightness < 0.15 && skyDir.y > 0.03) {
            float cosPhi = skyDir.y;
            vec2 starCoord = vec2(theta * 100.0, cosPhi * 100.0);
            vec2 gridPos = floor(starCoord);
            vec2 subCell = starCoord - gridPos;
            float hash = fract(sin(dot(gridPos, vec2(127.1, 311.7))) * 43758.5453);
            if (hash > 0.96) {
                vec2 starCenter = vec2(
                    fract(sin(dot(gridPos, vec2(12.9898, 78.233))) * 43758.5453),
                    fract(sin(dot(gridPos, vec2(39.346, 21.791))) * 43758.5453)
                );
                float distToStar = length(subCell - starCenter);
                if (distToStar < 0.1) {
                    float starBright = 1.0 - distToStar / 0.18;
                    float twinkle = fract(sin(dot(gridPos, vec2(93.721, 45.832)) + GameTime * 500.0) * 23421.631);
                    star = starBright * (0.6 + 0.4 * twinkle);
                }
            }
        }

        float finalBrightness = brightness + edgeGlow + splashes + star;
        vec3 color = vec3(clamp(finalBrightness, 0.0, 1.0));
        fragColor = vec4(color, 1.0);
        return;
    }

    fragColor = apply_fog(ColorModulator, sphericalVertexDistance, cylindricalVertexDistance, 0.0, FogSkyEnd, FogSkyEnd, FogSkyEnd, FogColor);
}
