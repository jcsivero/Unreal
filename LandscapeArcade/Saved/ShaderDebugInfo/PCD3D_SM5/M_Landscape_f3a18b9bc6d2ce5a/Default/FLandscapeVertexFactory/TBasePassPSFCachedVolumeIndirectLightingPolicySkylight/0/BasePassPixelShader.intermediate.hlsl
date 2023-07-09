#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _201 = 0.0f.xxx;
static float _204 = 0.0f;
static float4 _205 = 0.0f.xxxx;

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
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c186.y);
    float4 View_View_SkyLightColor : packoffset(c187);
    float View_View_ShowDecalsMask : packoffset(c196.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c228.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c233);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c234);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c235);
    float View_View_VolumetricLightmapBrickSize : packoffset(c235.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c236);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c236.w);
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_SkyIrradianceEnvironmentMap;
cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c140);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[8] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
SamplerState OpaqueBasePass_DBufferBTextureSampler;
SamplerState OpaqueBasePass_DBufferCTextureSampler;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
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
    float4 _249 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _253 = mad(float2(_249.zw), 2.0f.xx, (-1.0f).xx);
    float _255 = 1.0f - dot(_253, _253);
    float _257 = sqrt(isnan(0.0f) ? _255 : (isnan(_255) ? 0.0f : max(_255, 0.0f)));
    float _258 = _253.x;
    float3 _260 = float3(_258, _253.y, _257);
    float3 _263 = normalize(float3(_257, 0.0f, -_258));
    float4 _279 = float4(_204, _204, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _283 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _287 = _283.xyz / _283.w.xxx;
    float3 _297 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _297 = -View_View_ViewForward;
    }
    else
    {
        _297 = normalize(-_287);
    }
    float2 _298 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _302 = _298 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _308 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _302, View_View_MaterialTextureMipBias);
    float2 _312 = _298 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _314 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _321 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _326 = lerp(-1.0f, 1.0f, dot(_321, Material_Material_PreshaderBuffer[2])) + lerp(_308.z, _314.z, 0.5f);
    float _327 = isnan(9.9999997473787516355514526367188e-05f) ? _326 : (isnan(_326) ? 9.9999997473787516355514526367188e-05f : max(_326, 9.9999997473787516355514526367188e-05f));
    float _328 = isnan(1.0f) ? _327 : (isnan(_327) ? 1.0f : min(_327, 1.0f));
    float4 _332 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _302, View_View_MaterialTextureMipBias);
    float4 _334 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _312, View_View_MaterialTextureMipBias);
    float _342 = lerp(-1.0f, 1.0f, dot(_321, Material_Material_PreshaderBuffer[3])) + lerp(_332.z, _334.z, 0.5f);
    float _343 = isnan(9.9999997473787516355514526367188e-05f) ? _342 : (isnan(_342) ? 9.9999997473787516355514526367188e-05f : max(_342, 9.9999997473787516355514526367188e-05f));
    float _344 = isnan(1.0f) ? _343 : (isnan(_343) ? 1.0f : min(_343, 1.0f));
    float4 _349 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _302, View_View_MaterialTextureMipBias);
    float4 _351 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _312, View_View_MaterialTextureMipBias);
    float _359 = lerp(-1.0f, 1.0f, dot(_321, Material_Material_PreshaderBuffer[4])) + lerp(_349.z, _351.z, 0.5f);
    float _360 = isnan(9.9999997473787516355514526367188e-05f) ? _359 : (isnan(_359) ? 9.9999997473787516355514526367188e-05f : max(_359, 9.9999997473787516355514526367188e-05f));
    float _361 = isnan(1.0f) ? _360 : (isnan(_360) ? 1.0f : min(_360, 1.0f));
    float _363 = 1.0f / ((_328 + _344) + _361);
    float2 _369 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _380 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _302, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _391 = _363 * _328;
    float3 _392 = _391.xxx;
    float2 _398 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _409 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _302, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _420 = _363 * _344;
    float3 _421 = _420.xxx;
    float2 _429 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _440 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _302, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _451 = _363 * _361;
    float3 _452 = _451.xxx;
    float _456 = dot(_321, Material_Material_PreshaderBuffer[5]);
    float2 _462 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _473 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _302, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _484 = _456.xxx;
    float3 _488 = lerp(mad(lerp(float4(_429, sqrt(clamp(1.0f - dot(_429, _429), 0.0f, 1.0f)), 1.0f).xyz, float4(_440, sqrt(clamp(1.0f - dot(_440, _440), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _452, mad(lerp(float4(_369, sqrt(clamp(1.0f - dot(_369, _369), 0.0f, 1.0f)), 1.0f).xyz, float4(_380, sqrt(clamp(1.0f - dot(_380, _380), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _392, lerp(float4(_398, sqrt(clamp(1.0f - dot(_398, _398), 0.0f, 1.0f)), 1.0f).xyz, float4(_409, sqrt(clamp(1.0f - dot(_409, _409), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _421)), lerp(float4(_462, sqrt(clamp(1.0f - dot(_462, _462), 0.0f, 1.0f)), 1.0f).xyz, float4(_473, sqrt(clamp(1.0f - dot(_473, _473), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _484) * View_View_NormalOverrideParameter.w;
    float3 _493 = normalize(mul(normalize(_488 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_263, cross(_260, _263), _260), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _501 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _484), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _535 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _537 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _302, View_View_MaterialTextureMipBias);
    float _542 = lerp(0.0f, 0.0f, _456);
    float4 _564 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _566 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _302, View_View_MaterialTextureMipBias);
    float _587 = _279.z;
    float _588 = _279.w;
    float _590 = _587 / (_588 + _542);
    float _591 = isnan(gl_FragCoord.z) ? _590 : (isnan(_590) ? gl_FragCoord.z : min(_590, gl_FragCoord.z));
    float3 _597 = (_287 - View_View_RelativePreViewTranslation) + ((-_297) * (mad(-_591, _588, _587) / _591));
    float3 _598 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _312, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _302, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _452, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _312, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _302, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _392, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _312, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _302, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _421)), lerp(_535.xyz, _537.xyz, 0.5f.xxx), _484), 0.0f.xxx, 1.0f.xxx);
    float _599 = clamp(_542, 0.0f, 1.0f);
    float _600 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _451, mad(Material_Material_PreshaderBuffer[7].x, _391, Material_Material_PreshaderBuffer[7].x * _420)), Material_Material_PreshaderBuffer[7].x, _456), 0.0f, 1.0f);
    float _604 = mad(clamp(lerp(mad(lerp(_351.y, _349.y, 0.5f), _451, mad(lerp(_314.y, _308.y, 0.5f), _391, lerp(_334.y, _332.y, 0.5f) * _420)), lerp(_564.y, _566.y, 0.5f), _456), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _605 = clamp(lerp(mad(lerp(_351.x, _349.x, 0.5f), _451, mad(lerp(_314.x, _308.x, 0.5f), _391, lerp(_334.x, _332.x, 0.5f) * _420)), lerp(_564.x, _566.x, 0.5f), _456), 0.0f, 1.0f);
    uint _606 = in_var_PRIMITIVE_ID * 41u;
    float _653 = 0.0f;
    float _654 = 0.0f;
    float _655 = 0.0f;
    float3 _656 = 0.0f.xxx;
    float3 _657 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_606 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _622 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _626 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _622, 0.0f);
        float4 _630 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _622, 0.0f);
        float4 _634 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _622, 0.0f);
        float _644 = _634.w;
        _653 = mad(_604, _644, _634.z);
        _654 = mad(_600, _644, _634.y);
        _655 = mad(_599, _644, _634.x);
        _656 = (_598 * _626.w) + _626.xyz;
        _657 = normalize((_493 * _630.w) + ((_630.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _653 = _604;
        _654 = _600;
        _655 = _599;
        _656 = _598;
        _657 = _493;
    }
    uint _660 = asuint(asfloat(View_PrimitiveSceneData.Load4(_606 * 16 + 0)).x);
    bool _676 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _682 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_606 * 16 + 0)).x) & 2u) != 0u) && _676)
    {
        _682 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _682 = 1.0f;
    }
    float _732 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_606 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _700 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _597, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _711 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_700.x), int(_700.y), int(_700.z), 0).xyz, 0)));
        _732 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_711.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_700 / _711.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _732 = _682;
    }
    float3 _745 = ((_656 - (_656 * _655)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _752 = (lerp((0.07999999821186065673828125f * _654).xxx, _656, _655.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _755 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _760 = 0.0f.xxx;
    if (_755)
    {
        _760 = _745 + (_752 * 0.449999988079071044921875f);
    }
    else
    {
        _760 = _745;
    }
    bool3 _761 = _755.xxx;
    float3 _762 = float3(_761.x ? 0.0f.xxx.x : _752.x, _761.y ? 0.0f.xxx.y : _752.y, _761.z ? 0.0f.xxx.z : _752.z);
    float3 _764 = dot(_762, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _771 = _605.xxx;
    float3 _776 = ((((((_764 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _605) + ((_764 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _605) + ((_764 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _605;
    bool3 _1130 = isnan(_771);
    bool3 _1131 = isnan(_776);
    float3 _1132 = max(_771, _776);
    float3 _1133 = float3(_1130.x ? _776.x : _1132.x, _1130.y ? _776.y : _1132.y, _1130.z ? _776.z : _1132.z);
    float3 _840 = 0.0f.xxx;
    if (_676)
    {
        float3 _792 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _597, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _796 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _792);
        float4 _800 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _792);
        float4 _803 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _792);
        float4 _821 = 0.0f.xxxx;
        _821.y = (-0.48860299587249755859375f) * _657.y;
        _821.z = 0.48860299587249755859375f * _657.z;
        _821.w = (-0.48860299587249755859375f) * _657.x;
        _821.x = 0.886227548122406005859375f;
        float3 _830 = _821.yzw * 2.094395160675048828125f;
        float4 _831 = float4(_821.x, _830.x, _830.y, _830.z);
        float3 _833 = 0.0f.xxx;
        _833.x = dot(float4(_796.x, _800.x, _803.x, _796.w), _831);
        _833.y = dot(float4(_796.y, _800.y, _803.y, _800.w), _831);
        _833.z = dot(float4(_796.z, _800.z, _803.zw), _831);
        bool3 _1137 = isnan(0.0f.xxx);
        bool3 _1138 = isnan(_833);
        float3 _1139 = max(0.0f.xxx, _833);
        float3 _1140 = float3(_1137.x ? _833.x : _1139.x, _1137.y ? _833.y : _1139.y, _1137.z ? _833.z : _1139.z);
        _840 = float3(_1138.x ? 0.0f.xxx.x : _1140.x, _1138.y ? 0.0f.xxx.y : _1140.y, _1138.z ? 0.0f.xxx.z : _1140.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _840 = 0.0f.xxx;
    }
    float3 _918 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _870 = 0.0f;
        float _871 = 0.0f;
        float3 _872 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _860 = 0.0f.xxx;
            float _861 = 0.0f;
            if (_676)
            {
                _860 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _861 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _860 = _657;
                _861 = 1.0f;
            }
            float _864 = mad(_861 - 1.0f, 1.0f - _861, 1.0f);
            _870 = lerp(clamp(dot(_860, _657), 0.0f, 1.0f), 1.0f, _864);
            _871 = _861;
            _872 = lerp(_860, _657, _864.xxx);
        }
        else
        {
            _870 = 1.0f;
            _871 = 1.0f;
            _872 = _657;
        }
        float4 _876 = float4(_872, 1.0f);
        float3 _880 = 0.0f.xxx;
        _880.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _876);
        _880.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _876);
        _880.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _876);
        float4 _891 = _876.xyzz * _876.yzzx;
        float3 _895 = 0.0f.xxx;
        _895.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _891);
        _895.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _891);
        _895.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _891);
        float3 _912 = (_880 + _895) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_872.x, _872.x, -(_872.y * _872.y)));
        bool3 _1150 = isnan(0.0f.xxx);
        bool3 _1151 = isnan(_912);
        float3 _1152 = max(0.0f.xxx, _912);
        float3 _1153 = float3(_1150.x ? _912.x : _1152.x, _1150.y ? _912.y : _1152.y, _1150.z ? _912.z : _1152.z);
        _918 = (float3(_1151.x ? 0.0f.xxx.x : _1153.x, _1151.y ? 0.0f.xxx.y : _1153.y, _1151.z ? 0.0f.xxx.z : _1153.z) * View_View_SkyLightColor.xyz) * (_871 * _870);
    }
    else
    {
        _918 = 0.0f.xxx;
    }
    float3 _919 = mad(_840, View_View_PrecomputedIndirectLightingColorScale, _918);
    float3 _932 = ((((((_656 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _605) + ((_656 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _605) + ((_656 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _605;
    bool3 _1155 = isnan(_771);
    bool3 _1156 = isnan(_932);
    float3 _1157 = max(_771, _932);
    float3 _1158 = float3(_1155.x ? _932.x : _1157.x, _1155.y ? _932.y : _1157.y, _1155.z ? _932.z : _1157.z);
    bool3 _1160 = isnan(_501);
    bool3 _1161 = isnan(0.0f.xxx);
    float3 _1162 = max(_501, 0.0f.xxx);
    float3 _1163 = float3(_1160.x ? 0.0f.xxx.x : _1162.x, _1160.y ? 0.0f.xxx.y : _1162.y, _1160.z ? 0.0f.xxx.z : _1162.z);
    float3 _940 = float3(_1161.x ? _501.x : _1163.x, _1161.y ? _501.y : _1163.y, _1161.z ? _501.z : _1163.z);
    float3 _1020 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _966 = _606 + 31u;
        float3 _975 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_606 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_597 - asfloat(View_PrimitiveSceneData.Load4((_606 + 18u) * 16 + 0)).xyz));
        float3 _976 = float3(asfloat(View_PrimitiveSceneData.Load4((_606 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_606 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_606 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1019 = 0.0f.xxx;
        if (any(bool3(_975.x > _976.x, _975.y > _976.y, _975.z > _976.z)))
        {
            float3 _999 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _1000 = _597 * 0.57700002193450927734375f.xxx;
            float3 _1015 = frac(mad((_1000.x + _1000.y) + _1000.z, 0.00200000009499490261077880859375f, frac(((_999.x + _999.y) + _999.z) * 4194.30419921875f))).xxx;
            _1019 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1015.x > 0.5f.xxx.x, _1015.y > 0.5f.xxx.y, _1015.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _998 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_966 * 16 + 0)).x > 0.0f)
            {
                float3 _986 = abs(_287 - in_var_TEXCOORD9);
                float _987 = _986.x;
                float _988 = _986.y;
                float _989 = _986.z;
                float _990 = isnan(_989) ? _988 : (isnan(_988) ? _989 : max(_988, _989));
                _998 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_990) ? _987 : (isnan(_987) ? _990 : max(_987, _990))) - asfloat(View_PrimitiveSceneData.Load4(_966 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _998 = _940;
            }
            _1019 = _998;
        }
        _1020 = _1019;
    }
    else
    {
        _1020 = _940;
    }
    float4 _1027 = float4((mad(_919 * _760, float3(_1156.x ? _771.x : _1158.x, _1156.y ? _771.y : _1158.y, _1156.z ? _771.z : _1158.z), lerp(0.0f.xxx, _760 + (_762 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _1020) * 1.0f, 0.0f);
    float4 _1034 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1033 = _1027;
        _1033.w = 0.0f;
        _1034 = _1033;
    }
    else
    {
        _1034 = _1027;
    }
    float2 _1038 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1053 = (_657 * 0.5f) + 0.5f.xxx;
    float4 _1055 = 0.0f.xxxx;
    _1055.x = _1053.x;
    _1055.y = _1053.y;
    _1055.z = _1053.z;
    _1055.w = mad(2.0f, float((_660 & 256u) != 0u), float((_660 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1062 = 0.0f.xxxx;
    _1062.x = _656.x;
    _1062.y = _656.y;
    _1062.z = _656.z;
    _1062.w = mad(frac(dot(_1038.xyx * _1038.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_919, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1131.x ? _771.x : _1133.x, _1131.y ? _771.y : _1133.y, _1131.z ? _771.z : _1133.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1068 = 0.0f.xxxx;
    _1068.x = _732;
    _1068.y = 1.0f;
    _1068.z = 1.0f;
    _1068.w = 1.0f;
    float4 _1073 = _1034 * View_View_PreExposure;
    float3 _1074 = _1073.xyz;
    bool3 _1179 = isnan(_1074);
    bool3 _1180 = isnan(32256.0f.xxx);
    float3 _1181 = min(_1074, 32256.0f.xxx);
    float3 _1182 = float3(_1179.x ? 32256.0f.xxx.x : _1181.x, _1179.y ? 32256.0f.xxx.y : _1181.y, _1179.z ? 32256.0f.xxx.z : _1181.z);
    float3 _1075 = float3(_1180.x ? _1074.x : _1182.x, _1180.y ? _1074.y : _1182.y, _1180.z ? _1074.z : _1182.z);
    out_var_SV_Target0 = float4(_1075.x, _1075.y, _1075.z, _1073.w);
    out_var_SV_Target1 = _1055;
    out_var_SV_Target2 = float4(_655, _654, _653, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1062;
    out_var_SV_Target5 = _1068;
    gl_FragDepth = _591;
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
