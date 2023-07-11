#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _200 = 0.0f.xxx;
static float _203 = 0.0f;
static float4 _204 = 0.0f.xxxx;

cbuffer View
{
    row_major float4x4 View_View_ViewToClip : packoffset(c32);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c48);
    float3 View_View_ViewTilePosition : packoffset(c64);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c71);
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
    float4 Material_Material_PreshaderBuffer[10] : packoffset(c0);
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
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
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

static float4 gl_FragCoord;
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
};

void frag_main()
{
    float4 _243 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _247 = mad(float2(_243.zw), 2.0f.xx, (-1.0f).xx);
    float _249 = 1.0f - dot(_247, _247);
    float _251 = sqrt(isnan(0.0f) ? _249 : (isnan(_249) ? 0.0f : max(_249, 0.0f)));
    float _252 = _247.x;
    float3 _254 = float3(_252, _247.y, _251);
    float3 _257 = normalize(float3(_251, 0.0f, -_252));
    float4 _273 = float4(_203, _203, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _277 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _281 = _277.xyz / _277.w.xxx;
    float3 _282 = _281 - View_View_RelativePreViewTranslation;
    float4 _286 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _289 = dot(_286, Material_Material_PreshaderBuffer[1]);
    float _292 = dot(_286, Material_Material_PreshaderBuffer[2]);
    float _295 = dot(_286, Material_Material_PreshaderBuffer[3]);
    float2 _299 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[4].x.xx;
    float4 _305 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _299, View_View_MaterialTextureMipBias);
    float2 _307 = mad(_305.xy, 2.0f.xx, (-1.0f).xx);
    float2 _318 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[4].y.xx;
    float4 _320 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _318, View_View_MaterialTextureMipBias);
    float2 _322 = mad(_320.xy, 2.0f.xx, (-1.0f).xx);
    float _353 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _353 = _273.w;
            break;
        }
        else
        {
            float _338 = _273.z;
            _353 = mad(_338, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_338, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _360 = clamp((_353 + Material_Material_PreshaderBuffer[4].z) * Material_Material_PreshaderBuffer[5].x, 0.0f, 1.0f);
    float3 _363 = _360.xxx;
    float3 _365 = _289.xxx;
    float2 _369 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].y.xx;
    float2 _375 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _369, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _386 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].z.xx;
    float2 _390 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _386, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _401 = _292.xxx;
    float2 _407 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].w.xx;
    float2 _413 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _407, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _424 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[6].x.xx;
    float2 _428 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _424, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _439 = _295.xxx;
    float3 _444 = (mad(lerp(float4(_413, sqrt(clamp(1.0f - dot(_413, _413), 0.0f, 1.0f)), 1.0f).xyz, float4(_428, sqrt(clamp(1.0f - dot(_428, _428), 0.0f, 1.0f)), 1.0f).xyz, _363), _439, mad(lerp(float4(_307, sqrt(clamp(1.0f - dot(_307, _307), 0.0f, 1.0f)), 1.0f).xyz, float4(_322, sqrt(clamp(1.0f - dot(_322, _322), 0.0f, 1.0f)), 1.0f).xyz, _363), _365, lerp(float4(_375, sqrt(clamp(1.0f - dot(_375, _375), 0.0f, 1.0f)), 1.0f).xyz, float4(_390, sqrt(clamp(1.0f - dot(_390, _390), 0.0f, 1.0f)), 1.0f).xyz, _363) * _401)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz;
    float3 _448 = normalize(mul(normalize(_444), mul(float3x3(_257, cross(_254, _257), _254), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _455 = lerp(0.0f.xxx, Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].y.xxx);
    float3 _476 = lerp(0.5f.xxx, 1.0f.xxx, ((Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0 * 0.21340000629425048828125f.xx, View_View_MaterialTextureMipBias).x + 0.5f) * ((Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0 * 0.053410001099109649658203125f.xx, View_View_MaterialTextureMipBias).x + 0.5f) * (Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0 * 0.00200000009499490261077880859375f.xx, View_View_MaterialTextureMipBias).x + 0.5f))).xxx);
    float4 _522 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _299, View_View_MaterialTextureMipBias);
    float4 _524 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _318, View_View_MaterialTextureMipBias);
    float4 _534 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _369, View_View_MaterialTextureMipBias);
    float4 _536 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _386, View_View_MaterialTextureMipBias);
    float4 _548 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _407, View_View_MaterialTextureMipBias);
    float4 _550 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _424, View_View_MaterialTextureMipBias);
    float3 _570 = clamp(mad(_476 * lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _407, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _424, View_View_MaterialTextureMipBias).xyz, _363), _439, mad(_476 * lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _299, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _318, View_View_MaterialTextureMipBias).xyz, _363), _365, (_476 * lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _369, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _386, View_View_MaterialTextureMipBias).xyz, _363)) * _401)), 0.0f.xxx, 1.0f.xxx);
    float _571 = clamp(mad(Material_Material_PreshaderBuffer[8].y, _295, mad(Material_Material_PreshaderBuffer[7].w, _289, Material_Material_PreshaderBuffer[8].x * _292)), 0.0f, 1.0f);
    float _575 = mad(clamp(mad(Material_Material_PreshaderBuffer[9].x * lerp(_548.y, _550.y, _360), _295, mad(Material_Material_PreshaderBuffer[8].z * lerp(_522.y, _524.y, _360), _289, (Material_Material_PreshaderBuffer[8].w * lerp(_534.y, _536.y, _360)) * _292)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _576 = clamp(mad(lerp(_548.x, _550.x, _360), _295, mad(lerp(_522.x, _524.x, _360), _289, lerp(_534.x, _536.x, _360) * _292)), 0.0f, 1.0f);
    uint _577 = in_var_PRIMITIVE_ID * 41u;
    float _623 = 0.0f;
    float _624 = 0.0f;
    float _625 = 0.0f;
    float3 _626 = 0.0f.xxx;
    float3 _627 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_577 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _593 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _597 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _593, 0.0f);
        float4 _601 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _593, 0.0f);
        float4 _605 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _593, 0.0f);
        float _615 = _605.w;
        _623 = mad(_575, _615, _605.z);
        _624 = mad(_571, _615, _605.y);
        _625 = _605.x;
        _626 = (_570 * _597.w) + _597.xyz;
        _627 = normalize((_448 * _601.w) + ((_601.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _623 = _575;
        _624 = _571;
        _625 = 0.0f;
        _626 = _570;
        _627 = _448;
    }
    uint _630 = asuint(asfloat(View_PrimitiveSceneData.Load4(_577 * 16 + 0)).x);
    bool _646 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _652 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_577 * 16 + 0)).x) & 2u) != 0u) && _646)
    {
        _652 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _652 = 1.0f;
    }
    float _702 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_577 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _670 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _282, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _681 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_670.x), int(_670.y), int(_670.z), 0).xyz, 0)));
        _702 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_681.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_670 / _681.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _702 = _652;
    }
    float3 _715 = ((_626 - (_626 * _625)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _722 = (lerp((0.07999999821186065673828125f * _624).xxx, _626, _625.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _725 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _730 = 0.0f.xxx;
    if (_725)
    {
        _730 = _715 + (_722 * 0.449999988079071044921875f);
    }
    else
    {
        _730 = _715;
    }
    bool3 _731 = _725.xxx;
    float3 _732 = float3(_731.x ? 0.0f.xxx.x : _722.x, _731.y ? 0.0f.xxx.y : _722.y, _731.z ? 0.0f.xxx.z : _722.z);
    float3 _734 = dot(_732, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _741 = _576.xxx;
    float3 _746 = ((((((_734 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _576) + ((_734 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _576) + ((_734 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _576;
    bool3 _1065 = isnan(_741);
    bool3 _1066 = isnan(_746);
    float3 _1067 = max(_741, _746);
    float3 _1068 = float3(_1065.x ? _746.x : _1067.x, _1065.y ? _746.y : _1067.y, _1065.z ? _746.z : _1067.z);
    float3 _810 = 0.0f.xxx;
    if (_646)
    {
        float3 _762 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _282, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _766 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _762);
        float4 _770 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _762);
        float4 _773 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _762);
        float4 _791 = 0.0f.xxxx;
        _791.y = (-0.48860299587249755859375f) * _627.y;
        _791.z = 0.48860299587249755859375f * _627.z;
        _791.w = (-0.48860299587249755859375f) * _627.x;
        _791.x = 0.886227548122406005859375f;
        float3 _800 = _791.yzw * 2.094395160675048828125f;
        float4 _801 = float4(_791.x, _800.x, _800.y, _800.z);
        float3 _803 = 0.0f.xxx;
        _803.x = dot(float4(_766.x, _770.x, _773.x, _766.w), _801);
        _803.y = dot(float4(_766.y, _770.y, _773.y, _770.w), _801);
        _803.z = dot(float4(_766.z, _770.z, _773.zw), _801);
        bool3 _1072 = isnan(0.0f.xxx);
        bool3 _1073 = isnan(_803);
        float3 _1074 = max(0.0f.xxx, _803);
        float3 _1075 = float3(_1072.x ? _803.x : _1074.x, _1072.y ? _803.y : _1074.y, _1072.z ? _803.z : _1074.z);
        _810 = float3(_1073.x ? 0.0f.xxx.x : _1075.x, _1073.y ? 0.0f.xxx.y : _1075.y, _1073.z ? 0.0f.xxx.z : _1075.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _810 = 0.0f.xxx;
    }
    float3 _888 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _840 = 0.0f;
        float _841 = 0.0f;
        float3 _842 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _830 = 0.0f.xxx;
            float _831 = 0.0f;
            if (_646)
            {
                _830 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _831 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _830 = _627;
                _831 = 1.0f;
            }
            float _834 = mad(_831 - 1.0f, 1.0f - _831, 1.0f);
            _840 = lerp(clamp(dot(_830, _627), 0.0f, 1.0f), 1.0f, _834);
            _841 = _831;
            _842 = lerp(_830, _627, _834.xxx);
        }
        else
        {
            _840 = 1.0f;
            _841 = 1.0f;
            _842 = _627;
        }
        float4 _846 = float4(_842, 1.0f);
        float3 _850 = 0.0f.xxx;
        _850.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _846);
        _850.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _846);
        _850.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _846);
        float4 _861 = _846.xyzz * _846.yzzx;
        float3 _865 = 0.0f.xxx;
        _865.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _861);
        _865.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _861);
        _865.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _861);
        float3 _882 = (_850 + _865) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_842.x, _842.x, -(_842.y * _842.y)));
        bool3 _1085 = isnan(0.0f.xxx);
        bool3 _1086 = isnan(_882);
        float3 _1087 = max(0.0f.xxx, _882);
        float3 _1088 = float3(_1085.x ? _882.x : _1087.x, _1085.y ? _882.y : _1087.y, _1085.z ? _882.z : _1087.z);
        _888 = (float3(_1086.x ? 0.0f.xxx.x : _1088.x, _1086.y ? 0.0f.xxx.y : _1088.y, _1086.z ? 0.0f.xxx.z : _1088.z) * View_View_SkyLightColor.xyz) * (_841 * _840);
    }
    else
    {
        _888 = 0.0f.xxx;
    }
    float3 _889 = mad(_810, View_View_PrecomputedIndirectLightingColorScale, _888);
    float3 _902 = ((((((_626 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _576) + ((_626 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _576) + ((_626 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _576;
    bool3 _1090 = isnan(_741);
    bool3 _1091 = isnan(_902);
    float3 _1092 = max(_741, _902);
    float3 _1093 = float3(_1090.x ? _902.x : _1092.x, _1090.y ? _902.y : _1092.y, _1090.z ? _902.z : _1092.z);
    bool3 _1095 = isnan(_455);
    bool3 _1096 = isnan(0.0f.xxx);
    float3 _1097 = max(_455, 0.0f.xxx);
    float3 _1098 = float3(_1095.x ? 0.0f.xxx.x : _1097.x, _1095.y ? 0.0f.xxx.y : _1097.y, _1095.z ? 0.0f.xxx.z : _1097.z);
    float3 _910 = float3(_1096.x ? _455.x : _1098.x, _1096.y ? _455.y : _1098.y, _1096.z ? _455.z : _1098.z);
    float3 _990 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _936 = _577 + 31u;
        float3 _945 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_577 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_282 - asfloat(View_PrimitiveSceneData.Load4((_577 + 18u) * 16 + 0)).xyz));
        float3 _946 = float3(asfloat(View_PrimitiveSceneData.Load4((_577 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_577 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_577 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _989 = 0.0f.xxx;
        if (any(bool3(_945.x > _946.x, _945.y > _946.y, _945.z > _946.z)))
        {
            float3 _969 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _970 = _282 * 0.57700002193450927734375f.xxx;
            float3 _985 = frac(mad((_970.x + _970.y) + _970.z, 0.00200000009499490261077880859375f, frac(((_969.x + _969.y) + _969.z) * 4194.30419921875f))).xxx;
            _989 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_985.x > 0.5f.xxx.x, _985.y > 0.5f.xxx.y, _985.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _968 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_936 * 16 + 0)).x > 0.0f)
            {
                float3 _956 = abs(_281 - in_var_TEXCOORD9);
                float _957 = _956.x;
                float _958 = _956.y;
                float _959 = _956.z;
                float _960 = isnan(_959) ? _958 : (isnan(_958) ? _959 : max(_958, _959));
                _968 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_960) ? _957 : (isnan(_957) ? _960 : max(_957, _960))) - asfloat(View_PrimitiveSceneData.Load4(_936 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _968 = _910;
            }
            _989 = _968;
        }
        _990 = _989;
    }
    else
    {
        _990 = _910;
    }
    float4 _997 = float4((mad(_889 * _730, float3(_1091.x ? _741.x : _1093.x, _1091.y ? _741.y : _1093.y, _1091.z ? _741.z : _1093.z), lerp(0.0f.xxx, _730 + (_732 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _990) * 1.0f, 0.0f);
    float4 _1004 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1003 = _997;
        _1003.w = 0.0f;
        _1004 = _1003;
    }
    else
    {
        _1004 = _997;
    }
    float2 _1008 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1023 = (_627 * 0.5f) + 0.5f.xxx;
    float4 _1025 = 0.0f.xxxx;
    _1025.x = _1023.x;
    _1025.y = _1023.y;
    _1025.z = _1023.z;
    _1025.w = mad(2.0f, float((_630 & 256u) != 0u), float((_630 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1032 = 0.0f.xxxx;
    _1032.x = _626.x;
    _1032.y = _626.y;
    _1032.z = _626.z;
    _1032.w = mad(frac(dot(_1008.xyx * _1008.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_889, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1066.x ? _741.x : _1068.x, _1066.y ? _741.y : _1068.y, _1066.z ? _741.z : _1068.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1038 = 0.0f.xxxx;
    _1038.x = _702;
    _1038.y = 1.0f;
    _1038.z = 1.0f;
    _1038.w = 1.0f;
    float4 _1043 = _1004 * View_View_PreExposure;
    float3 _1044 = _1043.xyz;
    bool3 _1114 = isnan(_1044);
    bool3 _1115 = isnan(32256.0f.xxx);
    float3 _1116 = min(_1044, 32256.0f.xxx);
    float3 _1117 = float3(_1114.x ? 32256.0f.xxx.x : _1116.x, _1114.y ? 32256.0f.xxx.y : _1116.y, _1114.z ? 32256.0f.xxx.z : _1116.z);
    float3 _1045 = float3(_1115.x ? _1044.x : _1117.x, _1115.y ? _1044.y : _1117.y, _1115.z ? _1044.z : _1117.z);
    out_var_SV_Target0 = float4(_1045.x, _1045.y, _1045.z, _1043.w);
    out_var_SV_Target1 = _1025;
    out_var_SV_Target2 = float4(_625, _624, _623, 0.50588238239288330078125f);
    out_var_SV_Target3 = _1032;
    out_var_SV_Target5 = _1038;
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
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target5 = out_var_SV_Target5;
    return stage_output;
}
