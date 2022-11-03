#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Instance.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 TEXCOORD1;
in vec4 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;

void main()
{
    int v2 = int(TEXCOORD1.z);
    vec3 v3 = normalize(((vec3(TEXCOORD1.xy, COLOR0.w) * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v4 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v5 = POSITION;
    v5.x = v4.x;
    vec4 v6 = v5;
    v6.y = v4.y;
    vec4 v7 = v6;
    v7.z = v4.z;
    float v8 = dot(CB1[gl_InstanceID * 7 + 0], v7);
    float v9 = dot(CB1[gl_InstanceID * 7 + 1], v7);
    float v10 = dot(CB1[gl_InstanceID * 7 + 2], v7);
    vec3 v11 = vec3(v8, v9, v10);
    vec3 v12 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v3), dot(CB1[gl_InstanceID * 7 + 1].xyz, v3), dot(CB1[gl_InstanceID * 7 + 2].xyz, v3));
    vec2 v13 = vec2(0.0);
    v13.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v14 = v13;
    v14.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v15 = (TEXCOORD0.xy * v14) + CB1[gl_InstanceID * 7 + 6].xy;
    vec4 v16 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    vec3 v17 = CB0[11].xyz - v11;
    vec3 v18 = normalize(v17);
    vec3 v19 = v12 * ((dot(v12, v18) > 0.0) ? 1.0 : (-1.0));
    vec2 v20 = vec2(v15.x * 4.0, v15.y);
    bvec2 v21 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v22 = vec2(v21.x ? vec2(0.0).x : v20.x, v21.y ? vec2(0.0).y : v20.y);
    vec3 v23 = vec3(0.0);
    v23.z = TEXCOORD2.w - 2.0;
    vec3 v24 = -CB0[16].xyz;
    float v25 = dot(v19, v24);
    vec4 v26 = vec4(v8, v9, v10, 1.0);
    vec4 v27 = v26 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v28 = v23;
    v28.x = v22.x;
    vec3 v29 = v28;
    v29.y = v22.y;
    vec3 v30 = ((v11 + (v19 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v31 = vec4(0.0);
    v31.x = v30.x;
    vec4 v32 = v31;
    v32.y = v30.y;
    vec4 v33 = v32;
    v33.z = v30.z;
    vec4 v34 = v33;
    v34.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v35 = vec4(v17, v27.w);
    float v36 = v16.w * 2.0;
    float v37 = clamp(v36 - 1.0, 0.0, 1.0);
    float v38 = (clamp(2.0 - (dot(v19, normalize(v35.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v36, 0.0, 1.0);
    vec4 v39 = v16;
    v39.w = mix(v37, 1.0, v38);
    vec4 v40 = vec4(dot(CB0[25], v26), dot(CB0[26], v26), dot(CB0[27], v26), 0.0);
    v40.w = mix(CB1[gl_InstanceID * 7 + 5].w * v37, 1.0, v38);
    float v41 = CB1[gl_InstanceID * 7 + 6].z * 0.50359570980072021484375;
    float v42 = clamp(v25, 0.0, 1.0);
    vec3 v43 = (CB0[15].xyz * v42) + (CB0[17].xyz * clamp(-v25, 0.0, 1.0));
    vec4 v44 = vec4(0.0);
    v44.x = v43.x;
    vec4 v45 = v44;
    v45.y = v43.y;
    vec4 v46 = v45;
    v46.z = v43.z;
    vec4 v47 = v46;
    v47.w = (v42 * CB0[28].w) * (CB1[gl_InstanceID * 7 + 6].z * exp2((v41 * dot(v19, normalize(v24 + v18))) - v41));
    gl_Position = v27;
    VARYING0 = v15;
    VARYING1 = v29;
    VARYING2 = v39;
    VARYING3 = v34;
    VARYING4 = v35;
    VARYING5 = vec4(v19, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v47;
    VARYING7 = v40;
}

