#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _197 = 0.0f;
static float4 _198 = 0.0f.xxxx;

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
    float View_View_IndirectLightingCacheShowFlag : packoffset(c236.w);
};

ByteAddressBuffer View_PrimitiveSceneData;
cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
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
    float4 _240 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _244 = mad(float2(_240.zw), 2.0f.xx, (-1.0f).xx);
    float _246 = 1.0f - dot(_244, _244);
    float _248 = sqrt(isnan(0.0f) ? _246 : (isnan(_246) ? 0.0f : max(_246, 0.0f)));
    float _249 = _244.x;
    float3 _251 = float3(_249, _244.y, _248);
    float3 _254 = normalize(float3(_248, 0.0f, -_249));
    float4 _270 = float4(_197, _197, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _274 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _278 = _274.xyz / _274.w.xxx;
    float3 _288 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _288 = -View_View_ViewForward;
    }
    else
    {
        _288 = normalize(-_278);
    }
    float2 _289 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _293 = _289 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _299 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _293, View_View_MaterialTextureMipBias);
    float2 _303 = _289 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _305 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _303, View_View_MaterialTextureMipBias);
    float4 _312 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _317 = lerp(-1.0f, 1.0f, dot(_312, Material_Material_PreshaderBuffer[2])) + lerp(_299.z, _305.z, 0.5f);
    float _318 = isnan(9.9999997473787516355514526367188e-05f) ? _317 : (isnan(_317) ? 9.9999997473787516355514526367188e-05f : max(_317, 9.9999997473787516355514526367188e-05f));
    float _319 = isnan(1.0f) ? _318 : (isnan(_318) ? 1.0f : min(_318, 1.0f));
    float4 _323 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _325 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _303, View_View_MaterialTextureMipBias);
    float _333 = lerp(-1.0f, 1.0f, dot(_312, Material_Material_PreshaderBuffer[3])) + lerp(_323.z, _325.z, 0.5f);
    float _334 = isnan(9.9999997473787516355514526367188e-05f) ? _333 : (isnan(_333) ? 9.9999997473787516355514526367188e-05f : max(_333, 9.9999997473787516355514526367188e-05f));
    float _335 = isnan(1.0f) ? _334 : (isnan(_334) ? 1.0f : min(_334, 1.0f));
    float4 _340 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _342 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _303, View_View_MaterialTextureMipBias);
    float _350 = lerp(-1.0f, 1.0f, dot(_312, Material_Material_PreshaderBuffer[4])) + lerp(_340.z, _342.z, 0.5f);
    float _351 = isnan(9.9999997473787516355514526367188e-05f) ? _350 : (isnan(_350) ? 9.9999997473787516355514526367188e-05f : max(_350, 9.9999997473787516355514526367188e-05f));
    float _352 = isnan(1.0f) ? _351 : (isnan(_351) ? 1.0f : min(_351, 1.0f));
    float _354 = 1.0f / ((_319 + _335) + _352);
    float2 _360 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _371 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _293, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _382 = _354 * _319;
    float3 _383 = _382.xxx;
    float2 _389 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _400 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _293, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _411 = _354 * _335;
    float3 _412 = _411.xxx;
    float2 _420 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _431 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _293, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _442 = _354 * _352;
    float3 _443 = _442.xxx;
    float _447 = dot(_312, Material_Material_PreshaderBuffer[5]);
    float2 _453 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _303, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _464 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _293, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _475 = _447.xxx;
    float3 _479 = lerp(mad(lerp(float4(_420, sqrt(clamp(1.0f - dot(_420, _420), 0.0f, 1.0f)), 1.0f).xyz, float4(_431, sqrt(clamp(1.0f - dot(_431, _431), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _443, mad(lerp(float4(_360, sqrt(clamp(1.0f - dot(_360, _360), 0.0f, 1.0f)), 1.0f).xyz, float4(_371, sqrt(clamp(1.0f - dot(_371, _371), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _383, lerp(float4(_389, sqrt(clamp(1.0f - dot(_389, _389), 0.0f, 1.0f)), 1.0f).xyz, float4(_400, sqrt(clamp(1.0f - dot(_400, _400), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _412)), lerp(float4(_453, sqrt(clamp(1.0f - dot(_453, _453), 0.0f, 1.0f)), 1.0f).xyz, float4(_464, sqrt(clamp(1.0f - dot(_464, _464), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _475) * View_View_NormalOverrideParameter.w;
    float3 _484 = normalize(mul(normalize(_479 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_254, cross(_251, _254), _251), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _492 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _475), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _526 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _303, View_View_MaterialTextureMipBias);
    float4 _528 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _293, View_View_MaterialTextureMipBias);
    float _533 = lerp(0.0f, 0.0f, _447);
    float4 _552 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _303, View_View_MaterialTextureMipBias);
    float4 _554 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _293, View_View_MaterialTextureMipBias);
    float _575 = _270.z;
    float _576 = _270.w;
    float _578 = _575 / (_576 + _533);
    float _579 = isnan(gl_FragCoord.z) ? _578 : (isnan(_578) ? gl_FragCoord.z : min(_578, gl_FragCoord.z));
    float3 _585 = (_278 - View_View_RelativePreViewTranslation) + ((-_288) * (mad(-_579, _576, _575) / _579));
    float3 _586 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _303, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _293, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _443, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _303, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _293, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _383, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _303, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _293, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _412)), lerp(_526.xyz, _528.xyz, 0.5f.xxx), _475), 0.0f.xxx, 1.0f.xxx);
    float _587 = clamp(_533, 0.0f, 1.0f);
    float _588 = clamp(lerp(mad(0.5f, _411, 0.5f * _442), 0.5f, _447), 0.0f, 1.0f);
    float _592 = mad(clamp(lerp(mad(lerp(_342.y, _340.y, 0.5f), _442, mad(lerp(_305.y, _299.y, 0.5f), _382, lerp(_325.y, _323.y, 0.5f) * _411)), lerp(_552.y, _554.y, 0.5f), _447), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _593 = clamp(lerp(mad(lerp(_342.x, _340.x, 0.5f), _442, mad(lerp(_305.x, _299.x, 0.5f), _382, lerp(_325.x, _323.x, 0.5f) * _411)), lerp(_552.x, _554.x, 0.5f), _447), 0.0f, 1.0f);
    uint _594 = in_var_PRIMITIVE_ID * 41u;
    float _641 = 0.0f;
    float _642 = 0.0f;
    float _643 = 0.0f;
    float3 _644 = 0.0f.xxx;
    float3 _645 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_594 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _610 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _614 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _610, 0.0f);
        float4 _618 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _610, 0.0f);
        float4 _622 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _610, 0.0f);
        float _632 = _622.w;
        _641 = mad(_592, _632, _622.z);
        _642 = mad(_588, _632, _622.y);
        _643 = mad(_587, _632, _622.x);
        _644 = (_586 * _614.w) + _614.xyz;
        _645 = normalize((_484 * _618.w) + ((_618.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _641 = _592;
        _642 = _588;
        _643 = _587;
        _644 = _586;
        _645 = _484;
    }
    uint _648 = asuint(asfloat(View_PrimitiveSceneData.Load4(_594 * 16 + 0)).x);
    bool _664 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _670 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_594 * 16 + 0)).x) & 2u) != 0u) && _664)
    {
        _670 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _670 = 1.0f;
    }
    float _720 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_594 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _688 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _585, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _699 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_688.x), int(_688.y), int(_688.z), 0).xyz, 0)));
        _720 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_699.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_688 / _699.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _720 = _670;
    }
    float3 _733 = ((_644 - (_644 * _643)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _740 = (lerp((0.07999999821186065673828125f * _642).xxx, _644, _643.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _743 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _748 = 0.0f.xxx;
    if (_743)
    {
        _748 = _733 + (_740 * 0.449999988079071044921875f);
    }
    else
    {
        _748 = _733;
    }
    bool3 _749 = _743.xxx;
    float3 _750 = float3(_749.x ? 0.0f.xxx.x : _740.x, _749.y ? 0.0f.xxx.y : _740.y, _749.z ? 0.0f.xxx.z : _740.z);
    float3 _752 = dot(_750, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _759 = _593.xxx;
    float3 _764 = ((((((_752 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _593) + ((_752 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _593) + ((_752 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _593;
    bool3 _1041 = isnan(_759);
    bool3 _1042 = isnan(_764);
    float3 _1043 = max(_759, _764);
    float3 _1044 = float3(_1041.x ? _764.x : _1043.x, _1041.y ? _764.y : _1043.y, _1041.z ? _764.z : _1043.z);
    float3 _828 = 0.0f.xxx;
    if (_664)
    {
        float3 _780 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _585, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _784 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _780);
        float4 _788 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _780);
        float4 _791 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _780);
        float4 _809 = 0.0f.xxxx;
        _809.y = (-0.48860299587249755859375f) * _645.y;
        _809.z = 0.48860299587249755859375f * _645.z;
        _809.w = (-0.48860299587249755859375f) * _645.x;
        _809.x = 0.886227548122406005859375f;
        float3 _818 = _809.yzw * 2.094395160675048828125f;
        float4 _819 = float4(_809.x, _818.x, _818.y, _818.z);
        float3 _821 = 0.0f.xxx;
        _821.x = dot(float4(_784.x, _788.x, _791.x, _784.w), _819);
        _821.y = dot(float4(_784.y, _788.y, _791.y, _788.w), _819);
        _821.z = dot(float4(_784.z, _788.z, _791.zw), _819);
        bool3 _1048 = isnan(0.0f.xxx);
        bool3 _1049 = isnan(_821);
        float3 _1050 = max(0.0f.xxx, _821);
        float3 _1051 = float3(_1048.x ? _821.x : _1050.x, _1048.y ? _821.y : _1050.y, _1048.z ? _821.z : _1050.z);
        _828 = float3(_1049.x ? 0.0f.xxx.x : _1051.x, _1049.y ? 0.0f.xxx.y : _1051.y, _1049.z ? 0.0f.xxx.z : _1051.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _828 = 0.0f.xxx;
    }
    float3 _831 = _828 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _844 = ((((((_644 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _593) + ((_644 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _593) + ((_644 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _593;
    bool3 _1053 = isnan(_759);
    bool3 _1054 = isnan(_844);
    float3 _1055 = max(_759, _844);
    float3 _1056 = float3(_1053.x ? _844.x : _1055.x, _1053.y ? _844.y : _1055.y, _1053.z ? _844.z : _1055.z);
    bool3 _1058 = isnan(_492);
    bool3 _1059 = isnan(0.0f.xxx);
    float3 _1060 = max(_492, 0.0f.xxx);
    float3 _1061 = float3(_1058.x ? 0.0f.xxx.x : _1060.x, _1058.y ? 0.0f.xxx.y : _1060.y, _1058.z ? 0.0f.xxx.z : _1060.z);
    float3 _852 = float3(_1059.x ? _492.x : _1061.x, _1059.y ? _492.y : _1061.y, _1059.z ? _492.z : _1061.z);
    float3 _932 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _878 = _594 + 31u;
        float3 _887 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_594 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_585 - asfloat(View_PrimitiveSceneData.Load4((_594 + 18u) * 16 + 0)).xyz));
        float3 _888 = float3(asfloat(View_PrimitiveSceneData.Load4((_594 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_594 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_594 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _931 = 0.0f.xxx;
        if (any(bool3(_887.x > _888.x, _887.y > _888.y, _887.z > _888.z)))
        {
            float3 _911 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _912 = _585 * 0.57700002193450927734375f.xxx;
            float3 _927 = frac(mad((_912.x + _912.y) + _912.z, 0.00200000009499490261077880859375f, frac(((_911.x + _911.y) + _911.z) * 4194.30419921875f))).xxx;
            _931 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_927.x > 0.5f.xxx.x, _927.y > 0.5f.xxx.y, _927.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _910 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_878 * 16 + 0)).x > 0.0f)
            {
                float3 _898 = abs(_278 - in_var_TEXCOORD9);
                float _899 = _898.x;
                float _900 = _898.y;
                float _901 = _898.z;
                float _902 = isnan(_901) ? _900 : (isnan(_900) ? _901 : max(_900, _901));
                _910 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_902) ? _899 : (isnan(_899) ? _902 : max(_899, _902))) - asfloat(View_PrimitiveSceneData.Load4(_878 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _910 = _852;
            }
            _931 = _910;
        }
        _932 = _931;
    }
    else
    {
        _932 = _852;
    }
    float4 _939 = float4((mad(_831 * _748, float3(_1054.x ? _759.x : _1056.x, _1054.y ? _759.y : _1056.y, _1054.z ? _759.z : _1056.z), lerp(0.0f.xxx, _748 + (_750 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _932) * 1.0f, 0.0f);
    float4 _946 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _945 = _939;
        _945.w = 0.0f;
        _946 = _945;
    }
    else
    {
        _946 = _939;
    }
    float2 _950 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _965 = (_645 * 0.5f) + 0.5f.xxx;
    float4 _967 = 0.0f.xxxx;
    _967.x = _965.x;
    _967.y = _965.y;
    _967.z = _965.z;
    _967.w = mad(2.0f, float((_648 & 256u) != 0u), float((_648 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _974 = 0.0f.xxxx;
    _974.x = _644.x;
    _974.y = _644.y;
    _974.z = _644.z;
    _974.w = mad(frac(dot(_950.xyx * _950.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_831, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1042.x ? _759.x : _1044.x, _1042.y ? _759.y : _1044.y, _1042.z ? _759.z : _1044.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _980 = 0.0f.xxxx;
    _980.x = _720;
    _980.y = 1.0f;
    _980.z = 1.0f;
    _980.w = 1.0f;
    float4 _985 = _946 * View_View_PreExposure;
    float3 _986 = _985.xyz;
    bool3 _1077 = isnan(_986);
    bool3 _1078 = isnan(32256.0f.xxx);
    float3 _1079 = min(_986, 32256.0f.xxx);
    float3 _1080 = float3(_1077.x ? 32256.0f.xxx.x : _1079.x, _1077.y ? 32256.0f.xxx.y : _1079.y, _1077.z ? 32256.0f.xxx.z : _1079.z);
    float3 _987 = float3(_1078.x ? _986.x : _1080.x, _1078.y ? _986.y : _1080.y, _1078.z ? _986.z : _1080.z);
    out_var_SV_Target0 = float4(_987.x, _987.y, _987.z, _985.w);
    out_var_SV_Target1 = _967;
    out_var_SV_Target2 = float4(_643, _642, _641, 0.56862747669219970703125f);
    out_var_SV_Target3 = _974;
    out_var_SV_Target5 = _980;
    gl_FragDepth = _579;
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
