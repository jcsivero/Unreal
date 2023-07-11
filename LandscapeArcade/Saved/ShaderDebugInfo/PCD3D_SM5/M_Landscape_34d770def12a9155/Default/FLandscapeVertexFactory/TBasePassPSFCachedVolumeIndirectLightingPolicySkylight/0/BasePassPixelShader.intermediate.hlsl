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
    float4 _521 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _299, View_View_MaterialTextureMipBias);
    float4 _523 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _318, View_View_MaterialTextureMipBias);
    float4 _533 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _369, View_View_MaterialTextureMipBias);
    float4 _535 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _386, View_View_MaterialTextureMipBias);
    float4 _547 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _407, View_View_MaterialTextureMipBias);
    float4 _549 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _424, View_View_MaterialTextureMipBias);
    float3 _569 = clamp(mad(_476 * lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _407, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _424, View_View_MaterialTextureMipBias).xyz, _363), _439, mad(_476 * lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _299, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _318, View_View_MaterialTextureMipBias).xyz, _363), _365, lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _369, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _386, View_View_MaterialTextureMipBias).xyz, _363) * _401)), 0.0f.xxx, 1.0f.xxx);
    float _570 = clamp(mad(Material_Material_PreshaderBuffer[8].y, _295, mad(Material_Material_PreshaderBuffer[7].w, _289, Material_Material_PreshaderBuffer[8].x * _292)), 0.0f, 1.0f);
    float _574 = mad(clamp(mad(Material_Material_PreshaderBuffer[9].x * lerp(_547.y, _549.y, _360), _295, mad(Material_Material_PreshaderBuffer[8].z * lerp(_521.y, _523.y, _360), _289, (Material_Material_PreshaderBuffer[8].w * lerp(_533.y, _535.y, _360)) * _292)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _575 = clamp(mad(lerp(_547.x, _549.x, _360), _295, mad(lerp(_521.x, _523.x, _360), _289, lerp(_533.x, _535.x, _360) * _292)), 0.0f, 1.0f);
    uint _576 = in_var_PRIMITIVE_ID * 41u;
    float _622 = 0.0f;
    float _623 = 0.0f;
    float _624 = 0.0f;
    float3 _625 = 0.0f.xxx;
    float3 _626 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_576 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _592 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _596 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _592, 0.0f);
        float4 _600 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _592, 0.0f);
        float4 _604 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _592, 0.0f);
        float _614 = _604.w;
        _622 = mad(_574, _614, _604.z);
        _623 = mad(_570, _614, _604.y);
        _624 = _604.x;
        _625 = (_569 * _596.w) + _596.xyz;
        _626 = normalize((_448 * _600.w) + ((_600.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _622 = _574;
        _623 = _570;
        _624 = 0.0f;
        _625 = _569;
        _626 = _448;
    }
    uint _629 = asuint(asfloat(View_PrimitiveSceneData.Load4(_576 * 16 + 0)).x);
    bool _645 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _651 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_576 * 16 + 0)).x) & 2u) != 0u) && _645)
    {
        _651 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _651 = 1.0f;
    }
    float _701 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_576 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _669 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _282, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _680 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_669.x), int(_669.y), int(_669.z), 0).xyz, 0)));
        _701 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_680.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_669 / _680.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _701 = _651;
    }
    float3 _714 = ((_625 - (_625 * _624)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _721 = (lerp((0.07999999821186065673828125f * _623).xxx, _625, _624.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _724 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _729 = 0.0f.xxx;
    if (_724)
    {
        _729 = _714 + (_721 * 0.449999988079071044921875f);
    }
    else
    {
        _729 = _714;
    }
    bool3 _730 = _724.xxx;
    float3 _731 = float3(_730.x ? 0.0f.xxx.x : _721.x, _730.y ? 0.0f.xxx.y : _721.y, _730.z ? 0.0f.xxx.z : _721.z);
    float3 _733 = dot(_731, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _740 = _575.xxx;
    float3 _745 = ((((((_733 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _575) + ((_733 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _575) + ((_733 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _575;
    bool3 _1064 = isnan(_740);
    bool3 _1065 = isnan(_745);
    float3 _1066 = max(_740, _745);
    float3 _1067 = float3(_1064.x ? _745.x : _1066.x, _1064.y ? _745.y : _1066.y, _1064.z ? _745.z : _1066.z);
    float3 _809 = 0.0f.xxx;
    if (_645)
    {
        float3 _761 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _282, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _765 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _761);
        float4 _769 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _761);
        float4 _772 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _761);
        float4 _790 = 0.0f.xxxx;
        _790.y = (-0.48860299587249755859375f) * _626.y;
        _790.z = 0.48860299587249755859375f * _626.z;
        _790.w = (-0.48860299587249755859375f) * _626.x;
        _790.x = 0.886227548122406005859375f;
        float3 _799 = _790.yzw * 2.094395160675048828125f;
        float4 _800 = float4(_790.x, _799.x, _799.y, _799.z);
        float3 _802 = 0.0f.xxx;
        _802.x = dot(float4(_765.x, _769.x, _772.x, _765.w), _800);
        _802.y = dot(float4(_765.y, _769.y, _772.y, _769.w), _800);
        _802.z = dot(float4(_765.z, _769.z, _772.zw), _800);
        bool3 _1071 = isnan(0.0f.xxx);
        bool3 _1072 = isnan(_802);
        float3 _1073 = max(0.0f.xxx, _802);
        float3 _1074 = float3(_1071.x ? _802.x : _1073.x, _1071.y ? _802.y : _1073.y, _1071.z ? _802.z : _1073.z);
        _809 = float3(_1072.x ? 0.0f.xxx.x : _1074.x, _1072.y ? 0.0f.xxx.y : _1074.y, _1072.z ? 0.0f.xxx.z : _1074.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _809 = 0.0f.xxx;
    }
    float3 _887 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _839 = 0.0f;
        float _840 = 0.0f;
        float3 _841 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _829 = 0.0f.xxx;
            float _830 = 0.0f;
            if (_645)
            {
                _829 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _830 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _829 = _626;
                _830 = 1.0f;
            }
            float _833 = mad(_830 - 1.0f, 1.0f - _830, 1.0f);
            _839 = lerp(clamp(dot(_829, _626), 0.0f, 1.0f), 1.0f, _833);
            _840 = _830;
            _841 = lerp(_829, _626, _833.xxx);
        }
        else
        {
            _839 = 1.0f;
            _840 = 1.0f;
            _841 = _626;
        }
        float4 _845 = float4(_841, 1.0f);
        float3 _849 = 0.0f.xxx;
        _849.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _845);
        _849.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _845);
        _849.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _845);
        float4 _860 = _845.xyzz * _845.yzzx;
        float3 _864 = 0.0f.xxx;
        _864.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _860);
        _864.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _860);
        _864.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _860);
        float3 _881 = (_849 + _864) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_841.x, _841.x, -(_841.y * _841.y)));
        bool3 _1084 = isnan(0.0f.xxx);
        bool3 _1085 = isnan(_881);
        float3 _1086 = max(0.0f.xxx, _881);
        float3 _1087 = float3(_1084.x ? _881.x : _1086.x, _1084.y ? _881.y : _1086.y, _1084.z ? _881.z : _1086.z);
        _887 = (float3(_1085.x ? 0.0f.xxx.x : _1087.x, _1085.y ? 0.0f.xxx.y : _1087.y, _1085.z ? 0.0f.xxx.z : _1087.z) * View_View_SkyLightColor.xyz) * (_840 * _839);
    }
    else
    {
        _887 = 0.0f.xxx;
    }
    float3 _888 = mad(_809, View_View_PrecomputedIndirectLightingColorScale, _887);
    float3 _901 = ((((((_625 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _575) + ((_625 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _575) + ((_625 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _575;
    bool3 _1089 = isnan(_740);
    bool3 _1090 = isnan(_901);
    float3 _1091 = max(_740, _901);
    float3 _1092 = float3(_1089.x ? _901.x : _1091.x, _1089.y ? _901.y : _1091.y, _1089.z ? _901.z : _1091.z);
    bool3 _1094 = isnan(_455);
    bool3 _1095 = isnan(0.0f.xxx);
    float3 _1096 = max(_455, 0.0f.xxx);
    float3 _1097 = float3(_1094.x ? 0.0f.xxx.x : _1096.x, _1094.y ? 0.0f.xxx.y : _1096.y, _1094.z ? 0.0f.xxx.z : _1096.z);
    float3 _909 = float3(_1095.x ? _455.x : _1097.x, _1095.y ? _455.y : _1097.y, _1095.z ? _455.z : _1097.z);
    float3 _989 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _935 = _576 + 31u;
        float3 _944 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_576 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_282 - asfloat(View_PrimitiveSceneData.Load4((_576 + 18u) * 16 + 0)).xyz));
        float3 _945 = float3(asfloat(View_PrimitiveSceneData.Load4((_576 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_576 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_576 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _988 = 0.0f.xxx;
        if (any(bool3(_944.x > _945.x, _944.y > _945.y, _944.z > _945.z)))
        {
            float3 _968 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _969 = _282 * 0.57700002193450927734375f.xxx;
            float3 _984 = frac(mad((_969.x + _969.y) + _969.z, 0.00200000009499490261077880859375f, frac(((_968.x + _968.y) + _968.z) * 4194.30419921875f))).xxx;
            _988 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_984.x > 0.5f.xxx.x, _984.y > 0.5f.xxx.y, _984.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _967 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_935 * 16 + 0)).x > 0.0f)
            {
                float3 _955 = abs(_281 - in_var_TEXCOORD9);
                float _956 = _955.x;
                float _957 = _955.y;
                float _958 = _955.z;
                float _959 = isnan(_958) ? _957 : (isnan(_957) ? _958 : max(_957, _958));
                _967 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_959) ? _956 : (isnan(_956) ? _959 : max(_956, _959))) - asfloat(View_PrimitiveSceneData.Load4(_935 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _967 = _909;
            }
            _988 = _967;
        }
        _989 = _988;
    }
    else
    {
        _989 = _909;
    }
    float4 _996 = float4((mad(_888 * _729, float3(_1090.x ? _740.x : _1092.x, _1090.y ? _740.y : _1092.y, _1090.z ? _740.z : _1092.z), lerp(0.0f.xxx, _729 + (_731 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _989) * 1.0f, 0.0f);
    float4 _1003 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1002 = _996;
        _1002.w = 0.0f;
        _1003 = _1002;
    }
    else
    {
        _1003 = _996;
    }
    float2 _1007 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1022 = (_626 * 0.5f) + 0.5f.xxx;
    float4 _1024 = 0.0f.xxxx;
    _1024.x = _1022.x;
    _1024.y = _1022.y;
    _1024.z = _1022.z;
    _1024.w = mad(2.0f, float((_629 & 256u) != 0u), float((_629 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1031 = 0.0f.xxxx;
    _1031.x = _625.x;
    _1031.y = _625.y;
    _1031.z = _625.z;
    _1031.w = mad(frac(dot(_1007.xyx * _1007.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_888, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1065.x ? _740.x : _1067.x, _1065.y ? _740.y : _1067.y, _1065.z ? _740.z : _1067.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1037 = 0.0f.xxxx;
    _1037.x = _701;
    _1037.y = 1.0f;
    _1037.z = 1.0f;
    _1037.w = 1.0f;
    float4 _1042 = _1003 * View_View_PreExposure;
    float3 _1043 = _1042.xyz;
    bool3 _1113 = isnan(_1043);
    bool3 _1114 = isnan(32256.0f.xxx);
    float3 _1115 = min(_1043, 32256.0f.xxx);
    float3 _1116 = float3(_1113.x ? 32256.0f.xxx.x : _1115.x, _1113.y ? 32256.0f.xxx.y : _1115.y, _1113.z ? 32256.0f.xxx.z : _1115.z);
    float3 _1044 = float3(_1114.x ? _1043.x : _1116.x, _1114.y ? _1043.y : _1116.y, _1114.z ? _1043.z : _1116.z);
    out_var_SV_Target0 = float4(_1044.x, _1044.y, _1044.z, _1042.w);
    out_var_SV_Target1 = _1024;
    out_var_SV_Target2 = float4(_624, _623, _622, 0.50588238239288330078125f);
    out_var_SV_Target3 = _1031;
    out_var_SV_Target5 = _1037;
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
