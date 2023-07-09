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
    float4 _248 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _252 = mad(float2(_248.zw), 2.0f.xx, (-1.0f).xx);
    float _254 = 1.0f - dot(_252, _252);
    float _256 = sqrt(isnan(0.0f) ? _254 : (isnan(_254) ? 0.0f : max(_254, 0.0f)));
    float _257 = _252.x;
    float3 _259 = float3(_257, _252.y, _256);
    float3 _262 = normalize(float3(_256, 0.0f, -_257));
    float4 _278 = float4(_204, _204, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _282 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _286 = _282.xyz / _282.w.xxx;
    float3 _296 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _296 = -View_View_ViewForward;
    }
    else
    {
        _296 = normalize(-_286);
    }
    float2 _297 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _301 = _297 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _307 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _301, View_View_MaterialTextureMipBias);
    float2 _311 = _297 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _313 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _311, View_View_MaterialTextureMipBias);
    float4 _320 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _325 = lerp(-1.0f, 1.0f, dot(_320, Material_Material_PreshaderBuffer[2])) + lerp(_307.z, _313.z, 0.5f);
    float _326 = isnan(9.9999997473787516355514526367188e-05f) ? _325 : (isnan(_325) ? 9.9999997473787516355514526367188e-05f : max(_325, 9.9999997473787516355514526367188e-05f));
    float _327 = isnan(1.0f) ? _326 : (isnan(_326) ? 1.0f : min(_326, 1.0f));
    float4 _331 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _301, View_View_MaterialTextureMipBias);
    float4 _333 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _311, View_View_MaterialTextureMipBias);
    float _341 = lerp(-1.0f, 1.0f, dot(_320, Material_Material_PreshaderBuffer[3])) + lerp(_331.z, _333.z, 0.5f);
    float _342 = isnan(9.9999997473787516355514526367188e-05f) ? _341 : (isnan(_341) ? 9.9999997473787516355514526367188e-05f : max(_341, 9.9999997473787516355514526367188e-05f));
    float _343 = isnan(1.0f) ? _342 : (isnan(_342) ? 1.0f : min(_342, 1.0f));
    float4 _348 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _301, View_View_MaterialTextureMipBias);
    float4 _350 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _311, View_View_MaterialTextureMipBias);
    float _358 = lerp(-1.0f, 1.0f, dot(_320, Material_Material_PreshaderBuffer[4])) + lerp(_348.z, _350.z, 0.5f);
    float _359 = isnan(9.9999997473787516355514526367188e-05f) ? _358 : (isnan(_358) ? 9.9999997473787516355514526367188e-05f : max(_358, 9.9999997473787516355514526367188e-05f));
    float _360 = isnan(1.0f) ? _359 : (isnan(_359) ? 1.0f : min(_359, 1.0f));
    float _362 = 1.0f / ((_327 + _343) + _360);
    float2 _368 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _311, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _379 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _301, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _390 = _362 * _327;
    float3 _391 = _390.xxx;
    float2 _397 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _311, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _408 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _301, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _419 = _362 * _343;
    float3 _420 = _419.xxx;
    float2 _428 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _311, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _439 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _301, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _450 = _362 * _360;
    float3 _451 = _450.xxx;
    float _455 = dot(_320, Material_Material_PreshaderBuffer[5]);
    float2 _461 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _311, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _472 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _301, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _483 = _455.xxx;
    float3 _487 = lerp(mad(lerp(float4(_428, sqrt(clamp(1.0f - dot(_428, _428), 0.0f, 1.0f)), 1.0f).xyz, float4(_439, sqrt(clamp(1.0f - dot(_439, _439), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _451, mad(lerp(float4(_368, sqrt(clamp(1.0f - dot(_368, _368), 0.0f, 1.0f)), 1.0f).xyz, float4(_379, sqrt(clamp(1.0f - dot(_379, _379), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _391, lerp(float4(_397, sqrt(clamp(1.0f - dot(_397, _397), 0.0f, 1.0f)), 1.0f).xyz, float4(_408, sqrt(clamp(1.0f - dot(_408, _408), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _420)), lerp(float4(_461, sqrt(clamp(1.0f - dot(_461, _461), 0.0f, 1.0f)), 1.0f).xyz, float4(_472, sqrt(clamp(1.0f - dot(_472, _472), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _483) * View_View_NormalOverrideParameter.w;
    float3 _492 = normalize(mul(normalize(_487 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_262, cross(_259, _262), _259), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _500 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _483), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _534 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _311, View_View_MaterialTextureMipBias);
    float4 _536 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _301, View_View_MaterialTextureMipBias);
    float _541 = lerp(0.0f, 0.0f, _455);
    float4 _560 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _311, View_View_MaterialTextureMipBias);
    float4 _562 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _301, View_View_MaterialTextureMipBias);
    float _583 = _278.z;
    float _584 = _278.w;
    float _586 = _583 / (_584 + _541);
    float _587 = isnan(gl_FragCoord.z) ? _586 : (isnan(_586) ? gl_FragCoord.z : min(_586, gl_FragCoord.z));
    float3 _593 = (_286 - View_View_RelativePreViewTranslation) + ((-_296) * (mad(-_587, _584, _583) / _587));
    float3 _594 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _311, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _301, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _451, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _311, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _301, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _391, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _311, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _301, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _420)), lerp(_534.xyz, _536.xyz, 0.5f.xxx), _483), 0.0f.xxx, 1.0f.xxx);
    float _595 = clamp(_541, 0.0f, 1.0f);
    float _596 = clamp(lerp(mad(0.5f, _419, 0.5f * _450), 0.5f, _455), 0.0f, 1.0f);
    float _600 = mad(clamp(lerp(mad(lerp(_350.y, _348.y, 0.5f), _450, mad(lerp(_313.y, _307.y, 0.5f), _390, lerp(_333.y, _331.y, 0.5f) * _419)), lerp(_560.y, _562.y, 0.5f), _455), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _601 = clamp(lerp(mad(lerp(_350.x, _348.x, 0.5f), _450, mad(lerp(_313.x, _307.x, 0.5f), _390, lerp(_333.x, _331.x, 0.5f) * _419)), lerp(_560.x, _562.x, 0.5f), _455), 0.0f, 1.0f);
    uint _602 = in_var_PRIMITIVE_ID * 41u;
    float _649 = 0.0f;
    float _650 = 0.0f;
    float _651 = 0.0f;
    float3 _652 = 0.0f.xxx;
    float3 _653 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_602 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _618 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _622 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _618, 0.0f);
        float4 _626 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _618, 0.0f);
        float4 _630 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _618, 0.0f);
        float _640 = _630.w;
        _649 = mad(_600, _640, _630.z);
        _650 = mad(_596, _640, _630.y);
        _651 = mad(_595, _640, _630.x);
        _652 = (_594 * _622.w) + _622.xyz;
        _653 = normalize((_492 * _626.w) + ((_626.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _649 = _600;
        _650 = _596;
        _651 = _595;
        _652 = _594;
        _653 = _492;
    }
    uint _656 = asuint(asfloat(View_PrimitiveSceneData.Load4(_602 * 16 + 0)).x);
    bool _672 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _678 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_602 * 16 + 0)).x) & 2u) != 0u) && _672)
    {
        _678 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _678 = 1.0f;
    }
    float _728 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_602 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _696 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _593, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _707 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_696.x), int(_696.y), int(_696.z), 0).xyz, 0)));
        _728 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_707.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_696 / _707.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _728 = _678;
    }
    float3 _741 = ((_652 - (_652 * _651)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _748 = (lerp((0.07999999821186065673828125f * _650).xxx, _652, _651.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _751 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _756 = 0.0f.xxx;
    if (_751)
    {
        _756 = _741 + (_748 * 0.449999988079071044921875f);
    }
    else
    {
        _756 = _741;
    }
    bool3 _757 = _751.xxx;
    float3 _758 = float3(_757.x ? 0.0f.xxx.x : _748.x, _757.y ? 0.0f.xxx.y : _748.y, _757.z ? 0.0f.xxx.z : _748.z);
    float3 _760 = dot(_758, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _767 = _601.xxx;
    float3 _772 = ((((((_760 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _601) + ((_760 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _601) + ((_760 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _601;
    bool3 _1126 = isnan(_767);
    bool3 _1127 = isnan(_772);
    float3 _1128 = max(_767, _772);
    float3 _1129 = float3(_1126.x ? _772.x : _1128.x, _1126.y ? _772.y : _1128.y, _1126.z ? _772.z : _1128.z);
    float3 _836 = 0.0f.xxx;
    if (_672)
    {
        float3 _788 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _593, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _792 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _788);
        float4 _796 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _788);
        float4 _799 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _788);
        float4 _817 = 0.0f.xxxx;
        _817.y = (-0.48860299587249755859375f) * _653.y;
        _817.z = 0.48860299587249755859375f * _653.z;
        _817.w = (-0.48860299587249755859375f) * _653.x;
        _817.x = 0.886227548122406005859375f;
        float3 _826 = _817.yzw * 2.094395160675048828125f;
        float4 _827 = float4(_817.x, _826.x, _826.y, _826.z);
        float3 _829 = 0.0f.xxx;
        _829.x = dot(float4(_792.x, _796.x, _799.x, _792.w), _827);
        _829.y = dot(float4(_792.y, _796.y, _799.y, _796.w), _827);
        _829.z = dot(float4(_792.z, _796.z, _799.zw), _827);
        bool3 _1133 = isnan(0.0f.xxx);
        bool3 _1134 = isnan(_829);
        float3 _1135 = max(0.0f.xxx, _829);
        float3 _1136 = float3(_1133.x ? _829.x : _1135.x, _1133.y ? _829.y : _1135.y, _1133.z ? _829.z : _1135.z);
        _836 = float3(_1134.x ? 0.0f.xxx.x : _1136.x, _1134.y ? 0.0f.xxx.y : _1136.y, _1134.z ? 0.0f.xxx.z : _1136.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _836 = 0.0f.xxx;
    }
    float3 _914 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _866 = 0.0f;
        float _867 = 0.0f;
        float3 _868 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _856 = 0.0f.xxx;
            float _857 = 0.0f;
            if (_672)
            {
                _856 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _857 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _856 = _653;
                _857 = 1.0f;
            }
            float _860 = mad(_857 - 1.0f, 1.0f - _857, 1.0f);
            _866 = lerp(clamp(dot(_856, _653), 0.0f, 1.0f), 1.0f, _860);
            _867 = _857;
            _868 = lerp(_856, _653, _860.xxx);
        }
        else
        {
            _866 = 1.0f;
            _867 = 1.0f;
            _868 = _653;
        }
        float4 _872 = float4(_868, 1.0f);
        float3 _876 = 0.0f.xxx;
        _876.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _872);
        _876.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _872);
        _876.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _872);
        float4 _887 = _872.xyzz * _872.yzzx;
        float3 _891 = 0.0f.xxx;
        _891.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _887);
        _891.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _887);
        _891.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _887);
        float3 _908 = (_876 + _891) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_868.x, _868.x, -(_868.y * _868.y)));
        bool3 _1146 = isnan(0.0f.xxx);
        bool3 _1147 = isnan(_908);
        float3 _1148 = max(0.0f.xxx, _908);
        float3 _1149 = float3(_1146.x ? _908.x : _1148.x, _1146.y ? _908.y : _1148.y, _1146.z ? _908.z : _1148.z);
        _914 = (float3(_1147.x ? 0.0f.xxx.x : _1149.x, _1147.y ? 0.0f.xxx.y : _1149.y, _1147.z ? 0.0f.xxx.z : _1149.z) * View_View_SkyLightColor.xyz) * (_867 * _866);
    }
    else
    {
        _914 = 0.0f.xxx;
    }
    float3 _915 = mad(_836, View_View_PrecomputedIndirectLightingColorScale, _914);
    float3 _928 = ((((((_652 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _601) + ((_652 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _601) + ((_652 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _601;
    bool3 _1151 = isnan(_767);
    bool3 _1152 = isnan(_928);
    float3 _1153 = max(_767, _928);
    float3 _1154 = float3(_1151.x ? _928.x : _1153.x, _1151.y ? _928.y : _1153.y, _1151.z ? _928.z : _1153.z);
    bool3 _1156 = isnan(_500);
    bool3 _1157 = isnan(0.0f.xxx);
    float3 _1158 = max(_500, 0.0f.xxx);
    float3 _1159 = float3(_1156.x ? 0.0f.xxx.x : _1158.x, _1156.y ? 0.0f.xxx.y : _1158.y, _1156.z ? 0.0f.xxx.z : _1158.z);
    float3 _936 = float3(_1157.x ? _500.x : _1159.x, _1157.y ? _500.y : _1159.y, _1157.z ? _500.z : _1159.z);
    float3 _1016 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _962 = _602 + 31u;
        float3 _971 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_602 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_593 - asfloat(View_PrimitiveSceneData.Load4((_602 + 18u) * 16 + 0)).xyz));
        float3 _972 = float3(asfloat(View_PrimitiveSceneData.Load4((_602 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_602 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_602 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1015 = 0.0f.xxx;
        if (any(bool3(_971.x > _972.x, _971.y > _972.y, _971.z > _972.z)))
        {
            float3 _995 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _996 = _593 * 0.57700002193450927734375f.xxx;
            float3 _1011 = frac(mad((_996.x + _996.y) + _996.z, 0.00200000009499490261077880859375f, frac(((_995.x + _995.y) + _995.z) * 4194.30419921875f))).xxx;
            _1015 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1011.x > 0.5f.xxx.x, _1011.y > 0.5f.xxx.y, _1011.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _994 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_962 * 16 + 0)).x > 0.0f)
            {
                float3 _982 = abs(_286 - in_var_TEXCOORD9);
                float _983 = _982.x;
                float _984 = _982.y;
                float _985 = _982.z;
                float _986 = isnan(_985) ? _984 : (isnan(_984) ? _985 : max(_984, _985));
                _994 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_986) ? _983 : (isnan(_983) ? _986 : max(_983, _986))) - asfloat(View_PrimitiveSceneData.Load4(_962 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _994 = _936;
            }
            _1015 = _994;
        }
        _1016 = _1015;
    }
    else
    {
        _1016 = _936;
    }
    float4 _1023 = float4((mad(_915 * _756, float3(_1152.x ? _767.x : _1154.x, _1152.y ? _767.y : _1154.y, _1152.z ? _767.z : _1154.z), lerp(0.0f.xxx, _756 + (_758 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _1016) * 1.0f, 0.0f);
    float4 _1030 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1029 = _1023;
        _1029.w = 0.0f;
        _1030 = _1029;
    }
    else
    {
        _1030 = _1023;
    }
    float2 _1034 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1049 = (_653 * 0.5f) + 0.5f.xxx;
    float4 _1051 = 0.0f.xxxx;
    _1051.x = _1049.x;
    _1051.y = _1049.y;
    _1051.z = _1049.z;
    _1051.w = mad(2.0f, float((_656 & 256u) != 0u), float((_656 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1058 = 0.0f.xxxx;
    _1058.x = _652.x;
    _1058.y = _652.y;
    _1058.z = _652.z;
    _1058.w = mad(frac(dot(_1034.xyx * _1034.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_915, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1127.x ? _767.x : _1129.x, _1127.y ? _767.y : _1129.y, _1127.z ? _767.z : _1129.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1064 = 0.0f.xxxx;
    _1064.x = _728;
    _1064.y = 1.0f;
    _1064.z = 1.0f;
    _1064.w = 1.0f;
    float4 _1069 = _1030 * View_View_PreExposure;
    float3 _1070 = _1069.xyz;
    bool3 _1175 = isnan(_1070);
    bool3 _1176 = isnan(32256.0f.xxx);
    float3 _1177 = min(_1070, 32256.0f.xxx);
    float3 _1178 = float3(_1175.x ? 32256.0f.xxx.x : _1177.x, _1175.y ? 32256.0f.xxx.y : _1177.y, _1175.z ? 32256.0f.xxx.z : _1177.z);
    float3 _1071 = float3(_1176.x ? _1070.x : _1178.x, _1176.y ? _1070.y : _1178.y, _1176.z ? _1070.z : _1178.z);
    out_var_SV_Target0 = float4(_1071.x, _1071.y, _1071.z, _1069.w);
    out_var_SV_Target1 = _1051;
    out_var_SV_Target2 = float4(_651, _650, _649, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1058;
    out_var_SV_Target5 = _1064;
    gl_FragDepth = _587;
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
