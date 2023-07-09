#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _206 = 0.0f.xxxx;
static float _209 = 0.0f;
static float4 _210 = 0.0f.xxxx;

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
};

ByteAddressBuffer View_PrimitiveSceneData;
cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[7] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_VolumetricLightmapBrickAmbientVector;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients0;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients1;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients2;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients3;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients4;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients5;
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
    float4 _252 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _256 = mad(float2(_252.zw), 2.0f.xx, (-1.0f).xx);
    float _258 = 1.0f - dot(_256, _256);
    float _260 = sqrt(isnan(0.0f) ? _258 : (isnan(_258) ? 0.0f : max(_258, 0.0f)));
    float _261 = _256.x;
    float3 _263 = float3(_261, _256.y, _260);
    float3 _266 = normalize(float3(_260, 0.0f, -_261));
    float4 _282 = float4(_209, _209, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _286 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _290 = _286.xyz / _286.w.xxx;
    float3 _300 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _300 = -View_View_ViewForward;
    }
    else
    {
        _300 = normalize(-_290);
    }
    float2 _301 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _305 = _301 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _311 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _305, View_View_MaterialTextureMipBias);
    float2 _315 = _301 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _317 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _315, View_View_MaterialTextureMipBias);
    float4 _324 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _329 = lerp(-1.0f, 1.0f, dot(_324, Material_Material_PreshaderBuffer[2])) + lerp(_311.z, _317.z, 0.5f);
    float _330 = isnan(9.9999997473787516355514526367188e-05f) ? _329 : (isnan(_329) ? 9.9999997473787516355514526367188e-05f : max(_329, 9.9999997473787516355514526367188e-05f));
    float _331 = isnan(1.0f) ? _330 : (isnan(_330) ? 1.0f : min(_330, 1.0f));
    float4 _335 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _305, View_View_MaterialTextureMipBias);
    float4 _337 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _315, View_View_MaterialTextureMipBias);
    float _345 = lerp(-1.0f, 1.0f, dot(_324, Material_Material_PreshaderBuffer[3])) + lerp(_335.z, _337.z, 0.5f);
    float _346 = isnan(9.9999997473787516355514526367188e-05f) ? _345 : (isnan(_345) ? 9.9999997473787516355514526367188e-05f : max(_345, 9.9999997473787516355514526367188e-05f));
    float _347 = isnan(1.0f) ? _346 : (isnan(_346) ? 1.0f : min(_346, 1.0f));
    float4 _352 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _305, View_View_MaterialTextureMipBias);
    float4 _354 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _315, View_View_MaterialTextureMipBias);
    float _362 = lerp(-1.0f, 1.0f, dot(_324, Material_Material_PreshaderBuffer[4])) + lerp(_352.z, _354.z, 0.5f);
    float _363 = isnan(9.9999997473787516355514526367188e-05f) ? _362 : (isnan(_362) ? 9.9999997473787516355514526367188e-05f : max(_362, 9.9999997473787516355514526367188e-05f));
    float _364 = isnan(1.0f) ? _363 : (isnan(_363) ? 1.0f : min(_363, 1.0f));
    float _366 = 1.0f / ((_331 + _347) + _364);
    float2 _372 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _383 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _394 = _366 * _331;
    float3 _395 = _394.xxx;
    float2 _401 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _412 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _423 = _366 * _347;
    float3 _424 = _423.xxx;
    float2 _432 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _443 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _454 = _366 * _364;
    float3 _455 = _454.xxx;
    float _459 = dot(_324, Material_Material_PreshaderBuffer[5]);
    float2 _465 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _476 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _487 = _459.xxx;
    float3 _491 = lerp(mad(lerp(float4(_432, sqrt(clamp(1.0f - dot(_432, _432), 0.0f, 1.0f)), 1.0f).xyz, float4(_443, sqrt(clamp(1.0f - dot(_443, _443), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _455, mad(lerp(float4(_372, sqrt(clamp(1.0f - dot(_372, _372), 0.0f, 1.0f)), 1.0f).xyz, float4(_383, sqrt(clamp(1.0f - dot(_383, _383), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _395, lerp(float4(_401, sqrt(clamp(1.0f - dot(_401, _401), 0.0f, 1.0f)), 1.0f).xyz, float4(_412, sqrt(clamp(1.0f - dot(_412, _412), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _424)), lerp(float4(_465, sqrt(clamp(1.0f - dot(_465, _465), 0.0f, 1.0f)), 1.0f).xyz, float4(_476, sqrt(clamp(1.0f - dot(_476, _476), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _487) * View_View_NormalOverrideParameter.w;
    float3 _496 = normalize(mul(normalize(_491 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_266, cross(_263, _266), _263), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _504 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _487), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _538 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _315, View_View_MaterialTextureMipBias);
    float4 _540 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _305, View_View_MaterialTextureMipBias);
    float _545 = lerp(0.0f, 0.0f, _459);
    float4 _564 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _315, View_View_MaterialTextureMipBias);
    float4 _566 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _305, View_View_MaterialTextureMipBias);
    float _587 = _282.z;
    float _588 = _282.w;
    float _590 = _587 / (_588 + _545);
    float _591 = isnan(gl_FragCoord.z) ? _590 : (isnan(_590) ? gl_FragCoord.z : min(_590, gl_FragCoord.z));
    float3 _597 = (_290 - View_View_RelativePreViewTranslation) + ((-_300) * (mad(-_591, _588, _587) / _591));
    float3 _598 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _315, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _305, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _455, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _315, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _305, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _395, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _315, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _305, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _424)), lerp(_538.xyz, _540.xyz, 0.5f.xxx), _487), 0.0f.xxx, 1.0f.xxx);
    float _599 = clamp(_545, 0.0f, 1.0f);
    float _600 = clamp(lerp(mad(0.5f, _423, 0.5f * _454), 0.5f, _459), 0.0f, 1.0f);
    float _604 = mad(clamp(lerp(mad(lerp(_354.y, _352.y, 0.5f), _454, mad(lerp(_317.y, _311.y, 0.5f), _394, lerp(_337.y, _335.y, 0.5f) * _423)), lerp(_564.y, _566.y, 0.5f), _459), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _605 = clamp(lerp(mad(lerp(_354.x, _352.x, 0.5f), _454, mad(lerp(_317.x, _311.x, 0.5f), _394, lerp(_337.x, _335.x, 0.5f) * _423)), lerp(_564.x, _566.x, 0.5f), _459), 0.0f, 1.0f);
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
        _657 = normalize((_496 * _630.w) + ((_630.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _653 = _604;
        _654 = _600;
        _655 = _599;
        _656 = _598;
        _657 = _496;
    }
    float3 _668 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _597, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _679 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_668.x), int(_668.y), int(_668.z), 0).xyz, 0)));
    float3 _694 = (((_679.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_668 / _679.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    uint _697 = asuint(asfloat(View_PrimitiveSceneData.Load4(_606 * 16 + 0)).x);
    float _718 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_606 * 16 + 0)).x) & 4u) != 0u)
    {
        _718 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f).x;
    }
    else
    {
        _718 = 1.0f;
    }
    float3 _731 = ((_656 - (_656 * _655)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _738 = (lerp((0.07999999821186065673828125f * _654).xxx, _656, _655.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _741 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _746 = 0.0f.xxx;
    if (_741)
    {
        _746 = _731 + (_738 * 0.449999988079071044921875f);
    }
    else
    {
        _746 = _731;
    }
    bool3 _747 = _741.xxx;
    float3 _748 = float3(_747.x ? 0.0f.xxx.x : _738.x, _747.y ? 0.0f.xxx.y : _738.y, _747.z ? 0.0f.xxx.z : _738.z);
    float3 _750 = dot(_748, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _757 = _605.xxx;
    float3 _762 = ((((((_750 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _605) + ((_750 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _605) + ((_750 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _605;
    bool3 _1105 = isnan(_757);
    bool3 _1106 = isnan(_762);
    float3 _1107 = max(_757, _762);
    float3 _1108 = float3(_1105.x ? _762.x : _1107.x, _1105.y ? _762.y : _1107.y, _1105.z ? _762.z : _1107.z);
    float4 _768 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f);
    float _784 = _768.x;
    float4 _786 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f) * 2.0f) - 1.0f.xxxx) * _784) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _787 = _768.y;
    float4 _789 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f) * 2.0f) - 1.0f.xxxx) * _787) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _790 = _768.z;
    float4 _792 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f) * 2.0f) - 1.0f.xxxx) * _790) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float4 _809 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f) * 2.0f) - 1.0f.xxxx) * _784) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _811 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f) * 2.0f) - 1.0f.xxxx) * _787) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _813 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _694, 0.0f) * 2.0f) - 1.0f.xxxx) * _790) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _846 = 0.0f.xxxx;
    _846.y = (-0.48860299587249755859375f) * _657.y;
    _846.z = 0.48860299587249755859375f * _657.z;
    _846.w = (-0.48860299587249755859375f) * _657.x;
    float3 _853 = _657 * _657;
    float4 _856 = 0.0f.xxxx;
    _856.x = (1.09254801273345947265625f * _657.x) * _657.y;
    _856.y = ((-1.09254801273345947265625f) * _657.y) * _657.z;
    _856.z = 0.3153919875621795654296875f * mad(3.0f, _853.z, -1.0f);
    _856.w = ((-1.09254801273345947265625f) * _657.x) * _657.z;
    _846.x = 0.886227548122406005859375f;
    float3 _872 = _846.yzw * 2.094395160675048828125f;
    float4 _873 = float4(_846.x, _872.x, _872.y, _872.z);
    float4 _874 = _856 * 0.785398185253143310546875f;
    float _875 = (_853.x - _853.y) * 0.4290426075458526611328125f;
    float3 _880 = 0.0f.xxx;
    _880.x = mad(_809.w, _875, dot(float4(_784, _786.xyz), _873) + dot(float4(_786.w, _809.xyz), _874));
    _880.y = mad(_811.w, _875, dot(float4(_787, _789.xyz), _873) + dot(float4(_789.w, _811.xyz), _874));
    _880.z = mad(_813.w, _875, dot(float4(_790, _792.xyz), _873) + dot(float4(_792.w, _813.xyz), _874));
    bool3 _1112 = isnan(0.0f.xxx);
    bool3 _1113 = isnan(_880);
    float3 _1114 = max(0.0f.xxx, _880);
    float3 _1115 = float3(_1112.x ? _880.x : _1114.x, _1112.y ? _880.y : _1114.y, _1112.z ? _880.z : _1114.z);
    float3 _895 = (float3(_1113.x ? 0.0f.xxx.x : _1115.x, _1113.y ? 0.0f.xxx.y : _1115.y, _1113.z ? 0.0f.xxx.z : _1115.z) * 0.3183098733425140380859375f.xxx) * View_View_PrecomputedIndirectLightingColorScale;
    float3 _908 = ((((((_656 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _605) + ((_656 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _605) + ((_656 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _605;
    bool3 _1117 = isnan(_757);
    bool3 _1118 = isnan(_908);
    float3 _1119 = max(_757, _908);
    float3 _1120 = float3(_1117.x ? _908.x : _1119.x, _1117.y ? _908.y : _1119.y, _1117.z ? _908.z : _1119.z);
    bool3 _1122 = isnan(_504);
    bool3 _1123 = isnan(0.0f.xxx);
    float3 _1124 = max(_504, 0.0f.xxx);
    float3 _1125 = float3(_1122.x ? 0.0f.xxx.x : _1124.x, _1122.y ? 0.0f.xxx.y : _1124.y, _1122.z ? 0.0f.xxx.z : _1124.z);
    float3 _916 = float3(_1123.x ? _504.x : _1125.x, _1123.y ? _504.y : _1125.y, _1123.z ? _504.z : _1125.z);
    float3 _996 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _942 = _606 + 31u;
        float3 _951 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_606 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_597 - asfloat(View_PrimitiveSceneData.Load4((_606 + 18u) * 16 + 0)).xyz));
        float3 _952 = float3(asfloat(View_PrimitiveSceneData.Load4((_606 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_606 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_606 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _995 = 0.0f.xxx;
        if (any(bool3(_951.x > _952.x, _951.y > _952.y, _951.z > _952.z)))
        {
            float3 _975 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _976 = _597 * 0.57700002193450927734375f.xxx;
            float3 _991 = frac(mad((_976.x + _976.y) + _976.z, 0.00200000009499490261077880859375f, frac(((_975.x + _975.y) + _975.z) * 4194.30419921875f))).xxx;
            _995 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_991.x > 0.5f.xxx.x, _991.y > 0.5f.xxx.y, _991.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _974 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_942 * 16 + 0)).x > 0.0f)
            {
                float3 _962 = abs(_290 - in_var_TEXCOORD9);
                float _963 = _962.x;
                float _964 = _962.y;
                float _965 = _962.z;
                float _966 = isnan(_965) ? _964 : (isnan(_964) ? _965 : max(_964, _965));
                _974 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_966) ? _963 : (isnan(_963) ? _966 : max(_963, _966))) - asfloat(View_PrimitiveSceneData.Load4(_942 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _974 = _916;
            }
            _995 = _974;
        }
        _996 = _995;
    }
    else
    {
        _996 = _916;
    }
    float4 _1003 = float4((mad(_895 * _746, float3(_1118.x ? _757.x : _1120.x, _1118.y ? _757.y : _1120.y, _1118.z ? _757.z : _1120.z), lerp(0.0f.xxx, _746 + (_748 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _996) * 1.0f, 0.0f);
    float4 _1010 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1009 = _1003;
        _1009.w = 0.0f;
        _1010 = _1009;
    }
    else
    {
        _1010 = _1003;
    }
    float2 _1014 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1029 = (_657 * 0.5f) + 0.5f.xxx;
    float4 _1031 = 0.0f.xxxx;
    _1031.x = _1029.x;
    _1031.y = _1029.y;
    _1031.z = _1029.z;
    _1031.w = mad(2.0f, float((_697 & 256u) != 0u), float((_697 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1038 = 0.0f.xxxx;
    _1038.x = _656.x;
    _1038.y = _656.y;
    _1038.z = _656.z;
    _1038.w = mad(frac(dot(_1014.xyx * _1014.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_895, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1106.x ? _757.x : _1108.x, _1106.y ? _757.y : _1108.y, _1106.z ? _757.z : _1108.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1044 = 0.0f.xxxx;
    _1044.x = _718;
    _1044.y = 1.0f;
    _1044.z = 1.0f;
    _1044.w = 1.0f;
    float4 _1049 = _1010 * View_View_PreExposure;
    float3 _1050 = _1049.xyz;
    bool3 _1141 = isnan(_1050);
    bool3 _1142 = isnan(32256.0f.xxx);
    float3 _1143 = min(_1050, 32256.0f.xxx);
    float3 _1144 = float3(_1141.x ? 32256.0f.xxx.x : _1143.x, _1141.y ? 32256.0f.xxx.y : _1143.y, _1141.z ? 32256.0f.xxx.z : _1143.z);
    float3 _1051 = float3(_1142.x ? _1050.x : _1144.x, _1142.y ? _1050.y : _1144.y, _1142.z ? _1050.z : _1144.z);
    out_var_SV_Target0 = float4(_1051.x, _1051.y, _1051.z, _1049.w);
    out_var_SV_Target1 = _1031;
    out_var_SV_Target2 = float4(_655, _654, _653, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1038;
    out_var_SV_Target5 = _1044;
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
