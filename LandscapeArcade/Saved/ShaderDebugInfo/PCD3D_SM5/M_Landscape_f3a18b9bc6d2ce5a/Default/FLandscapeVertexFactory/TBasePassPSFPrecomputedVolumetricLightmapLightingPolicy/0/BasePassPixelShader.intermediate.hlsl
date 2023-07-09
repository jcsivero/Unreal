#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _206 = 0.0f.xxxx;
static float _209 = 0.0f;
static float4 _210 = 0.0f.xxxx;

cbuffer View
{
    row_major float4x4 View_View_ViewToClip : packoffset(c32);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c48);
    float3 View_View_ViewTilePosition : packoffset(c64);
    float3 View_View_ViewForward : packoffset(c66);
    float3 View_View_RelativePreViewTranslation : packoffset(c76);
    float4 View_View_BufferSizeAndInvSize : packoffset(c132);
    float View_View_PreExposure : packoffset(c136.y);
    float4 View_View_DiffuseOverrideParameter : packoffset(c137);
    float4 View_View_SpecularOverrideParameter : packoffset(c138);
    float4 View_View_NormalOverrideParameter : packoffset(c139);
    float2 View_View_RoughnessOverrideParameter : packoffset(c140);
    float View_View_OutOfBoundsMask : packoffset(c141);
    float View_View_MaterialTextureMipBias : packoffset(c144);
    float View_View_UnlitViewmodeMask : packoffset(c146.y);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c159);
    float View_View_RenderingReflectionCaptureMask : packoffset(c183.w);
    float View_View_ShowDecalsMask : packoffset(c196.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c228.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c233);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c234);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c235);
    float View_View_VolumetricLightmapBrickSize : packoffset(c235.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c236);
};

ByteAddressBuffer View_PrimitiveSceneData;
cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[8] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_VolumetricLightmapBrickAmbientVector;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients0;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients1;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients2;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients3;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients4;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients5;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
SamplerState OpaqueBasePass_DBufferBTextureSampler;
SamplerState OpaqueBasePass_DBufferCTextureSampler;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
SamplerState Material_Texture2D_0Sampler;
Texture2D<float4> Material_Texture2D_1;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;
Texture2D<float4> Material_Texture2D_11;
SamplerState Material_Texture2D_11Sampler;
Texture2D<float4> Material_Texture2D_12;
SamplerState Material_Texture2D_12Sampler;

static float4 gl_FragCoord;
static float gl_FragDepth;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static uint in_var_PRIMITIVE_ID;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;
static float4 out_var_SV_Target3;
static float4 out_var_SV_Target5;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
    float4 out_var_SV_Target3 : SV_Target3;
    float4 out_var_SV_Target5 : SV_Target5;
    float gl_FragDepth : SV_DepthLessEqual;
};

void frag_main()
{
    float4 _253 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _257 = mad(float2(_253.zw), 2.0f.xx, (-1.0f).xx);
    float _259 = 1.0f - dot(_257, _257);
    float _261 = sqrt(isnan(0.0f) ? _259 : (isnan(_259) ? 0.0f : max(_259, 0.0f)));
    float _262 = _257.x;
    float3 _264 = float3(_262, _257.y, _261);
    float3 _267 = normalize(float3(_261, 0.0f, -_262));
    float4 _283 = float4(_209, _209, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _287 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _291 = _287.xyz / _287.w.xxx;
    float3 _301 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _301 = -View_View_ViewForward;
    }
    else
    {
        _301 = normalize(-_291);
    }
    float2 _302 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _306 = _302 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _312 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _306, View_View_MaterialTextureMipBias);
    float2 _316 = _302 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _318 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _316, View_View_MaterialTextureMipBias);
    float4 _325 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _330 = lerp(-1.0f, 1.0f, dot(_325, Material_Material_PreshaderBuffer[2])) + lerp(_312.z, _318.z, 0.5f);
    float _331 = isnan(9.9999997473787516355514526367188e-05f) ? _330 : (isnan(_330) ? 9.9999997473787516355514526367188e-05f : max(_330, 9.9999997473787516355514526367188e-05f));
    float _332 = isnan(1.0f) ? _331 : (isnan(_331) ? 1.0f : min(_331, 1.0f));
    float4 _336 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _306, View_View_MaterialTextureMipBias);
    float4 _338 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _316, View_View_MaterialTextureMipBias);
    float _346 = lerp(-1.0f, 1.0f, dot(_325, Material_Material_PreshaderBuffer[3])) + lerp(_336.z, _338.z, 0.5f);
    float _347 = isnan(9.9999997473787516355514526367188e-05f) ? _346 : (isnan(_346) ? 9.9999997473787516355514526367188e-05f : max(_346, 9.9999997473787516355514526367188e-05f));
    float _348 = isnan(1.0f) ? _347 : (isnan(_347) ? 1.0f : min(_347, 1.0f));
    float4 _353 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _306, View_View_MaterialTextureMipBias);
    float4 _355 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _316, View_View_MaterialTextureMipBias);
    float _363 = lerp(-1.0f, 1.0f, dot(_325, Material_Material_PreshaderBuffer[4])) + lerp(_353.z, _355.z, 0.5f);
    float _364 = isnan(9.9999997473787516355514526367188e-05f) ? _363 : (isnan(_363) ? 9.9999997473787516355514526367188e-05f : max(_363, 9.9999997473787516355514526367188e-05f));
    float _365 = isnan(1.0f) ? _364 : (isnan(_364) ? 1.0f : min(_364, 1.0f));
    float _367 = 1.0f / ((_332 + _348) + _365);
    float2 _373 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _384 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _395 = _367 * _332;
    float3 _396 = _395.xxx;
    float2 _402 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _413 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _424 = _367 * _348;
    float3 _425 = _424.xxx;
    float2 _433 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _444 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _455 = _367 * _365;
    float3 _456 = _455.xxx;
    float _460 = dot(_325, Material_Material_PreshaderBuffer[5]);
    float2 _466 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _477 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _488 = _460.xxx;
    float3 _492 = lerp(mad(lerp(float4(_433, sqrt(clamp(1.0f - dot(_433, _433), 0.0f, 1.0f)), 1.0f).xyz, float4(_444, sqrt(clamp(1.0f - dot(_444, _444), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _456, mad(lerp(float4(_373, sqrt(clamp(1.0f - dot(_373, _373), 0.0f, 1.0f)), 1.0f).xyz, float4(_384, sqrt(clamp(1.0f - dot(_384, _384), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _396, lerp(float4(_402, sqrt(clamp(1.0f - dot(_402, _402), 0.0f, 1.0f)), 1.0f).xyz, float4(_413, sqrt(clamp(1.0f - dot(_413, _413), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _425)), lerp(float4(_466, sqrt(clamp(1.0f - dot(_466, _466), 0.0f, 1.0f)), 1.0f).xyz, float4(_477, sqrt(clamp(1.0f - dot(_477, _477), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _488) * View_View_NormalOverrideParameter.w;
    float3 _497 = normalize(mul(normalize(_492 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_267, cross(_264, _267), _264), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _505 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _488), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _539 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _316, View_View_MaterialTextureMipBias);
    float4 _541 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _306, View_View_MaterialTextureMipBias);
    float _546 = lerp(0.0f, 0.0f, _460);
    float4 _568 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _316, View_View_MaterialTextureMipBias);
    float4 _570 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _306, View_View_MaterialTextureMipBias);
    float _591 = _283.z;
    float _592 = _283.w;
    float _594 = _591 / (_592 + _546);
    float _595 = isnan(gl_FragCoord.z) ? _594 : (isnan(_594) ? gl_FragCoord.z : min(_594, gl_FragCoord.z));
    float3 _601 = (_291 - View_View_RelativePreViewTranslation) + ((-_301) * (mad(-_595, _592, _591) / _595));
    float3 _602 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _316, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _306, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _456, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _316, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _306, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _396, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _316, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _306, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _425)), lerp(_539.xyz, _541.xyz, 0.5f.xxx), _488), 0.0f.xxx, 1.0f.xxx);
    float _603 = clamp(_546, 0.0f, 1.0f);
    float _604 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _455, mad(Material_Material_PreshaderBuffer[7].x, _395, Material_Material_PreshaderBuffer[7].x * _424)), Material_Material_PreshaderBuffer[7].x, _460), 0.0f, 1.0f);
    float _608 = mad(clamp(lerp(mad(lerp(_355.y, _353.y, 0.5f), _455, mad(lerp(_318.y, _312.y, 0.5f), _395, lerp(_338.y, _336.y, 0.5f) * _424)), lerp(_568.y, _570.y, 0.5f), _460), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _609 = clamp(lerp(mad(lerp(_355.x, _353.x, 0.5f), _455, mad(lerp(_318.x, _312.x, 0.5f), _395, lerp(_338.x, _336.x, 0.5f) * _424)), lerp(_568.x, _570.x, 0.5f), _460), 0.0f, 1.0f);
    uint _610 = in_var_PRIMITIVE_ID * 41u;
    float _657 = 0.0f;
    float _658 = 0.0f;
    float _659 = 0.0f;
    float3 _660 = 0.0f.xxx;
    float3 _661 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_610 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _626 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _630 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _626, 0.0f);
        float4 _634 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _626, 0.0f);
        float4 _638 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _626, 0.0f);
        float _648 = _638.w;
        _657 = mad(_608, _648, _638.z);
        _658 = mad(_604, _648, _638.y);
        _659 = mad(_603, _648, _638.x);
        _660 = (_602 * _630.w) + _630.xyz;
        _661 = normalize((_497 * _634.w) + ((_634.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _657 = _608;
        _658 = _604;
        _659 = _603;
        _660 = _602;
        _661 = _497;
    }
    float3 _672 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _601, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _683 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_672.x), int(_672.y), int(_672.z), 0).xyz, 0)));
    float3 _698 = (((_683.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_672 / _683.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    uint _701 = asuint(asfloat(View_PrimitiveSceneData.Load4(_610 * 16 + 0)).x);
    float _722 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_610 * 16 + 0)).x) & 4u) != 0u)
    {
        _722 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f).x;
    }
    else
    {
        _722 = 1.0f;
    }
    float3 _735 = ((_660 - (_660 * _659)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _742 = (lerp((0.07999999821186065673828125f * _658).xxx, _660, _659.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _745 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _750 = 0.0f.xxx;
    if (_745)
    {
        _750 = _735 + (_742 * 0.449999988079071044921875f);
    }
    else
    {
        _750 = _735;
    }
    bool3 _751 = _745.xxx;
    float3 _752 = float3(_751.x ? 0.0f.xxx.x : _742.x, _751.y ? 0.0f.xxx.y : _742.y, _751.z ? 0.0f.xxx.z : _742.z);
    float3 _754 = dot(_752, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _761 = _609.xxx;
    float3 _766 = ((((((_754 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _609) + ((_754 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _609) + ((_754 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _609;
    bool3 _1109 = isnan(_761);
    bool3 _1110 = isnan(_766);
    float3 _1111 = max(_761, _766);
    float3 _1112 = float3(_1109.x ? _766.x : _1111.x, _1109.y ? _766.y : _1111.y, _1109.z ? _766.z : _1111.z);
    float4 _772 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f);
    float _788 = _772.x;
    float4 _790 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f) * 2.0f) - 1.0f.xxxx) * _788) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _791 = _772.y;
    float4 _793 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f) * 2.0f) - 1.0f.xxxx) * _791) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _794 = _772.z;
    float4 _796 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f) * 2.0f) - 1.0f.xxxx) * _794) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float4 _813 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f) * 2.0f) - 1.0f.xxxx) * _788) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _815 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f) * 2.0f) - 1.0f.xxxx) * _791) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _817 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _698, 0.0f) * 2.0f) - 1.0f.xxxx) * _794) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _850 = 0.0f.xxxx;
    _850.y = (-0.48860299587249755859375f) * _661.y;
    _850.z = 0.48860299587249755859375f * _661.z;
    _850.w = (-0.48860299587249755859375f) * _661.x;
    float3 _857 = _661 * _661;
    float4 _860 = 0.0f.xxxx;
    _860.x = (1.09254801273345947265625f * _661.x) * _661.y;
    _860.y = ((-1.09254801273345947265625f) * _661.y) * _661.z;
    _860.z = 0.3153919875621795654296875f * mad(3.0f, _857.z, -1.0f);
    _860.w = ((-1.09254801273345947265625f) * _661.x) * _661.z;
    _850.x = 0.886227548122406005859375f;
    float3 _876 = _850.yzw * 2.094395160675048828125f;
    float4 _877 = float4(_850.x, _876.x, _876.y, _876.z);
    float4 _878 = _860 * 0.785398185253143310546875f;
    float _879 = (_857.x - _857.y) * 0.4290426075458526611328125f;
    float3 _884 = 0.0f.xxx;
    _884.x = mad(_813.w, _879, dot(float4(_788, _790.xyz), _877) + dot(float4(_790.w, _813.xyz), _878));
    _884.y = mad(_815.w, _879, dot(float4(_791, _793.xyz), _877) + dot(float4(_793.w, _815.xyz), _878));
    _884.z = mad(_817.w, _879, dot(float4(_794, _796.xyz), _877) + dot(float4(_796.w, _817.xyz), _878));
    bool3 _1116 = isnan(0.0f.xxx);
    bool3 _1117 = isnan(_884);
    float3 _1118 = max(0.0f.xxx, _884);
    float3 _1119 = float3(_1116.x ? _884.x : _1118.x, _1116.y ? _884.y : _1118.y, _1116.z ? _884.z : _1118.z);
    float3 _899 = (float3(_1117.x ? 0.0f.xxx.x : _1119.x, _1117.y ? 0.0f.xxx.y : _1119.y, _1117.z ? 0.0f.xxx.z : _1119.z) * 0.3183098733425140380859375f.xxx) * View_View_PrecomputedIndirectLightingColorScale;
    float3 _912 = ((((((_660 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _609) + ((_660 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _609) + ((_660 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _609;
    bool3 _1121 = isnan(_761);
    bool3 _1122 = isnan(_912);
    float3 _1123 = max(_761, _912);
    float3 _1124 = float3(_1121.x ? _912.x : _1123.x, _1121.y ? _912.y : _1123.y, _1121.z ? _912.z : _1123.z);
    bool3 _1126 = isnan(_505);
    bool3 _1127 = isnan(0.0f.xxx);
    float3 _1128 = max(_505, 0.0f.xxx);
    float3 _1129 = float3(_1126.x ? 0.0f.xxx.x : _1128.x, _1126.y ? 0.0f.xxx.y : _1128.y, _1126.z ? 0.0f.xxx.z : _1128.z);
    float3 _920 = float3(_1127.x ? _505.x : _1129.x, _1127.y ? _505.y : _1129.y, _1127.z ? _505.z : _1129.z);
    float3 _1000 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _946 = _610 + 31u;
        float3 _955 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_610 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_601 - asfloat(View_PrimitiveSceneData.Load4((_610 + 18u) * 16 + 0)).xyz));
        float3 _956 = float3(asfloat(View_PrimitiveSceneData.Load4((_610 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_610 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_610 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _999 = 0.0f.xxx;
        if (any(bool3(_955.x > _956.x, _955.y > _956.y, _955.z > _956.z)))
        {
            float3 _979 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _980 = _601 * 0.57700002193450927734375f.xxx;
            float3 _995 = frac(mad((_980.x + _980.y) + _980.z, 0.00200000009499490261077880859375f, frac(((_979.x + _979.y) + _979.z) * 4194.30419921875f))).xxx;
            _999 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_995.x > 0.5f.xxx.x, _995.y > 0.5f.xxx.y, _995.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _978 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_946 * 16 + 0)).x > 0.0f)
            {
                float3 _966 = abs(_291 - in_var_TEXCOORD9);
                float _967 = _966.x;
                float _968 = _966.y;
                float _969 = _966.z;
                float _970 = isnan(_969) ? _968 : (isnan(_968) ? _969 : max(_968, _969));
                _978 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_970) ? _967 : (isnan(_967) ? _970 : max(_967, _970))) - asfloat(View_PrimitiveSceneData.Load4(_946 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _978 = _920;
            }
            _999 = _978;
        }
        _1000 = _999;
    }
    else
    {
        _1000 = _920;
    }
    float4 _1007 = float4((mad(_899 * _750, float3(_1122.x ? _761.x : _1124.x, _1122.y ? _761.y : _1124.y, _1122.z ? _761.z : _1124.z), lerp(0.0f.xxx, _750 + (_752 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _1000) * 1.0f, 0.0f);
    float4 _1014 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1013 = _1007;
        _1013.w = 0.0f;
        _1014 = _1013;
    }
    else
    {
        _1014 = _1007;
    }
    float2 _1018 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1033 = (_661 * 0.5f) + 0.5f.xxx;
    float4 _1035 = 0.0f.xxxx;
    _1035.x = _1033.x;
    _1035.y = _1033.y;
    _1035.z = _1033.z;
    _1035.w = mad(2.0f, float((_701 & 256u) != 0u), float((_701 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1042 = 0.0f.xxxx;
    _1042.x = _660.x;
    _1042.y = _660.y;
    _1042.z = _660.z;
    _1042.w = mad(frac(dot(_1018.xyx * _1018.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_899, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1110.x ? _761.x : _1112.x, _1110.y ? _761.y : _1112.y, _1110.z ? _761.z : _1112.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1048 = 0.0f.xxxx;
    _1048.x = _722;
    _1048.y = 1.0f;
    _1048.z = 1.0f;
    _1048.w = 1.0f;
    float4 _1053 = _1014 * View_View_PreExposure;
    float3 _1054 = _1053.xyz;
    bool3 _1145 = isnan(_1054);
    bool3 _1146 = isnan(32256.0f.xxx);
    float3 _1147 = min(_1054, 32256.0f.xxx);
    float3 _1148 = float3(_1145.x ? 32256.0f.xxx.x : _1147.x, _1145.y ? 32256.0f.xxx.y : _1147.y, _1145.z ? 32256.0f.xxx.z : _1147.z);
    float3 _1055 = float3(_1146.x ? _1054.x : _1148.x, _1146.y ? _1054.y : _1148.y, _1146.z ? _1054.z : _1148.z);
    out_var_SV_Target0 = float4(_1055.x, _1055.y, _1055.z, _1053.w);
    out_var_SV_Target1 = _1035;
    out_var_SV_Target2 = float4(_659, _658, _657, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1042;
    out_var_SV_Target5 = _1048;
    gl_FragDepth = _595;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_FragDepth = gl_FragDepth;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target5 = out_var_SV_Target5;
    return stage_output;
}
