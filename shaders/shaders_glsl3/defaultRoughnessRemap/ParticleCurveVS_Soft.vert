#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[53];
in vec3 POSITION;
in vec2 TEXCOORD5;
in vec2 TEXCOORD1;
in vec2 TEXCOORD2;
in vec4 TEXCOORD3;
in vec2 TEXCOORD4;
in float TEXCOORD6;
out vec3 VARYING0;
out vec4 VARYING1;
out vec2 VARYING2;
out vec4 VARYING3;
out vec2 VARYING4;
out float VARYING5;

void main()
{
    vec2 v0 = (TEXCOORD2 * 2.0) - vec2(1.0);
    vec2 v1 = TEXCOORD1 * vec2(0.00019175345369148999452590942382812, 3.0518509447574615478515625e-05);
    float v2 = v1.x;
    float v3;
    float v4;
    if (TEXCOORD6 <= 0.0)
    {
        float v5 = 1.0 - TEXCOORD6;
        v4 = 1.0 / v5;
        v3 = v5;
    }
    else
    {
        float v6 = 1.0 + TEXCOORD6;
        v4 = v6;
        v3 = 1.0 / v6;
    }
    float v7 = cos(v2);
    float v8 = sin(v2);
    vec4 v9 = vec4(0.0);
    v9.x = (v7 * TEXCOORD5.x) * v3;
    vec4 v10 = v9;
    v10.y = ((-v8) * TEXCOORD5.x) * v4;
    vec4 v11 = v10;
    v11.z = (v8 * TEXCOORD5.y) * v3;
    vec4 v12 = v11;
    v12.w = (v7 * TEXCOORD5.y) * v4;
    vec4 v13 = (vec4(POSITION, 1.0) + (CB0[4] * dot(v0, v12.xy))) + (CB0[5] * dot(v0, v12.zw));
    vec4 v14 = v13 + (CB0[6] * CB1[1].x);
    mat4 v15 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v16 = v13 * v15;
    vec3 v17 = vec3(0.0);
    v17.x = TEXCOORD2.x;
    vec3 v18 = v17;
    v18.y = TEXCOORD2.y;
    vec3 v19 = v18;
    v19.y = 1.0 - TEXCOORD2.y;
    vec3 v20 = v19;
    v20.z = length(CB0[7].xyz - v14.xyz);
    vec4 v21 = v14 * v15;
    vec4 v22 = v16;
    v22.z = (v21.z * v16.w) / v21.w;
    float v23 = v16.w;
    vec2 v24 = v22.xy / vec2(v23);
    vec3 v25 = vec3(0.0);
    v25.x = v24.x;
    vec3 v26 = v25;
    v26.y = v24.y;
    vec2 v27 = (vec2(0.5) * v26.xy) + vec2(0.5);
    vec4 v28 = vec4(0.0);
    v28.x = v27.x;
    vec4 v29 = v28;
    v29.y = v27.y;
    vec4 v30 = v29;
    v30.z = min(v23 - CB1[1].x, 495.0);
    vec4 v31 = v30;
    v31.w = 1.0 / TEXCOORD5.x;
    vec2 v32 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v33 = v32;
    v33.y = 1.0 - v32.y;
    gl_Position = v22;
    VARYING0 = v20;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v33;
    VARYING3 = v31;
    VARYING4 = v20.xy;
    VARYING5 = 0.0;
}

