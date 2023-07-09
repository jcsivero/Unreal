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
    float4 _241 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _245 = mad(float2(_241.zw), 2.0f.xx, (-1.0f).xx);
    float _247 = 1.0f - dot(_245, _245);
    float _249 = sqrt(isnan(0.0f) ? _247 : (isnan(_247) ? 0.0f : max(_247, 0.0f)));
    float _250 = _245.x;
    float3 _252 = float3(_250, _245.y, _249);
    float3 _255 = normalize(float3(_249, 0.0f, -_250));
    float4 _271 = float4(_197, _197, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _275 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _279 = _275.xyz / _275.w.xxx;
    float3 _289 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _289 = -View_View_ViewForward;
    }
    else
    {
        _289 = normalize(-_279);
    }
    float2 _290 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _294 = _290 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _300 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _294, View_View_MaterialTextureMipBias);
    float2 _304 = _290 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _306 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _304, View_View_MaterialTextureMipBias);
    float4 _313 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _318 = lerp(-1.0f, 1.0f, dot(_313, Material_Material_PreshaderBuffer[2])) + lerp(_300.z, _306.z, 0.5f);
    float _319 = isnan(9.9999997473787516355514526367188e-05f) ? _318 : (isnan(_318) ? 9.9999997473787516355514526367188e-05f : max(_318, 9.9999997473787516355514526367188e-05f));
    float _320 = isnan(1.0f) ? _319 : (isnan(_319) ? 1.0f : min(_319, 1.0f));
    float4 _324 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _294, View_View_MaterialTextureMipBias);
    float4 _326 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _304, View_View_MaterialTextureMipBias);
    float _334 = lerp(-1.0f, 1.0f, dot(_313, Material_Material_PreshaderBuffer[3])) + lerp(_324.z, _326.z, 0.5f);
    float _335 = isnan(9.9999997473787516355514526367188e-05f) ? _334 : (isnan(_334) ? 9.9999997473787516355514526367188e-05f : max(_334, 9.9999997473787516355514526367188e-05f));
    float _336 = isnan(1.0f) ? _335 : (isnan(_335) ? 1.0f : min(_335, 1.0f));
    float4 _341 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _294, View_View_MaterialTextureMipBias);
    float4 _343 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _304, View_View_MaterialTextureMipBias);
    float _351 = lerp(-1.0f, 1.0f, dot(_313, Material_Material_PreshaderBuffer[4])) + lerp(_341.z, _343.z, 0.5f);
    float _352 = isnan(9.9999997473787516355514526367188e-05f) ? _351 : (isnan(_351) ? 9.9999997473787516355514526367188e-05f : max(_351, 9.9999997473787516355514526367188e-05f));
    float _353 = isnan(1.0f) ? _352 : (isnan(_352) ? 1.0f : min(_352, 1.0f));
    float _355 = 1.0f / ((_320 + _336) + _353);
    float2 _361 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _372 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _294, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _383 = _355 * _320;
    float3 _384 = _383.xxx;
    float2 _390 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _401 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _294, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _412 = _355 * _336;
    float3 _413 = _412.xxx;
    float2 _421 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _432 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _294, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _443 = _355 * _353;
    float3 _444 = _443.xxx;
    float _448 = dot(_313, Material_Material_PreshaderBuffer[5]);
    float2 _454 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _304, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _465 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _294, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _476 = _448.xxx;
    float3 _480 = lerp(mad(lerp(float4(_421, sqrt(clamp(1.0f - dot(_421, _421), 0.0f, 1.0f)), 1.0f).xyz, float4(_432, sqrt(clamp(1.0f - dot(_432, _432), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _444, mad(lerp(float4(_361, sqrt(clamp(1.0f - dot(_361, _361), 0.0f, 1.0f)), 1.0f).xyz, float4(_372, sqrt(clamp(1.0f - dot(_372, _372), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _384, lerp(float4(_390, sqrt(clamp(1.0f - dot(_390, _390), 0.0f, 1.0f)), 1.0f).xyz, float4(_401, sqrt(clamp(1.0f - dot(_401, _401), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _413)), lerp(float4(_454, sqrt(clamp(1.0f - dot(_454, _454), 0.0f, 1.0f)), 1.0f).xyz, float4(_465, sqrt(clamp(1.0f - dot(_465, _465), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _476) * View_View_NormalOverrideParameter.w;
    float3 _485 = normalize(mul(normalize(_480 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_255, cross(_252, _255), _252), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _493 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _476), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _527 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _304, View_View_MaterialTextureMipBias);
    float4 _529 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _294, View_View_MaterialTextureMipBias);
    float _534 = lerp(0.0f, 0.0f, _448);
    float4 _556 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _304, View_View_MaterialTextureMipBias);
    float4 _558 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _294, View_View_MaterialTextureMipBias);
    float _579 = _271.z;
    float _580 = _271.w;
    float _582 = _579 / (_580 + _534);
    float _583 = isnan(gl_FragCoord.z) ? _582 : (isnan(_582) ? gl_FragCoord.z : min(_582, gl_FragCoord.z));
    float3 _589 = (_279 - View_View_RelativePreViewTranslation) + ((-_289) * (mad(-_583, _580, _579) / _583));
    float3 _590 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _304, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _294, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _444, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _304, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _294, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _384, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _304, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _294, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _413)), lerp(_527.xyz, _529.xyz, 0.5f.xxx), _476), 0.0f.xxx, 1.0f.xxx);
    float _591 = clamp(_534, 0.0f, 1.0f);
    float _592 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _443, mad(Material_Material_PreshaderBuffer[7].x, _383, Material_Material_PreshaderBuffer[7].x * _412)), Material_Material_PreshaderBuffer[7].x, _448), 0.0f, 1.0f);
    float _596 = mad(clamp(lerp(mad(lerp(_343.y, _341.y, 0.5f), _443, mad(lerp(_306.y, _300.y, 0.5f), _383, lerp(_326.y, _324.y, 0.5f) * _412)), lerp(_556.y, _558.y, 0.5f), _448), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _597 = clamp(lerp(mad(lerp(_343.x, _341.x, 0.5f), _443, mad(lerp(_306.x, _300.x, 0.5f), _383, lerp(_326.x, _324.x, 0.5f) * _412)), lerp(_556.x, _558.x, 0.5f), _448), 0.0f, 1.0f);
    uint _598 = in_var_PRIMITIVE_ID * 41u;
    float _645 = 0.0f;
    float _646 = 0.0f;
    float _647 = 0.0f;
    float3 _648 = 0.0f.xxx;
    float3 _649 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_598 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _614 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _618 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _614, 0.0f);
        float4 _622 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _614, 0.0f);
        float4 _626 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _614, 0.0f);
        float _636 = _626.w;
        _645 = mad(_596, _636, _626.z);
        _646 = mad(_592, _636, _626.y);
        _647 = mad(_591, _636, _626.x);
        _648 = (_590 * _618.w) + _618.xyz;
        _649 = normalize((_485 * _622.w) + ((_622.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _645 = _596;
        _646 = _592;
        _647 = _591;
        _648 = _590;
        _649 = _485;
    }
    uint _652 = asuint(asfloat(View_PrimitiveSceneData.Load4(_598 * 16 + 0)).x);
    bool _668 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _674 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_598 * 16 + 0)).x) & 2u) != 0u) && _668)
    {
        _674 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _674 = 1.0f;
    }
    float _724 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_598 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _692 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _589, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _703 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_692.x), int(_692.y), int(_692.z), 0).xyz, 0)));
        _724 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_703.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_692 / _703.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _724 = _674;
    }
    float3 _737 = ((_648 - (_648 * _647)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _744 = (lerp((0.07999999821186065673828125f * _646).xxx, _648, _647.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _747 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _752 = 0.0f.xxx;
    if (_747)
    {
        _752 = _737 + (_744 * 0.449999988079071044921875f);
    }
    else
    {
        _752 = _737;
    }
    bool3 _753 = _747.xxx;
    float3 _754 = float3(_753.x ? 0.0f.xxx.x : _744.x, _753.y ? 0.0f.xxx.y : _744.y, _753.z ? 0.0f.xxx.z : _744.z);
    float3 _756 = dot(_754, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _763 = _597.xxx;
    float3 _768 = ((((((_756 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _597) + ((_756 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _597) + ((_756 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _597;
    bool3 _1045 = isnan(_763);
    bool3 _1046 = isnan(_768);
    float3 _1047 = max(_763, _768);
    float3 _1048 = float3(_1045.x ? _768.x : _1047.x, _1045.y ? _768.y : _1047.y, _1045.z ? _768.z : _1047.z);
    float3 _832 = 0.0f.xxx;
    if (_668)
    {
        float3 _784 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _589, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _788 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _784);
        float4 _792 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _784);
        float4 _795 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _784);
        float4 _813 = 0.0f.xxxx;
        _813.y = (-0.48860299587249755859375f) * _649.y;
        _813.z = 0.48860299587249755859375f * _649.z;
        _813.w = (-0.48860299587249755859375f) * _649.x;
        _813.x = 0.886227548122406005859375f;
        float3 _822 = _813.yzw * 2.094395160675048828125f;
        float4 _823 = float4(_813.x, _822.x, _822.y, _822.z);
        float3 _825 = 0.0f.xxx;
        _825.x = dot(float4(_788.x, _792.x, _795.x, _788.w), _823);
        _825.y = dot(float4(_788.y, _792.y, _795.y, _792.w), _823);
        _825.z = dot(float4(_788.z, _792.z, _795.zw), _823);
        bool3 _1052 = isnan(0.0f.xxx);
        bool3 _1053 = isnan(_825);
        float3 _1054 = max(0.0f.xxx, _825);
        float3 _1055 = float3(_1052.x ? _825.x : _1054.x, _1052.y ? _825.y : _1054.y, _1052.z ? _825.z : _1054.z);
        _832 = float3(_1053.x ? 0.0f.xxx.x : _1055.x, _1053.y ? 0.0f.xxx.y : _1055.y, _1053.z ? 0.0f.xxx.z : _1055.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _832 = 0.0f.xxx;
    }
    float3 _835 = _832 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _848 = ((((((_648 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _597) + ((_648 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _597) + ((_648 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _597;
    bool3 _1057 = isnan(_763);
    bool3 _1058 = isnan(_848);
    float3 _1059 = max(_763, _848);
    float3 _1060 = float3(_1057.x ? _848.x : _1059.x, _1057.y ? _848.y : _1059.y, _1057.z ? _848.z : _1059.z);
    bool3 _1062 = isnan(_493);
    bool3 _1063 = isnan(0.0f.xxx);
    float3 _1064 = max(_493, 0.0f.xxx);
    float3 _1065 = float3(_1062.x ? 0.0f.xxx.x : _1064.x, _1062.y ? 0.0f.xxx.y : _1064.y, _1062.z ? 0.0f.xxx.z : _1064.z);
    float3 _856 = float3(_1063.x ? _493.x : _1065.x, _1063.y ? _493.y : _1065.y, _1063.z ? _493.z : _1065.z);
    float3 _936 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _882 = _598 + 31u;
        float3 _891 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_598 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_589 - asfloat(View_PrimitiveSceneData.Load4((_598 + 18u) * 16 + 0)).xyz));
        float3 _892 = float3(asfloat(View_PrimitiveSceneData.Load4((_598 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_598 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_598 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _935 = 0.0f.xxx;
        if (any(bool3(_891.x > _892.x, _891.y > _892.y, _891.z > _892.z)))
        {
            float3 _915 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _916 = _589 * 0.57700002193450927734375f.xxx;
            float3 _931 = frac(mad((_916.x + _916.y) + _916.z, 0.00200000009499490261077880859375f, frac(((_915.x + _915.y) + _915.z) * 4194.30419921875f))).xxx;
            _935 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_931.x > 0.5f.xxx.x, _931.y > 0.5f.xxx.y, _931.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _914 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_882 * 16 + 0)).x > 0.0f)
            {
                float3 _902 = abs(_279 - in_var_TEXCOORD9);
                float _903 = _902.x;
                float _904 = _902.y;
                float _905 = _902.z;
                float _906 = isnan(_905) ? _904 : (isnan(_904) ? _905 : max(_904, _905));
                _914 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_906) ? _903 : (isnan(_903) ? _906 : max(_903, _906))) - asfloat(View_PrimitiveSceneData.Load4(_882 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _914 = _856;
            }
            _935 = _914;
        }
        _936 = _935;
    }
    else
    {
        _936 = _856;
    }
    float4 _943 = float4((mad(_835 * _752, float3(_1058.x ? _763.x : _1060.x, _1058.y ? _763.y : _1060.y, _1058.z ? _763.z : _1060.z), lerp(0.0f.xxx, _752 + (_754 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _936) * 1.0f, 0.0f);
    float4 _950 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _949 = _943;
        _949.w = 0.0f;
        _950 = _949;
    }
    else
    {
        _950 = _943;
    }
    float2 _954 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _969 = (_649 * 0.5f) + 0.5f.xxx;
    float4 _971 = 0.0f.xxxx;
    _971.x = _969.x;
    _971.y = _969.y;
    _971.z = _969.z;
    _971.w = mad(2.0f, float((_652 & 256u) != 0u), float((_652 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _978 = 0.0f.xxxx;
    _978.x = _648.x;
    _978.y = _648.y;
    _978.z = _648.z;
    _978.w = mad(frac(dot(_954.xyx * _954.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_835, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1046.x ? _763.x : _1048.x, _1046.y ? _763.y : _1048.y, _1046.z ? _763.z : _1048.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _984 = 0.0f.xxxx;
    _984.x = _724;
    _984.y = 1.0f;
    _984.z = 1.0f;
    _984.w = 1.0f;
    float4 _989 = _950 * View_View_PreExposure;
    float3 _990 = _989.xyz;
    bool3 _1081 = isnan(_990);
    bool3 _1082 = isnan(32256.0f.xxx);
    float3 _1083 = min(_990, 32256.0f.xxx);
    float3 _1084 = float3(_1081.x ? 32256.0f.xxx.x : _1083.x, _1081.y ? 32256.0f.xxx.y : _1083.y, _1081.z ? 32256.0f.xxx.z : _1083.z);
    float3 _991 = float3(_1082.x ? _990.x : _1084.x, _1082.y ? _990.y : _1084.y, _1082.z ? _990.z : _1084.z);
    out_var_SV_Target0 = float4(_991.x, _991.y, _991.z, _989.w);
    out_var_SV_Target1 = _971;
    out_var_SV_Target2 = float4(_647, _646, _645, 0.56862747669219970703125f);
    out_var_SV_Target3 = _978;
    out_var_SV_Target5 = _984;
    gl_FragDepth = _583;
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
