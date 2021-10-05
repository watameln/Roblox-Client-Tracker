#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f3 = VARYING0 * CB2[0].x;
    vec4 f4 = texture(DiffuseMapTexture, f3 * CB2[1].y);
    vec4 f5 = texture(DiffuseMapTexture, f3);
    vec4 f6 = mix(f4, f5, vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f7 = texture(NormalMapTexture, f3);
    vec2 f8 = f7.wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec4 f11 = texture(NormalDetailMapTexture, f3 * CB2[0].w);
    vec2 f12 = (vec3(f9, f10).xy + (vec3((f11.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f2;
    float f13 = f12.x;
    vec4 f14 = texture(SpecularMapTexture, f3);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f13) + (cross(f17, f16) * f12.y)) + (f17 * f10));
    vec3 f19 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f6.w + CB2[2].w, 0.0, 1.0))) * f6.xyz) * (1.0 + (f13 * CB2[0].z)), VARYING2.w).xyz;
    vec3 f20 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f21 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING3.yzx - (VARYING3.yzx * f21);
    vec4 f23 = texture(LightMapTexture, f22);
    vec4 f24 = texture(LightGridSkylightTexture, f22);
    vec4 f25 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f26 = mix(f23, vec4(0.0), f25);
    vec4 f27 = mix(f24, vec4(1.0), f25);
    float f28 = f27.x;
    vec4 f29 = texture(ShadowMapTexture, f20.xy);
    float f30 = f20.z;
    vec3 f31 = (f19 * f19).xyz;
    float f32 = CB0[26].w * f2;
    float f33 = max(f14.y, 0.04500000178813934326171875);
    vec3 f34 = reflect(-f1, f18);
    float f35 = f33 * 5.0;
    vec3 f36 = vec4(f34, f35).xyz;
    vec3 f37 = textureLod(PrefilteredEnvIndoorTexture, f36, f35).xyz;
    vec3 f38;
    if (CB0[27].w == 0.0)
    {
        f38 = f37;
    }
    else
    {
        f38 = mix(f37, textureLod(PrefilteredEnvBlendTargetTexture, f36, f35).xyz, vec3(CB0[27].w));
    }
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f33, max(9.9999997473787516355514526367188e-05, dot(f18, f1))));
    float f40 = f14.x * f32;
    vec3 f41 = mix(vec3(0.039999999105930328369140625), f31, vec3(f40));
    vec3 f42 = -CB0[11].xyz;
    float f43 = dot(f18, f42) * ((1.0 - ((step(f29.x, f30) * clamp(CB0[24].z + (CB0[24].w * abs(f30 - 0.5)), 0.0, 1.0)) * f29.y)) * f27.y);
    vec3 f44 = normalize(f42 + f1);
    float f45 = clamp(f43, 0.0, 1.0);
    float f46 = f33 * f33;
    float f47 = max(0.001000000047497451305389404296875, dot(f18, f44));
    float f48 = dot(f42, f44);
    float f49 = 1.0 - f48;
    float f50 = f49 * f49;
    float f51 = (f50 * f50) * f49;
    vec3 f52 = vec3(f51) + (f41 * (1.0 - f51));
    float f53 = f46 * f46;
    float f54 = (((f47 * f53) - f47) * f47) + 1.0;
    float f55 = 1.0 - f40;
    float f56 = f32 * f55;
    vec3 f57 = vec3(f55);
    float f58 = f39.x;
    float f59 = f39.y;
    vec3 f60 = ((f41 * f58) + vec3(f59)) / vec3(f58 + f59);
    vec3 f61 = f18 * f18;
    bvec3 f62 = lessThan(f18, vec3(0.0));
    vec3 f63 = vec3(f62.x ? f61.x : vec3(0.0).x, f62.y ? f61.y : vec3(0.0).y, f62.z ? f61.z : vec3(0.0).z);
    vec3 f64 = f61 - f63;
    float f65 = f64.x;
    float f66 = f64.y;
    float f67 = f64.z;
    float f68 = f63.x;
    float f69 = f63.y;
    float f70 = f63.z;
    vec3 f71 = (((((((((f57 - (f52 * f56)) * CB0[10].xyz) * f45) + (CB0[12].xyz * (f55 * clamp(-f43, 0.0, 1.0)))) + ((f26.xyz * (f26.w * 120.0)).xyz * 1.0)) + ((f57 - (f60 * f56)) * (((((((CB0[35].xyz * f65) + (CB0[37].xyz * f66)) + (CB0[39].xyz * f67)) + (CB0[36].xyz * f68)) + (CB0[38].xyz * f69)) + (CB0[40].xyz * f70)) + (((((((CB0[29].xyz * f65) + (CB0[31].xyz * f66)) + (CB0[33].xyz * f67)) + (CB0[30].xyz * f68)) + (CB0[32].xyz * f69)) + (CB0[34].xyz * f70)) * f28)))) + (CB0[27].xyz + (CB0[28].xyz * f28))) + vec3(((1.0 - f14.w) * 2.0) * f2)) * f31) + (((f52 * (((f53 + (f53 * f53)) / (((f54 * f54) * ((f48 * 3.0) + 0.5)) * ((f47 * 0.75) + 0.25))) * f45)) * CB0[10].xyz) + ((mix(f38, textureLod(PrefilteredEnvTexture, f36, f35).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f34.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f28)) * f60) * f32));
    vec4 f72 = vec4(f71.x, f71.y, f71.z, vec4(0.0).w);
    f72.w = VARYING2.w;
    float f73 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f74 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f73) * 5.0).xyz;
    bvec3 f75 = bvec3(!(CB0[13].w == 0.0));
    vec3 f76 = sqrt(clamp(mix(vec3(f75.x ? CB0[14].xyz.x : f74.x, f75.y ? CB0[14].xyz.y : f74.y, f75.z ? CB0[14].xyz.z : f74.z), f72.xyz, vec3(f73)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f77 = vec4(f76.x, f76.y, f76.z, f72.w);
    f77.w = VARYING2.w;
    _entryPointOutput = f77;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
