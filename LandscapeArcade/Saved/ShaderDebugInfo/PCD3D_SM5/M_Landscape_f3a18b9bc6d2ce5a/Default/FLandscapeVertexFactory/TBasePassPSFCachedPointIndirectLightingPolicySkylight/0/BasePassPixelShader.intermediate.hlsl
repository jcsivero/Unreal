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
    float4 _251 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _255 = mad(float2(_251.zw), 2.0f.xx, (-1.0f).xx);
    float _257 = 1.0f - dot(_255, _255);
    float _259 = sqrt(isnan(0.0f) ? _257 : (isnan(_257) ? 0.0f : max(_257, 0.0f)));
    float _260 = _255.x;
    float3 _262 = float3(_260, _255.y, _259);
    float3 _265 = normalize(float3(_259, 0.0f, -_260));
    float4 _281 = float4(_206, _206, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _285 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _289 = _285.xyz / _285.w.xxx;
    float3 _299 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _299 = -View_View_ViewForward;
    }
    else
    {
        _299 = normalize(-_289);
    }
    float2 _300 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _304 = _300 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _310 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _304, View_View_MaterialTextureMipBias);
    float2 _314 = _300 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _316 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _314, View_View_MaterialTextureMipBias);
    float4 _323 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _328 = lerp(-1.0f, 1.0f, dot(_323, Material_Material_PreshaderBuffer[2])) + lerp(_310.z, _316.z, 0.5f);
    float _329 = isnan(9.9999997473787516355514526367188e-05f) ? _328 : (isnan(_328) ? 9.9999997473787516355514526367188e-05f : max(_328, 9.9999997473787516355514526367188e-05f));
    float _330 = isnan(1.0f) ? _329 : (isnan(_329) ? 1.0f : min(_329, 1.0f));
    float4 _334 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _304, View_View_MaterialTextureMipBias);
    float4 _336 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _314, View_View_MaterialTextureMipBias);
    float _344 = lerp(-1.0f, 1.0f, dot(_323, Material_Material_PreshaderBuffer[3])) + lerp(_334.z, _336.z, 0.5f);
    float _345 = isnan(9.9999997473787516355514526367188e-05f) ? _344 : (isnan(_344) ? 9.9999997473787516355514526367188e-05f : max(_344, 9.9999997473787516355514526367188e-05f));
    float _346 = isnan(1.0f) ? _345 : (isnan(_345) ? 1.0f : min(_345, 1.0f));
    float4 _351 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _304, View_View_MaterialTextureMipBias);
    float4 _353 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _314, View_View_MaterialTextureMipBias);
    float _361 = lerp(-1.0f, 1.0f, dot(_323, Material_Material_PreshaderBuffer[4])) + lerp(_351.z, _353.z, 0.5f);
    float _362 = isnan(9.9999997473787516355514526367188e-05f) ? _361 : (isnan(_361) ? 9.9999997473787516355514526367188e-05f : max(_361, 9.9999997473787516355514526367188e-05f));
    float _363 = isnan(1.0f) ? _362 : (isnan(_362) ? 1.0f : min(_362, 1.0f));
    float _365 = 1.0f / ((_330 + _346) + _363);
    float2 _371 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _314, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _382 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _393 = _365 * _330;
    float3 _394 = _393.xxx;
    float2 _400 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _314, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _411 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _422 = _365 * _346;
    float3 _423 = _422.xxx;
    float2 _431 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _314, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _442 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _453 = _365 * _363;
    float3 _454 = _453.xxx;
    float _458 = dot(_323, Material_Material_PreshaderBuffer[5]);
    float2 _464 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _314, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _475 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _486 = _458.xxx;
    float3 _490 = lerp(mad(lerp(float4(_431, sqrt(clamp(1.0f - dot(_431, _431), 0.0f, 1.0f)), 1.0f).xyz, float4(_442, sqrt(clamp(1.0f - dot(_442, _442), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _454, mad(lerp(float4(_371, sqrt(clamp(1.0f - dot(_371, _371), 0.0f, 1.0f)), 1.0f).xyz, float4(_382, sqrt(clamp(1.0f - dot(_382, _382), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _394, lerp(float4(_400, sqrt(clamp(1.0f - dot(_400, _400), 0.0f, 1.0f)), 1.0f).xyz, float4(_411, sqrt(clamp(1.0f - dot(_411, _411), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _423)), lerp(float4(_464, sqrt(clamp(1.0f - dot(_464, _464), 0.0f, 1.0f)), 1.0f).xyz, float4(_475, sqrt(clamp(1.0f - dot(_475, _475), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _486) * View_View_NormalOverrideParameter.w;
    float3 _495 = normalize(mul(normalize(_490 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_265, cross(_262, _265), _262), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _503 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _486), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _537 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _314, View_View_MaterialTextureMipBias);
    float4 _539 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _304, View_View_MaterialTextureMipBias);
    float _544 = lerp(0.0f, 0.0f, _458);
    float4 _566 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _314, View_View_MaterialTextureMipBias);
    float4 _568 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _304, View_View_MaterialTextureMipBias);
    float _589 = _281.z;
    float _590 = _281.w;
    float _592 = _589 / (_590 + _544);
    float _593 = isnan(gl_FragCoord.z) ? _592 : (isnan(_592) ? gl_FragCoord.z : min(_592, gl_FragCoord.z));
    float3 _599 = (_289 - View_View_RelativePreViewTranslation) + ((-_299) * (mad(-_593, _590, _589) / _593));
    float3 _600 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _314, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _304, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _454, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _314, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _304, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _394, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _314, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _304, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _423)), lerp(_537.xyz, _539.xyz, 0.5f.xxx), _486), 0.0f.xxx, 1.0f.xxx);
    float _601 = clamp(_544, 0.0f, 1.0f);
    float _602 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _453, mad(Material_Material_PreshaderBuffer[7].x, _393, Material_Material_PreshaderBuffer[7].x * _422)), Material_Material_PreshaderBuffer[7].x, _458), 0.0f, 1.0f);
    float _606 = mad(clamp(lerp(mad(lerp(_353.y, _351.y, 0.5f), _453, mad(lerp(_316.y, _310.y, 0.5f), _393, lerp(_336.y, _334.y, 0.5f) * _422)), lerp(_566.y, _568.y, 0.5f), _458), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _607 = clamp(lerp(mad(lerp(_353.x, _351.x, 0.5f), _453, mad(lerp(_316.x, _310.x, 0.5f), _393, lerp(_336.x, _334.x, 0.5f) * _422)), lerp(_566.x, _568.x, 0.5f), _458), 0.0f, 1.0f);
    uint _608 = in_var_PRIMITIVE_ID * 41u;
    float _655 = 0.0f;
    float _656 = 0.0f;
    float _657 = 0.0f;
    float3 _658 = 0.0f.xxx;
    float3 _659 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_608 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _624 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _628 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _624, 0.0f);
        float4 _632 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _624, 0.0f);
        float4 _636 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _624, 0.0f);
        float _646 = _636.w;
        _655 = mad(_606, _646, _636.z);
        _656 = mad(_602, _646, _636.y);
        _657 = mad(_601, _646, _636.x);
        _658 = (_600 * _628.w) + _628.xyz;
        _659 = normalize((_495 * _632.w) + ((_632.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _655 = _606;
        _656 = _602;
        _657 = _601;
        _658 = _600;
        _659 = _495;
    }
    uint _662 = asuint(asfloat(View_PrimitiveSceneData.Load4(_608 * 16 + 0)).x);
    bool _678 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _684 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_608 * 16 + 0)).x) & 2u) != 0u) && _678)
    {
        _684 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _684 = 1.0f;
    }
    float _734 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_608 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _702 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _599, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _713 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_702.x), int(_702.y), int(_702.z), 0).xyz, 0)));
        _734 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_713.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_702 / _713.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _734 = _684;
    }
    float3 _747 = ((_658 - (_658 * _657)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _754 = (lerp((0.07999999821186065673828125f * _656).xxx, _658, _657.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _757 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _762 = 0.0f.xxx;
    if (_757)
    {
        _762 = _747 + (_754 * 0.449999988079071044921875f);
    }
    else
    {
        _762 = _747;
    }
    bool3 _763 = _757.xxx;
    float3 _764 = float3(_763.x ? 0.0f.xxx.x : _754.x, _763.y ? 0.0f.xxx.y : _754.y, _763.z ? 0.0f.xxx.z : _754.z);
    float3 _766 = dot(_764, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _773 = _607.xxx;
    float3 _778 = ((((((_766 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _607) + ((_766 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _607) + ((_766 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _607;
    bool3 _1140 = isnan(_773);
    bool3 _1141 = isnan(_778);
    float3 _1142 = max(_773, _778);
    float3 _1143 = float3(_1140.x ? _778.x : _1142.x, _1140.y ? _778.y : _1142.y, _1140.z ? _778.z : _1142.z);
    float3 _849 = 0.0f.xxx;
    if (_678)
    {
        float4 _803 = 0.0f.xxxx;
        _803.y = (-0.48860299587249755859375f) * _659.y;
        _803.z = 0.48860299587249755859375f * _659.z;
        _803.w = (-0.48860299587249755859375f) * _659.x;
        float3 _810 = _659 * _659;
        float4 _813 = 0.0f.xxxx;
        _813.x = (1.09254801273345947265625f * _659.x) * _659.y;
        _813.y = ((-1.09254801273345947265625f) * _659.y) * _659.z;
        _813.z = 0.3153919875621795654296875f * mad(3.0f, _810.z, -1.0f);
        _813.w = ((-1.09254801273345947265625f) * _659.x) * _659.z;
        _803.x = 0.886227548122406005859375f;
        float3 _829 = _803.yzw * 2.094395160675048828125f;
        float4 _830 = float4(_803.x, _829.x, _829.y, _829.z);
        float4 _831 = _813 * 0.785398185253143310546875f;
        float _832 = (_810.x - _810.y) * 0.4290426075458526611328125f;
        float3 _837 = 0.0f.xxx;
        _837.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _832, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _830) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _831));
        _837.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _832, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _830) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _831));
        _837.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _832, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _830) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _831));
        bool3 _1148 = isnan(0.0f.xxx);
        bool3 _1149 = isnan(_837);
        float3 _1150 = max(0.0f.xxx, _837);
        float3 _1151 = float3(_1148.x ? _837.x : _1150.x, _1148.y ? _837.y : _1150.y, _1148.z ? _837.z : _1150.z);
        _849 = float3(_1149.x ? 0.0f.xxx.x : _1151.x, _1149.y ? 0.0f.xxx.y : _1151.y, _1149.z ? 0.0f.xxx.z : _1151.z);
    }
    else
    {
        _849 = 0.0f.xxx;
    }
    float3 _927 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _879 = 0.0f;
        float _880 = 0.0f;
        float3 _881 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _869 = 0.0f.xxx;
            float _870 = 0.0f;
            if (_678)
            {
                _869 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _870 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _869 = _659;
                _870 = 1.0f;
            }
            float _873 = mad(_870 - 1.0f, 1.0f - _870, 1.0f);
            _879 = lerp(clamp(dot(_869, _659), 0.0f, 1.0f), 1.0f, _873);
            _880 = _870;
            _881 = lerp(_869, _659, _873.xxx);
        }
        else
        {
            _879 = 1.0f;
            _880 = 1.0f;
            _881 = _659;
        }
        float4 _885 = float4(_881, 1.0f);
        float3 _889 = 0.0f.xxx;
        _889.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _885);
        _889.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _885);
        _889.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _885);
        float4 _900 = _885.xyzz * _885.yzzx;
        float3 _904 = 0.0f.xxx;
        _904.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _900);
        _904.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _900);
        _904.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _900);
        float3 _921 = (_889 + _904) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_881.x, _881.x, -(_881.y * _881.y)));
        bool3 _1161 = isnan(0.0f.xxx);
        bool3 _1162 = isnan(_921);
        float3 _1163 = max(0.0f.xxx, _921);
        float3 _1164 = float3(_1161.x ? _921.x : _1163.x, _1161.y ? _921.y : _1163.y, _1161.z ? _921.z : _1163.z);
        _927 = (float3(_1162.x ? 0.0f.xxx.x : _1164.x, _1162.y ? 0.0f.xxx.y : _1164.y, _1162.z ? 0.0f.xxx.z : _1164.z) * View_View_SkyLightColor.xyz) * (_880 * _879);
    }
    else
    {
        _927 = 0.0f.xxx;
    }
    float3 _928 = mad(_849, View_View_PrecomputedIndirectLightingColorScale, _927);
    float3 _941 = ((((((_658 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _607) + ((_658 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _607) + ((_658 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _607;
    bool3 _1166 = isnan(_773);
    bool3 _1167 = isnan(_941);
    float3 _1168 = max(_773, _941);
    float3 _1169 = float3(_1166.x ? _941.x : _1168.x, _1166.y ? _941.y : _1168.y, _1166.z ? _941.z : _1168.z);
    bool3 _1171 = isnan(_503);
    bool3 _1172 = isnan(0.0f.xxx);
    float3 _1173 = max(_503, 0.0f.xxx);
    float3 _1174 = float3(_1171.x ? 0.0f.xxx.x : _1173.x, _1171.y ? 0.0f.xxx.y : _1173.y, _1171.z ? 0.0f.xxx.z : _1173.z);
    float3 _949 = float3(_1172.x ? _503.x : _1174.x, _1172.y ? _503.y : _1174.y, _1172.z ? _503.z : _1174.z);
    float3 _1029 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _975 = _608 + 31u;
        float3 _984 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_608 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_599 - asfloat(View_PrimitiveSceneData.Load4((_608 + 18u) * 16 + 0)).xyz));
        float3 _985 = float3(asfloat(View_PrimitiveSceneData.Load4((_608 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_608 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_608 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1028 = 0.0f.xxx;
        if (any(bool3(_984.x > _985.x, _984.y > _985.y, _984.z > _985.z)))
        {
            float3 _1008 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _1009 = _599 * 0.57700002193450927734375f.xxx;
            float3 _1024 = frac(mad((_1009.x + _1009.y) + _1009.z, 0.00200000009499490261077880859375f, frac(((_1008.x + _1008.y) + _1008.z) * 4194.30419921875f))).xxx;
            _1028 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1024.x > 0.5f.xxx.x, _1024.y > 0.5f.xxx.y, _1024.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _1007 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_975 * 16 + 0)).x > 0.0f)
            {
                float3 _995 = abs(_289 - in_var_TEXCOORD9);
                float _996 = _995.x;
                float _997 = _995.y;
                float _998 = _995.z;
                float _999 = isnan(_998) ? _997 : (isnan(_997) ? _998 : max(_997, _998));
                _1007 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_999) ? _996 : (isnan(_996) ? _999 : max(_996, _999))) - asfloat(View_PrimitiveSceneData.Load4(_975 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _1007 = _949;
            }
            _1028 = _1007;
        }
        _1029 = _1028;
    }
    else
    {
        _1029 = _949;
    }
    float4 _1036 = float4((mad(_928 * _762, float3(_1167.x ? _773.x : _1169.x, _1167.y ? _773.y : _1169.y, _1167.z ? _773.z : _1169.z), lerp(0.0f.xxx, _762 + (_764 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _1029) * 1.0f, 0.0f);
    float4 _1043 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1042 = _1036;
        _1042.w = 0.0f;
        _1043 = _1042;
    }
    else
    {
        _1043 = _1036;
    }
    float2 _1047 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1062 = (_659 * 0.5f) + 0.5f.xxx;
    float4 _1064 = 0.0f.xxxx;
    _1064.x = _1062.x;
    _1064.y = _1062.y;
    _1064.z = _1062.z;
    _1064.w = mad(2.0f, float((_662 & 256u) != 0u), float((_662 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1071 = 0.0f.xxxx;
    _1071.x = _658.x;
    _1071.y = _658.y;
    _1071.z = _658.z;
    _1071.w = mad(frac(dot(_1047.xyx * _1047.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_928, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1141.x ? _773.x : _1143.x, _1141.y ? _773.y : _1143.y, _1141.z ? _773.z : _1143.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1077 = 0.0f.xxxx;
    _1077.x = _734;
    _1077.y = 1.0f;
    _1077.z = 1.0f;
    _1077.w = 1.0f;
    float4 _1082 = _1043 * View_View_PreExposure;
    float3 _1083 = _1082.xyz;
    bool3 _1190 = isnan(_1083);
    bool3 _1191 = isnan(32256.0f.xxx);
    float3 _1192 = min(_1083, 32256.0f.xxx);
    float3 _1193 = float3(_1190.x ? 32256.0f.xxx.x : _1192.x, _1190.y ? 32256.0f.xxx.y : _1192.y, _1190.z ? 32256.0f.xxx.z : _1192.z);
    float3 _1084 = float3(_1191.x ? _1083.x : _1193.x, _1191.y ? _1083.y : _1193.y, _1191.z ? _1083.z : _1193.z);
    out_var_SV_Target0 = float4(_1084.x, _1084.y, _1084.z, _1082.w);
    out_var_SV_Target1 = _1064;
    out_var_SV_Target2 = float4(_657, _656, _655, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1071;
    out_var_SV_Target5 = _1077;
    gl_FragDepth = _593;
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
