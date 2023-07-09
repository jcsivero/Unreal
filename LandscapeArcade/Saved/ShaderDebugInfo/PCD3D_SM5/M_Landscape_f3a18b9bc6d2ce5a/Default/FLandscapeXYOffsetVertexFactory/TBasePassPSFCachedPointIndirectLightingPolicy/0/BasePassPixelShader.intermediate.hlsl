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
    float4 _243 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _247 = mad(float2(_243.zw), 2.0f.xx, (-1.0f).xx);
    float _249 = 1.0f - dot(_247, _247);
    float _251 = sqrt(isnan(0.0f) ? _249 : (isnan(_249) ? 0.0f : max(_249, 0.0f)));
    float _252 = _247.x;
    float3 _254 = float3(_252, _247.y, _251);
    float3 _257 = normalize(float3(_251, 0.0f, -_252));
    float4 _273 = float4(_199, _199, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _277 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _281 = _277.xyz / _277.w.xxx;
    float3 _291 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _291 = -View_View_ViewForward;
    }
    else
    {
        _291 = normalize(-_281);
    }
    float2 _292 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _296 = _292 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _302 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _296, View_View_MaterialTextureMipBias);
    float2 _306 = _292 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _308 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _306, View_View_MaterialTextureMipBias);
    float4 _315 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _320 = lerp(-1.0f, 1.0f, dot(_315, Material_Material_PreshaderBuffer[2])) + lerp(_302.z, _308.z, 0.5f);
    float _321 = isnan(9.9999997473787516355514526367188e-05f) ? _320 : (isnan(_320) ? 9.9999997473787516355514526367188e-05f : max(_320, 9.9999997473787516355514526367188e-05f));
    float _322 = isnan(1.0f) ? _321 : (isnan(_321) ? 1.0f : min(_321, 1.0f));
    float4 _326 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _296, View_View_MaterialTextureMipBias);
    float4 _328 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _306, View_View_MaterialTextureMipBias);
    float _336 = lerp(-1.0f, 1.0f, dot(_315, Material_Material_PreshaderBuffer[3])) + lerp(_326.z, _328.z, 0.5f);
    float _337 = isnan(9.9999997473787516355514526367188e-05f) ? _336 : (isnan(_336) ? 9.9999997473787516355514526367188e-05f : max(_336, 9.9999997473787516355514526367188e-05f));
    float _338 = isnan(1.0f) ? _337 : (isnan(_337) ? 1.0f : min(_337, 1.0f));
    float4 _343 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _296, View_View_MaterialTextureMipBias);
    float4 _345 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _306, View_View_MaterialTextureMipBias);
    float _353 = lerp(-1.0f, 1.0f, dot(_315, Material_Material_PreshaderBuffer[4])) + lerp(_343.z, _345.z, 0.5f);
    float _354 = isnan(9.9999997473787516355514526367188e-05f) ? _353 : (isnan(_353) ? 9.9999997473787516355514526367188e-05f : max(_353, 9.9999997473787516355514526367188e-05f));
    float _355 = isnan(1.0f) ? _354 : (isnan(_354) ? 1.0f : min(_354, 1.0f));
    float _357 = 1.0f / ((_322 + _338) + _355);
    float2 _363 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _374 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _296, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _385 = _357 * _322;
    float3 _386 = _385.xxx;
    float2 _392 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _403 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _296, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _414 = _357 * _338;
    float3 _415 = _414.xxx;
    float2 _423 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _434 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _296, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _445 = _357 * _355;
    float3 _446 = _445.xxx;
    float _450 = dot(_315, Material_Material_PreshaderBuffer[5]);
    float2 _456 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _467 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _296, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _478 = _450.xxx;
    float3 _482 = lerp(mad(lerp(float4(_423, sqrt(clamp(1.0f - dot(_423, _423), 0.0f, 1.0f)), 1.0f).xyz, float4(_434, sqrt(clamp(1.0f - dot(_434, _434), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _446, mad(lerp(float4(_363, sqrt(clamp(1.0f - dot(_363, _363), 0.0f, 1.0f)), 1.0f).xyz, float4(_374, sqrt(clamp(1.0f - dot(_374, _374), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _386, lerp(float4(_392, sqrt(clamp(1.0f - dot(_392, _392), 0.0f, 1.0f)), 1.0f).xyz, float4(_403, sqrt(clamp(1.0f - dot(_403, _403), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _415)), lerp(float4(_456, sqrt(clamp(1.0f - dot(_456, _456), 0.0f, 1.0f)), 1.0f).xyz, float4(_467, sqrt(clamp(1.0f - dot(_467, _467), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _478) * View_View_NormalOverrideParameter.w;
    float3 _487 = normalize(mul(normalize(_482 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_257, cross(_254, _257), _254), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _495 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _478), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _529 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _306, View_View_MaterialTextureMipBias);
    float4 _531 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _296, View_View_MaterialTextureMipBias);
    float _536 = lerp(0.0f, 0.0f, _450);
    float4 _558 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _306, View_View_MaterialTextureMipBias);
    float4 _560 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _296, View_View_MaterialTextureMipBias);
    float _581 = _273.z;
    float _582 = _273.w;
    float _584 = _581 / (_582 + _536);
    float _585 = isnan(gl_FragCoord.z) ? _584 : (isnan(_584) ? gl_FragCoord.z : min(_584, gl_FragCoord.z));
    float3 _591 = (_281 - View_View_RelativePreViewTranslation) + ((-_291) * (mad(-_585, _582, _581) / _585));
    float3 _592 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _306, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _296, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _446, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _306, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _296, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _386, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _306, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _296, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _415)), lerp(_529.xyz, _531.xyz, 0.5f.xxx), _478), 0.0f.xxx, 1.0f.xxx);
    float _593 = clamp(_536, 0.0f, 1.0f);
    float _594 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _445, mad(Material_Material_PreshaderBuffer[7].x, _385, Material_Material_PreshaderBuffer[7].x * _414)), Material_Material_PreshaderBuffer[7].x, _450), 0.0f, 1.0f);
    float _598 = mad(clamp(lerp(mad(lerp(_345.y, _343.y, 0.5f), _445, mad(lerp(_308.y, _302.y, 0.5f), _385, lerp(_328.y, _326.y, 0.5f) * _414)), lerp(_558.y, _560.y, 0.5f), _450), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _599 = clamp(lerp(mad(lerp(_345.x, _343.x, 0.5f), _445, mad(lerp(_308.x, _302.x, 0.5f), _385, lerp(_328.x, _326.x, 0.5f) * _414)), lerp(_558.x, _560.x, 0.5f), _450), 0.0f, 1.0f);
    uint _600 = in_var_PRIMITIVE_ID * 41u;
    float _647 = 0.0f;
    float _648 = 0.0f;
    float _649 = 0.0f;
    float3 _650 = 0.0f.xxx;
    float3 _651 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_600 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _616 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _620 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _616, 0.0f);
        float4 _624 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _616, 0.0f);
        float4 _628 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _616, 0.0f);
        float _638 = _628.w;
        _647 = mad(_598, _638, _628.z);
        _648 = mad(_594, _638, _628.y);
        _649 = mad(_593, _638, _628.x);
        _650 = (_592 * _620.w) + _620.xyz;
        _651 = normalize((_487 * _624.w) + ((_624.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _647 = _598;
        _648 = _594;
        _649 = _593;
        _650 = _592;
        _651 = _487;
    }
    uint _654 = asuint(asfloat(View_PrimitiveSceneData.Load4(_600 * 16 + 0)).x);
    bool _670 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _676 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_600 * 16 + 0)).x) & 2u) != 0u) && _670)
    {
        _676 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _676 = 1.0f;
    }
    float _726 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_600 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _694 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _591, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _705 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_694.x), int(_694.y), int(_694.z), 0).xyz, 0)));
        _726 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_705.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_694 / _705.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _726 = _676;
    }
    float3 _739 = ((_650 - (_650 * _649)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _746 = (lerp((0.07999999821186065673828125f * _648).xxx, _650, _649.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _749 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _754 = 0.0f.xxx;
    if (_749)
    {
        _754 = _739 + (_746 * 0.449999988079071044921875f);
    }
    else
    {
        _754 = _739;
    }
    bool3 _755 = _749.xxx;
    float3 _756 = float3(_755.x ? 0.0f.xxx.x : _746.x, _755.y ? 0.0f.xxx.y : _746.y, _755.z ? 0.0f.xxx.z : _746.z);
    float3 _758 = dot(_756, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _765 = _599.xxx;
    float3 _770 = ((((((_758 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _599) + ((_758 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _599) + ((_758 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _599;
    bool3 _1055 = isnan(_765);
    bool3 _1056 = isnan(_770);
    float3 _1057 = max(_765, _770);
    float3 _1058 = float3(_1055.x ? _770.x : _1057.x, _1055.y ? _770.y : _1057.y, _1055.z ? _770.z : _1057.z);
    float3 _841 = 0.0f.xxx;
    if (_670)
    {
        float4 _795 = 0.0f.xxxx;
        _795.y = (-0.48860299587249755859375f) * _651.y;
        _795.z = 0.48860299587249755859375f * _651.z;
        _795.w = (-0.48860299587249755859375f) * _651.x;
        float3 _802 = _651 * _651;
        float4 _805 = 0.0f.xxxx;
        _805.x = (1.09254801273345947265625f * _651.x) * _651.y;
        _805.y = ((-1.09254801273345947265625f) * _651.y) * _651.z;
        _805.z = 0.3153919875621795654296875f * mad(3.0f, _802.z, -1.0f);
        _805.w = ((-1.09254801273345947265625f) * _651.x) * _651.z;
        _795.x = 0.886227548122406005859375f;
        float3 _821 = _795.yzw * 2.094395160675048828125f;
        float4 _822 = float4(_795.x, _821.x, _821.y, _821.z);
        float4 _823 = _805 * 0.785398185253143310546875f;
        float _824 = (_802.x - _802.y) * 0.4290426075458526611328125f;
        float3 _829 = 0.0f.xxx;
        _829.x = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.x, _824, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[0], _822) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[0], _823));
        _829.y = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.y, _824, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[1], _822) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[1], _823));
        _829.z = mad(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients2.z, _824, dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients0[2], _822) + dot(IndirectLightingCache_IndirectLightingCache_IndirectLightingSHCoefficients1[2], _823));
        bool3 _1063 = isnan(0.0f.xxx);
        bool3 _1064 = isnan(_829);
        float3 _1065 = max(0.0f.xxx, _829);
        float3 _1066 = float3(_1063.x ? _829.x : _1065.x, _1063.y ? _829.y : _1065.y, _1063.z ? _829.z : _1065.z);
        _841 = float3(_1064.x ? 0.0f.xxx.x : _1066.x, _1064.y ? 0.0f.xxx.y : _1066.y, _1064.z ? 0.0f.xxx.z : _1066.z);
    }
    else
    {
        _841 = 0.0f.xxx;
    }
    float3 _844 = _841 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _857 = ((((((_650 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _599) + ((_650 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _599) + ((_650 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _599;
    bool3 _1068 = isnan(_765);
    bool3 _1069 = isnan(_857);
    float3 _1070 = max(_765, _857);
    float3 _1071 = float3(_1068.x ? _857.x : _1070.x, _1068.y ? _857.y : _1070.y, _1068.z ? _857.z : _1070.z);
    bool3 _1073 = isnan(_495);
    bool3 _1074 = isnan(0.0f.xxx);
    float3 _1075 = max(_495, 0.0f.xxx);
    float3 _1076 = float3(_1073.x ? 0.0f.xxx.x : _1075.x, _1073.y ? 0.0f.xxx.y : _1075.y, _1073.z ? 0.0f.xxx.z : _1075.z);
    float3 _865 = float3(_1074.x ? _495.x : _1076.x, _1074.y ? _495.y : _1076.y, _1074.z ? _495.z : _1076.z);
    float3 _945 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _891 = _600 + 31u;
        float3 _900 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_600 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_591 - asfloat(View_PrimitiveSceneData.Load4((_600 + 18u) * 16 + 0)).xyz));
        float3 _901 = float3(asfloat(View_PrimitiveSceneData.Load4((_600 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_600 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_600 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _944 = 0.0f.xxx;
        if (any(bool3(_900.x > _901.x, _900.y > _901.y, _900.z > _901.z)))
        {
            float3 _924 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _925 = _591 * 0.57700002193450927734375f.xxx;
            float3 _940 = frac(mad((_925.x + _925.y) + _925.z, 0.00200000009499490261077880859375f, frac(((_924.x + _924.y) + _924.z) * 4194.30419921875f))).xxx;
            _944 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_940.x > 0.5f.xxx.x, _940.y > 0.5f.xxx.y, _940.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _923 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_891 * 16 + 0)).x > 0.0f)
            {
                float3 _911 = abs(_281 - in_var_TEXCOORD9);
                float _912 = _911.x;
                float _913 = _911.y;
                float _914 = _911.z;
                float _915 = isnan(_914) ? _913 : (isnan(_913) ? _914 : max(_913, _914));
                _923 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_915) ? _912 : (isnan(_912) ? _915 : max(_912, _915))) - asfloat(View_PrimitiveSceneData.Load4(_891 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _923 = _865;
            }
            _944 = _923;
        }
        _945 = _944;
    }
    else
    {
        _945 = _865;
    }
    float4 _952 = float4((mad(_844 * _754, float3(_1069.x ? _765.x : _1071.x, _1069.y ? _765.y : _1071.y, _1069.z ? _765.z : _1071.z), lerp(0.0f.xxx, _754 + (_756 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _945) * 1.0f, 0.0f);
    float4 _959 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _958 = _952;
        _958.w = 0.0f;
        _959 = _958;
    }
    else
    {
        _959 = _952;
    }
    float2 _963 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _978 = (_651 * 0.5f) + 0.5f.xxx;
    float4 _980 = 0.0f.xxxx;
    _980.x = _978.x;
    _980.y = _978.y;
    _980.z = _978.z;
    _980.w = mad(2.0f, float((_654 & 256u) != 0u), float((_654 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _987 = 0.0f.xxxx;
    _987.x = _650.x;
    _987.y = _650.y;
    _987.z = _650.z;
    _987.w = mad(frac(dot(_963.xyx * _963.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_844, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1056.x ? _765.x : _1058.x, _1056.y ? _765.y : _1058.y, _1056.z ? _765.z : _1058.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _993 = 0.0f.xxxx;
    _993.x = _726;
    _993.y = 1.0f;
    _993.z = 1.0f;
    _993.w = 1.0f;
    float4 _998 = _959 * View_View_PreExposure;
    float3 _999 = _998.xyz;
    bool3 _1092 = isnan(_999);
    bool3 _1093 = isnan(32256.0f.xxx);
    float3 _1094 = min(_999, 32256.0f.xxx);
    float3 _1095 = float3(_1092.x ? 32256.0f.xxx.x : _1094.x, _1092.y ? 32256.0f.xxx.y : _1094.y, _1092.z ? 32256.0f.xxx.z : _1094.z);
    float3 _1000 = float3(_1093.x ? _999.x : _1095.x, _1093.y ? _999.y : _1095.y, _1093.z ? _999.z : _1095.z);
    out_var_SV_Target0 = float4(_1000.x, _1000.y, _1000.z, _998.w);
    out_var_SV_Target1 = _980;
    out_var_SV_Target2 = float4(_649, _648, _647, 0.56862747669219970703125f);
    out_var_SV_Target3 = _987;
    out_var_SV_Target5 = _993;
    gl_FragDepth = _585;
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
