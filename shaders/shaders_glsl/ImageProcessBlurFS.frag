#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 f2 = mix((f0 * f0) * 4.0, (f1 * f1) * 4.0, vec3(CB1[4].x));
    vec3 f3 = f2 * CB1[5].x;
    vec3 f4 = ((f2 * (f3 + vec3(CB1[5].y))) / ((f2 * (f3 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    gl_FragData[0] = vec4(dot(f4, CB1[1].xyz) + CB1[1].w, dot(f4, CB1[2].xyz) + CB1[2].w, dot(f4, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
