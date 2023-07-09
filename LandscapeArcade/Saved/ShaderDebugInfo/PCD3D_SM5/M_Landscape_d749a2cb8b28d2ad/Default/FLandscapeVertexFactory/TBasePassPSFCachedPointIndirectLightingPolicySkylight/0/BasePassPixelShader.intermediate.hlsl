#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _202 = 0.0f.xxxx;
static float3 _203 = 0.0f.xxx;
static float _206 = 0.0f;
static float4 _207 = 0.0f.xxxx;

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
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[3] : packoffset(c6);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[3] : packoffset(c9);
    float4 IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2 : packoffset(c12);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[7] : packoffset(c0);
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
    float4 _250 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _254 = mad(float2(_250.zw), 2.0f.xx, (-1.0f).xx);
    float _256 = 1.0f - dot(_254, _254);
    float _258 = sqrt(isnan(0.0f) ? _256 : (isnan(_256) ? 0.0f : max(_256, 0.0f)));
    float _259 = _254.x;
    float3 _261 = float3(_259, _254.y, _258);
    float3 _264 = normalize(float3(_258, 0.0f, -_259));
    float4 _280 = float4(_206, _206, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _284 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _288 = _284.xyz / _284.w.xxx;
    float3 _298 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _298 = -View_View_ViewForward;
    }
    else
    {
        _298 = normalize(-_288);
    }
    float2 _299 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _303 = _299 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _309 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _303, View_View_MaterialTextureMipBias);
    float2 _313 = _299 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _315 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _313, View_View_MaterialTextureMipBias);
    float4 _322 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _327 = lerp(-1.0f, 1.0f, dot(_322, Material_Material_PreshaderBuffer[2])) + lerp(_309.z, _315.z, 0.5f);
    float _328 = isnan(9.9999997473787516355514526367188e-05f) ? _327 : (isnan(_327) ? 9.9999997473787516355514526367188e-05f : max(_327, 9.9999997473787516355514526367188e-05f));
    float _329 = isnan(1.0f) ? _328 : (isnan(_328) ? 1.0f : min(_328, 1.0f));
    float4 _333 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _303, View_View_MaterialTextureMipBias);
    float4 _335 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _313, View_View_MaterialTextureMipBias);
    float _343 = lerp(-1.0f, 1.0f, dot(_322, Material_Material_PreshaderBuffer[3])) + lerp(_333.z, _335.z, 0.5f);
    float _344 = isnan(9.9999997473787516355514526367188e-05f) ? _343 : (isnan(_343) ? 9.9999997473787516355514526367188e-05f : max(_343, 9.9999997473787516355514526367188e-05f));
    float _345 = isnan(1.0f) ? _344 : (isnan(_344) ? 1.0f : min(_344, 1.0f));
    float4 _350 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _303, View_View_MaterialTextureMipBias);
    float4 _352 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _313, View_View_MaterialTextureMipBias);
    float _360 = lerp(-1.0f, 1.0f, dot(_322, Material_Material_PreshaderBuffer[4])) + lerp(_350.z, _352.z, 0.5f);
    float _361 = isnan(9.9999997473787516355514526367188e-05f) ? _360 : (isnan(_360) ? 9.9999997473787516355514526367188e-05f : max(_360, 9.9999997473787516355514526367188e-05f));
    float _362 = isnan(1.0f) ? _361 : (isnan(_361) ? 1.0f : min(_361, 1.0f));
    float _364 = 1.0f / ((_329 + _345) + _362);
    float2 _370 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _313, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _381 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _392 = _364 * _329;
    float3 _393 = _392.xxx;
    float2 _399 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _313, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _410 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _421 = _364 * _345;
    float3 _422 = _421.xxx;
    float2 _430 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _313, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _441 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _452 = _364 * _362;
    float3 _453 = _452.xxx;
    float _457 = dot(_322, Material_Material_PreshaderBuffer[5]);
    float2 _463 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _313, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _474 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _485 = _457.xxx;
    float3 _489 = lerp(mad(lerp(float4(_430, sqrt(clamp(1.0f - dot(_430, _430), 0.0f, 1.0f)), 1.0f).xyz, float4(_441, sqrt(clamp(1.0f - dot(_441, _441), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _453, mad(lerp(float4(_370, sqrt(clamp(1.0f - dot(_370, _370), 0.0f, 1.0f)), 1.0f).xyz, float4(_381, sqrt(clamp(1.0f - dot(_381, _381), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _393, lerp(float4(_399, sqrt(clamp(1.0f - dot(_399, _399), 0.0f, 1.0f)), 1.0f).xyz, float4(_410, sqrt(clamp(1.0f - dot(_410, _410), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _422)), lerp(float4(_463, sqrt(clamp(1.0f - dot(_463, _463), 0.0f, 1.0f)), 1.0f).xyz, float4(_474, sqrt(clamp(1.0f - dot(_474, _474), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _485) * View_View_NormalOverrideParameter.w;
    float3 _494 = normalize(mul(normalize(_489 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_264, cross(_261, _264), _261), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _502 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _485), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _536 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _313, View_View_MaterialTextureMipBias);
    float4 _538 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _303, View_View_MaterialTextureMipBias);
    float _543 = lerp(0.0f, 0.0f, _457);
    float4 _562 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _313, View_View_MaterialTextureMipBias);
    float4 _564 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _303, View_View_MaterialTextureMipBias);
    float _585 = _280.z;
    float _586 = _280.w;
    float _588 = _585 / (_586 + _543);
    float _589 = isnan(gl_FragCoord.z) ? _588 : (isnan(_588) ? gl_FragCoord.z : min(_588, gl_FragCoord.z));
    float3 _595 = (_288 - View_View_RelativePreViewTranslation) + ((-_298) * (mad(-_589, _586, _585) / _589));
    float3 _596 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _313, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _303, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _453, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _313, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _303, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _393, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _313, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _303, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _422)), lerp(_536.xyz, _538.xyz, 0.5f.xxx), _485), 0.0f.xxx, 1.0f.xxx);
    float _597 = clamp(_543, 0.0f, 1.0f);
    float _598 = clamp(lerp(mad(0.5f, _421, 0.5f * _452), 0.5f, _457), 0.0f, 1.0f);
    float _602 = mad(clamp(lerp(mad(lerp(_352.y, _350.y, 0.5f), _452, mad(lerp(_315.y, _309.y, 0.5f), _392, lerp(_335.y, _333.y, 0.5f) * _421)), lerp(_562.y, _564.y, 0.5f), _457), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _603 = clamp(lerp(mad(lerp(_352.x, _350.x, 0.5f), _452, mad(lerp(_315.x, _309.x, 0.5f), _392, lerp(_335.x, _333.x, 0.5f) * _421)), lerp(_562.x, _564.x, 0.5f), _457), 0.0f, 1.0f);
    uint _604 = in_var_PRIMITIVE_ID * 41u;
    float _651 = 0.0f;
    float _652 = 0.0f;
    float _653 = 0.0f;
    float3 _654 = 0.0f.xxx;
    float3 _655 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_604 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _620 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _624 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _620, 0.0f);
        float4 _628 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _620, 0.0f);
        float4 _632 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _620, 0.0f);
        float _642 = _632.w;
        _651 = mad(_602, _642, _632.z);
        _652 = mad(_598, _642, _632.y);
        _653 = mad(_597, _642, _632.x);
        _654 = (_596 * _624.w) + _624.xyz;
        _655 = normalize((_494 * _628.w) + ((_628.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _651 = _602;
        _652 = _598;
        _653 = _597;
        _654 = _596;
        _655 = _494;
    }
    uint _658 = asuint(asfloat(View_PrimitiveSceneData.Load4(_604 * 16 + 0)).x);
    bool _674 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _680 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_604 * 16 + 0)).x) & 2u) != 0u) && _674)
    {
        _680 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _680 = 1.0f;
    }
    float _730 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_604 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _698 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _595, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _709 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_698.x), int(_698.y), int(_698.z), 0).xyz, 0)));
        _730 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_709.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_698 / _709.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _730 = _680;
    }
    float3 _743 = ((_654 - (_654 * _653)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _750 = (lerp((0.07999999821186065673828125f * _652).xxx, _654, _653.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _753 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _758 = 0.0f.xxx;
    if (_753)
    {
        _758 = _743 + (_750 * 0.449999988079071044921875f);
    }
    else
    {
        _758 = _743;
    }
    bool3 _759 = _753.xxx;
    float3 _760 = float3(_759.x ? 0.0f.xxx.x : _750.x, _759.y ? 0.0f.xxx.y : _750.y, _759.z ? 0.0f.xxx.z : _750.z);
    float3 _762 = dot(_760, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _769 = _603.xxx;
    float3 _774 = ((((((_762 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _603) + ((_762 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _603) + ((_762 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _603;
    bool3 _1136 = isnan(_769);
    bool3 _1137 = isnan(_774);
    float3 _1138 = max(_769, _774);
    float3 _1139 = float3(_1136.x ? _774.x : _1138.x, _1136.y ? _774.y : _1138.y, _1136.z ? _774.z : _1138.z);
    float3 _845 = 0.0f.xxx;
    if (_674)
    {
        float4 _799 = 0.0f.xxxx;
        _799.y = (-0.48860299587249755859375f) * _655.y;
        _799.z = 0.48860299587249755859375f * _655.z;
        _799.w = (-0.48860299587249755859375f) * _655.x;
        float3 _806 = _655 * _655;
        float4 _809 = 0.0f.xxxx;
        _809.x = (1.09254801273345947265625f * _655.x) * _655.y;
        _809.y = ((-1.09254801273345947265625f) * _655.y) * _655.z;
        _809.z = 0.3153919875621795654296875f * mad(3.0f, _806.z, -1.0f);
        _809.w = ((-1.09254801273345947265625f) * _655.x) * _655.z;
        _799.x = 0.886227548122406005859375f;
        float3 _825 = _799.yzw * 2.094395160675048828125f;
        float4 _826 = float4(_799.x, _825.x, _825.y, _825.z);
        float4 _827 = _809 * 0.785398185253143310546875f;
        float _828 = (_806.x - _806.y) * 0.4290426075458526611328125f;
        float3 _833 = 0.0f.xxx;
        _833.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _828, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _826) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _827));
        _833.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _828, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _826) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _827));
        _833.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _828, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _826) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _827));
        bool3 _1144 = isnan(0.0f.xxx);
        bool3 _1145 = isnan(_833);
        float3 _1146 = max(0.0f.xxx, _833);
        float3 _1147 = float3(_1144.x ? _833.x : _1146.x, _1144.y ? _833.y : _1146.y, _1144.z ? _833.z : _1146.z);
        _845 = float3(_1145.x ? 0.0f.xxx.x : _1147.x, _1145.y ? 0.0f.xxx.y : _1147.y, _1145.z ? 0.0f.xxx.z : _1147.z);
    }
    else
    {
        _845 = 0.0f.xxx;
    }
    float3 _923 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _875 = 0.0f;
        float _876 = 0.0f;
        float3 _877 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _865 = 0.0f.xxx;
            float _866 = 0.0f;
            if (_674)
            {
                _865 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _866 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _865 = _655;
                _866 = 1.0f;
            }
            float _869 = mad(_866 - 1.0f, 1.0f - _866, 1.0f);
            _875 = lerp(clamp(dot(_865, _655), 0.0f, 1.0f), 1.0f, _869);
            _876 = _866;
            _877 = lerp(_865, _655, _869.xxx);
        }
        else
        {
            _875 = 1.0f;
            _876 = 1.0f;
            _877 = _655;
        }
        float4 _881 = float4(_877, 1.0f);
        float3 _885 = 0.0f.xxx;
        _885.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _881);
        _885.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _881);
        _885.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _881);
        float4 _896 = _881.xyzz * _881.yzzx;
        float3 _900 = 0.0f.xxx;
        _900.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _896);
        _900.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _896);
        _900.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _896);
        float3 _917 = (_885 + _900) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_877.x, _877.x, -(_877.y * _877.y)));
        bool3 _1157 = isnan(0.0f.xxx);
        bool3 _1158 = isnan(_917);
        float3 _1159 = max(0.0f.xxx, _917);
        float3 _1160 = float3(_1157.x ? _917.x : _1159.x, _1157.y ? _917.y : _1159.y, _1157.z ? _917.z : _1159.z);
        _923 = (float3(_1158.x ? 0.0f.xxx.x : _1160.x, _1158.y ? 0.0f.xxx.y : _1160.y, _1158.z ? 0.0f.xxx.z : _1160.z) * View_View_SkyLightColor.xyz) * (_876 * _875);
    }
    else
    {
        _923 = 0.0f.xxx;
    }
    float3 _924 = mad(_845, View_View_PrecomputedIndirectLightingColorScale, _923);
    float3 _937 = ((((((_654 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _603) + ((_654 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _603) + ((_654 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _603;
    bool3 _1162 = isnan(_769);
    bool3 _1163 = isnan(_937);
    float3 _1164 = max(_769, _937);
    float3 _1165 = float3(_1162.x ? _937.x : _1164.x, _1162.y ? _937.y : _1164.y, _1162.z ? _937.z : _1164.z);
    bool3 _1167 = isnan(_502);
    bool3 _1168 = isnan(0.0f.xxx);
    float3 _1169 = max(_502, 0.0f.xxx);
    float3 _1170 = float3(_1167.x ? 0.0f.xxx.x : _1169.x, _1167.y ? 0.0f.xxx.y : _1169.y, _1167.z ? 0.0f.xxx.z : _1169.z);
    float3 _945 = float3(_1168.x ? _502.x : _1170.x, _1168.y ? _502.y : _1170.y, _1168.z ? _502.z : _1170.z);
    float3 _1025 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _971 = _604 + 31u;
        float3 _980 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_604 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_595 - asfloat(View_PrimitiveSceneData.Load4((_604 + 18u) * 16 + 0)).xyz));
        float3 _981 = float3(asfloat(View_PrimitiveSceneData.Load4((_604 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_604 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_604 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1024 = 0.0f.xxx;
        if (any(bool3(_980.x > _981.x, _980.y > _981.y, _980.z > _981.z)))
        {
            float3 _1004 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _1005 = _595 * 0.57700002193450927734375f.xxx;
            float3 _1020 = frac(mad((_1005.x + _1005.y) + _1005.z, 0.00200000009499490261077880859375f, frac(((_1004.x + _1004.y) + _1004.z) * 4194.30419921875f))).xxx;
            _1024 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1020.x > 0.5f.xxx.x, _1020.y > 0.5f.xxx.y, _1020.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _1003 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_971 * 16 + 0)).x > 0.0f)
            {
                float3 _991 = abs(_288 - in_var_TEXCOORD9);
                float _992 = _991.x;
                float _993 = _991.y;
                float _994 = _991.z;
                float _995 = isnan(_994) ? _993 : (isnan(_993) ? _994 : max(_993, _994));
                _1003 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_995) ? _992 : (isnan(_992) ? _995 : max(_992, _995))) - asfloat(View_PrimitiveSceneData.Load4(_971 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _1003 = _945;
            }
            _1024 = _1003;
        }
        _1025 = _1024;
    }
    else
    {
        _1025 = _945;
    }
    float4 _1032 = float4((mad(_924 * _758, float3(_1163.x ? _769.x : _1165.x, _1163.y ? _769.y : _1165.y, _1163.z ? _769.z : _1165.z), lerp(0.0f.xxx, _758 + (_760 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _1025) * 1.0f, 0.0f);
    float4 _1039 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1038 = _1032;
        _1038.w = 0.0f;
        _1039 = _1038;
    }
    else
    {
        _1039 = _1032;
    }
    float2 _1043 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1058 = (_655 * 0.5f) + 0.5f.xxx;
    float4 _1060 = 0.0f.xxxx;
    _1060.x = _1058.x;
    _1060.y = _1058.y;
    _1060.z = _1058.z;
    _1060.w = mad(2.0f, float((_658 & 256u) != 0u), float((_658 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1067 = 0.0f.xxxx;
    _1067.x = _654.x;
    _1067.y = _654.y;
    _1067.z = _654.z;
    _1067.w = mad(frac(dot(_1043.xyx * _1043.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_924, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1137.x ? _769.x : _1139.x, _1137.y ? _769.y : _1139.y, _1137.z ? _769.z : _1139.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1073 = 0.0f.xxxx;
    _1073.x = _730;
    _1073.y = 1.0f;
    _1073.z = 1.0f;
    _1073.w = 1.0f;
    float4 _1078 = _1039 * View_View_PreExposure;
    float3 _1079 = _1078.xyz;
    bool3 _1186 = isnan(_1079);
    bool3 _1187 = isnan(32256.0f.xxx);
    float3 _1188 = min(_1079, 32256.0f.xxx);
    float3 _1189 = float3(_1186.x ? 32256.0f.xxx.x : _1188.x, _1186.y ? 32256.0f.xxx.y : _1188.y, _1186.z ? 32256.0f.xxx.z : _1188.z);
    float3 _1080 = float3(_1187.x ? _1079.x : _1189.x, _1187.y ? _1079.y : _1189.y, _1187.z ? _1079.z : _1189.z);
    out_var_SV_Target0 = float4(_1080.x, _1080.y, _1080.z, _1078.w);
    out_var_SV_Target1 = _1060;
    out_var_SV_Target2 = float4(_653, _652, _651, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1067;
    out_var_SV_Target5 = _1073;
    gl_FragDepth = _589;
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
