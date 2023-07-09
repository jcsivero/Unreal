#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _196 = 0.0f.xxxx;
static float _199 = 0.0f;
static float4 _200 = 0.0f.xxxx;

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
    float4 _242 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _246 = mad(float2(_242.zw), 2.0f.xx, (-1.0f).xx);
    float _248 = 1.0f - dot(_246, _246);
    float _250 = sqrt(isnan(0.0f) ? _248 : (isnan(_248) ? 0.0f : max(_248, 0.0f)));
    float _251 = _246.x;
    float3 _253 = float3(_251, _246.y, _250);
    float3 _256 = normalize(float3(_250, 0.0f, -_251));
    float4 _272 = float4(_199, _199, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _276 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _280 = _276.xyz / _276.w.xxx;
    float3 _290 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _290 = -View_View_ViewForward;
    }
    else
    {
        _290 = normalize(-_280);
    }
    float2 _291 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _295 = _291 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _301 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _295, View_View_MaterialTextureMipBias);
    float2 _305 = _291 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _307 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _305, View_View_MaterialTextureMipBias);
    float4 _314 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _319 = lerp(-1.0f, 1.0f, dot(_314, Material_Material_PreshaderBuffer[2])) + lerp(_301.z, _307.z, 0.5f);
    float _320 = isnan(9.9999997473787516355514526367188e-05f) ? _319 : (isnan(_319) ? 9.9999997473787516355514526367188e-05f : max(_319, 9.9999997473787516355514526367188e-05f));
    float _321 = isnan(1.0f) ? _320 : (isnan(_320) ? 1.0f : min(_320, 1.0f));
    float4 _325 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _295, View_View_MaterialTextureMipBias);
    float4 _327 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _305, View_View_MaterialTextureMipBias);
    float _335 = lerp(-1.0f, 1.0f, dot(_314, Material_Material_PreshaderBuffer[3])) + lerp(_325.z, _327.z, 0.5f);
    float _336 = isnan(9.9999997473787516355514526367188e-05f) ? _335 : (isnan(_335) ? 9.9999997473787516355514526367188e-05f : max(_335, 9.9999997473787516355514526367188e-05f));
    float _337 = isnan(1.0f) ? _336 : (isnan(_336) ? 1.0f : min(_336, 1.0f));
    float4 _342 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _295, View_View_MaterialTextureMipBias);
    float4 _344 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _305, View_View_MaterialTextureMipBias);
    float _352 = lerp(-1.0f, 1.0f, dot(_314, Material_Material_PreshaderBuffer[4])) + lerp(_342.z, _344.z, 0.5f);
    float _353 = isnan(9.9999997473787516355514526367188e-05f) ? _352 : (isnan(_352) ? 9.9999997473787516355514526367188e-05f : max(_352, 9.9999997473787516355514526367188e-05f));
    float _354 = isnan(1.0f) ? _353 : (isnan(_353) ? 1.0f : min(_353, 1.0f));
    float _356 = 1.0f / ((_321 + _337) + _354);
    float2 _362 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _373 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _295, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _384 = _356 * _321;
    float3 _385 = _384.xxx;
    float2 _391 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _402 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _295, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _413 = _356 * _337;
    float3 _414 = _413.xxx;
    float2 _422 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _433 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _295, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _444 = _356 * _354;
    float3 _445 = _444.xxx;
    float _449 = dot(_314, Material_Material_PreshaderBuffer[5]);
    float2 _455 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _466 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _295, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _477 = _449.xxx;
    float3 _481 = lerp(mad(lerp(float4(_422, sqrt(clamp(1.0f - dot(_422, _422), 0.0f, 1.0f)), 1.0f).xyz, float4(_433, sqrt(clamp(1.0f - dot(_433, _433), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _445, mad(lerp(float4(_362, sqrt(clamp(1.0f - dot(_362, _362), 0.0f, 1.0f)), 1.0f).xyz, float4(_373, sqrt(clamp(1.0f - dot(_373, _373), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _385, lerp(float4(_391, sqrt(clamp(1.0f - dot(_391, _391), 0.0f, 1.0f)), 1.0f).xyz, float4(_402, sqrt(clamp(1.0f - dot(_402, _402), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _414)), lerp(float4(_455, sqrt(clamp(1.0f - dot(_455, _455), 0.0f, 1.0f)), 1.0f).xyz, float4(_466, sqrt(clamp(1.0f - dot(_466, _466), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _477) * View_View_NormalOverrideParameter.w;
    float3 _486 = normalize(mul(normalize(_481 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_256, cross(_253, _256), _253), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _494 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _477), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _528 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _305, View_View_MaterialTextureMipBias);
    float4 _530 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _295, View_View_MaterialTextureMipBias);
    float _535 = lerp(0.0f, 0.0f, _449);
    float4 _554 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _305, View_View_MaterialTextureMipBias);
    float4 _556 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _295, View_View_MaterialTextureMipBias);
    float _577 = _272.z;
    float _578 = _272.w;
    float _580 = _577 / (_578 + _535);
    float _581 = isnan(gl_FragCoord.z) ? _580 : (isnan(_580) ? gl_FragCoord.z : min(_580, gl_FragCoord.z));
    float3 _587 = (_280 - View_View_RelativePreViewTranslation) + ((-_290) * (mad(-_581, _578, _577) / _581));
    float3 _588 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _305, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _295, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _445, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _305, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _295, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _385, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _305, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _295, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _414)), lerp(_528.xyz, _530.xyz, 0.5f.xxx), _477), 0.0f.xxx, 1.0f.xxx);
    float _589 = clamp(_535, 0.0f, 1.0f);
    float _590 = clamp(lerp(mad(0.5f, _413, 0.5f * _444), 0.5f, _449), 0.0f, 1.0f);
    float _594 = mad(clamp(lerp(mad(lerp(_344.y, _342.y, 0.5f), _444, mad(lerp(_307.y, _301.y, 0.5f), _384, lerp(_327.y, _325.y, 0.5f) * _413)), lerp(_554.y, _556.y, 0.5f), _449), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _595 = clamp(lerp(mad(lerp(_344.x, _342.x, 0.5f), _444, mad(lerp(_307.x, _301.x, 0.5f), _384, lerp(_327.x, _325.x, 0.5f) * _413)), lerp(_554.x, _556.x, 0.5f), _449), 0.0f, 1.0f);
    uint _596 = in_var_PRIMITIVE_ID * 41u;
    float _643 = 0.0f;
    float _644 = 0.0f;
    float _645 = 0.0f;
    float3 _646 = 0.0f.xxx;
    float3 _647 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_596 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _612 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _616 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _612, 0.0f);
        float4 _620 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _612, 0.0f);
        float4 _624 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _612, 0.0f);
        float _634 = _624.w;
        _643 = mad(_594, _634, _624.z);
        _644 = mad(_590, _634, _624.y);
        _645 = mad(_589, _634, _624.x);
        _646 = (_588 * _616.w) + _616.xyz;
        _647 = normalize((_486 * _620.w) + ((_620.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _643 = _594;
        _644 = _590;
        _645 = _589;
        _646 = _588;
        _647 = _486;
    }
    uint _650 = asuint(asfloat(View_PrimitiveSceneData.Load4(_596 * 16 + 0)).x);
    bool _666 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _672 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_596 * 16 + 0)).x) & 2u) != 0u) && _666)
    {
        _672 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _672 = 1.0f;
    }
    float _722 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_596 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _690 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _587, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _701 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_690.x), int(_690.y), int(_690.z), 0).xyz, 0)));
        _722 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_701.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_690 / _701.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _722 = _672;
    }
    float3 _735 = ((_646 - (_646 * _645)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _742 = (lerp((0.07999999821186065673828125f * _644).xxx, _646, _645.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
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
    float3 _761 = _595.xxx;
    float3 _766 = ((((((_754 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _595) + ((_754 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _595) + ((_754 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _595;
    bool3 _1051 = isnan(_761);
    bool3 _1052 = isnan(_766);
    float3 _1053 = max(_761, _766);
    float3 _1054 = float3(_1051.x ? _766.x : _1053.x, _1051.y ? _766.y : _1053.y, _1051.z ? _766.z : _1053.z);
    float3 _837 = 0.0f.xxx;
    if (_666)
    {
        float4 _791 = 0.0f.xxxx;
        _791.y = (-0.48860299587249755859375f) * _647.y;
        _791.z = 0.48860299587249755859375f * _647.z;
        _791.w = (-0.48860299587249755859375f) * _647.x;
        float3 _798 = _647 * _647;
        float4 _801 = 0.0f.xxxx;
        _801.x = (1.09254801273345947265625f * _647.x) * _647.y;
        _801.y = ((-1.09254801273345947265625f) * _647.y) * _647.z;
        _801.z = 0.3153919875621795654296875f * mad(3.0f, _798.z, -1.0f);
        _801.w = ((-1.09254801273345947265625f) * _647.x) * _647.z;
        _791.x = 0.886227548122406005859375f;
        float3 _817 = _791.yzw * 2.094395160675048828125f;
        float4 _818 = float4(_791.x, _817.x, _817.y, _817.z);
        float4 _819 = _801 * 0.785398185253143310546875f;
        float _820 = (_798.x - _798.y) * 0.4290426075458526611328125f;
        float3 _825 = 0.0f.xxx;
        _825.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _820, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _818) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _819));
        _825.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _820, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _818) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _819));
        _825.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _820, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _818) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _819));
        bool3 _1059 = isnan(0.0f.xxx);
        bool3 _1060 = isnan(_825);
        float3 _1061 = max(0.0f.xxx, _825);
        float3 _1062 = float3(_1059.x ? _825.x : _1061.x, _1059.y ? _825.y : _1061.y, _1059.z ? _825.z : _1061.z);
        _837 = float3(_1060.x ? 0.0f.xxx.x : _1062.x, _1060.y ? 0.0f.xxx.y : _1062.y, _1060.z ? 0.0f.xxx.z : _1062.z);
    }
    else
    {
        _837 = 0.0f.xxx;
    }
    float3 _840 = _837 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _853 = ((((((_646 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _595) + ((_646 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _595) + ((_646 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _595;
    bool3 _1064 = isnan(_761);
    bool3 _1065 = isnan(_853);
    float3 _1066 = max(_761, _853);
    float3 _1067 = float3(_1064.x ? _853.x : _1066.x, _1064.y ? _853.y : _1066.y, _1064.z ? _853.z : _1066.z);
    bool3 _1069 = isnan(_494);
    bool3 _1070 = isnan(0.0f.xxx);
    float3 _1071 = max(_494, 0.0f.xxx);
    float3 _1072 = float3(_1069.x ? 0.0f.xxx.x : _1071.x, _1069.y ? 0.0f.xxx.y : _1071.y, _1069.z ? 0.0f.xxx.z : _1071.z);
    float3 _861 = float3(_1070.x ? _494.x : _1072.x, _1070.y ? _494.y : _1072.y, _1070.z ? _494.z : _1072.z);
    float3 _941 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _887 = _596 + 31u;
        float3 _896 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_596 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_587 - asfloat(View_PrimitiveSceneData.Load4((_596 + 18u) * 16 + 0)).xyz));
        float3 _897 = float3(asfloat(View_PrimitiveSceneData.Load4((_596 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_596 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_596 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _940 = 0.0f.xxx;
        if (any(bool3(_896.x > _897.x, _896.y > _897.y, _896.z > _897.z)))
        {
            float3 _920 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _921 = _587 * 0.57700002193450927734375f.xxx;
            float3 _936 = frac(mad((_921.x + _921.y) + _921.z, 0.00200000009499490261077880859375f, frac(((_920.x + _920.y) + _920.z) * 4194.30419921875f))).xxx;
            _940 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_936.x > 0.5f.xxx.x, _936.y > 0.5f.xxx.y, _936.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _919 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_887 * 16 + 0)).x > 0.0f)
            {
                float3 _907 = abs(_280 - in_var_TEXCOORD9);
                float _908 = _907.x;
                float _909 = _907.y;
                float _910 = _907.z;
                float _911 = isnan(_910) ? _909 : (isnan(_909) ? _910 : max(_909, _910));
                _919 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_911) ? _908 : (isnan(_908) ? _911 : max(_908, _911))) - asfloat(View_PrimitiveSceneData.Load4(_887 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _919 = _861;
            }
            _940 = _919;
        }
        _941 = _940;
    }
    else
    {
        _941 = _861;
    }
    float4 _948 = float4((mad(_840 * _750, float3(_1065.x ? _761.x : _1067.x, _1065.y ? _761.y : _1067.y, _1065.z ? _761.z : _1067.z), lerp(0.0f.xxx, _750 + (_752 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _941) * 1.0f, 0.0f);
    float4 _955 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _954 = _948;
        _954.w = 0.0f;
        _955 = _954;
    }
    else
    {
        _955 = _948;
    }
    float2 _959 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _974 = (_647 * 0.5f) + 0.5f.xxx;
    float4 _976 = 0.0f.xxxx;
    _976.x = _974.x;
    _976.y = _974.y;
    _976.z = _974.z;
    _976.w = mad(2.0f, float((_650 & 256u) != 0u), float((_650 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _983 = 0.0f.xxxx;
    _983.x = _646.x;
    _983.y = _646.y;
    _983.z = _646.z;
    _983.w = mad(frac(dot(_959.xyx * _959.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_840, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1052.x ? _761.x : _1054.x, _1052.y ? _761.y : _1054.y, _1052.z ? _761.z : _1054.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _989 = 0.0f.xxxx;
    _989.x = _722;
    _989.y = 1.0f;
    _989.z = 1.0f;
    _989.w = 1.0f;
    float4 _994 = _955 * View_View_PreExposure;
    float3 _995 = _994.xyz;
    bool3 _1088 = isnan(_995);
    bool3 _1089 = isnan(32256.0f.xxx);
    float3 _1090 = min(_995, 32256.0f.xxx);
    float3 _1091 = float3(_1088.x ? 32256.0f.xxx.x : _1090.x, _1088.y ? 32256.0f.xxx.y : _1090.y, _1088.z ? 32256.0f.xxx.z : _1090.z);
    float3 _996 = float3(_1089.x ? _995.x : _1091.x, _1089.y ? _995.y : _1091.y, _1089.z ? _995.z : _1091.z);
    out_var_SV_Target0 = float4(_996.x, _996.y, _996.z, _994.w);
    out_var_SV_Target1 = _976;
    out_var_SV_Target2 = float4(_645, _644, _643, 0.56862747669219970703125f);
    out_var_SV_Target3 = _983;
    out_var_SV_Target5 = _989;
    gl_FragDepth = _581;
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
