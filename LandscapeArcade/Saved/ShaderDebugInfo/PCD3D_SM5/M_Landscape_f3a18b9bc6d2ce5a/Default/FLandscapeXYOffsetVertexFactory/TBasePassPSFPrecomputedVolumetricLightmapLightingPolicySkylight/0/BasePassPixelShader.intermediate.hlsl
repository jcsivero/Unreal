#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _214 = 0.0f.xxxx;
static float3 _215 = 0.0f.xxx;
static float _218 = 0.0f;
static float4 _219 = 0.0f.xxxx;

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
};

ByteAddressBuffer View_PrimitiveSceneData;
ByteAddressBuffer View_SkyIrradianceEnvironmentMap;
cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c140);
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
Texture3D<float4> View_VolumetricLightmapBrickAmbientVector;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients0;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients1;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients2;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients3;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients4;
Texture3D<float4> View_VolumetricLightmapBrickSHCoefficients5;
Texture3D<float4> View_SkyBentNormalBrickTexture;
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
    float4 _263 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _267 = mad(float2(_263.zw), 2.0f.xx, (-1.0f).xx);
    float _269 = 1.0f - dot(_267, _267);
    float _271 = sqrt(isnan(0.0f) ? _269 : (isnan(_269) ? 0.0f : max(_269, 0.0f)));
    float _272 = _267.x;
    float3 _274 = float3(_272, _267.y, _271);
    float3 _277 = normalize(float3(_271, 0.0f, -_272));
    float4 _293 = float4(_218, _218, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _297 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _301 = _297.xyz / _297.w.xxx;
    float3 _311 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _311 = -View_View_ViewForward;
    }
    else
    {
        _311 = normalize(-_301);
    }
    float2 _312 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _316 = _312 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _322 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _316, View_View_MaterialTextureMipBias);
    float2 _326 = _312 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _328 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _326, View_View_MaterialTextureMipBias);
    float4 _335 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _340 = lerp(-1.0f, 1.0f, dot(_335, Material_Material_PreshaderBuffer[2])) + lerp(_322.z, _328.z, 0.5f);
    float _341 = isnan(9.9999997473787516355514526367188e-05f) ? _340 : (isnan(_340) ? 9.9999997473787516355514526367188e-05f : max(_340, 9.9999997473787516355514526367188e-05f));
    float _342 = isnan(1.0f) ? _341 : (isnan(_341) ? 1.0f : min(_341, 1.0f));
    float4 _346 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _316, View_View_MaterialTextureMipBias);
    float4 _348 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _326, View_View_MaterialTextureMipBias);
    float _356 = lerp(-1.0f, 1.0f, dot(_335, Material_Material_PreshaderBuffer[3])) + lerp(_346.z, _348.z, 0.5f);
    float _357 = isnan(9.9999997473787516355514526367188e-05f) ? _356 : (isnan(_356) ? 9.9999997473787516355514526367188e-05f : max(_356, 9.9999997473787516355514526367188e-05f));
    float _358 = isnan(1.0f) ? _357 : (isnan(_357) ? 1.0f : min(_357, 1.0f));
    float4 _363 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _316, View_View_MaterialTextureMipBias);
    float4 _365 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _326, View_View_MaterialTextureMipBias);
    float _373 = lerp(-1.0f, 1.0f, dot(_335, Material_Material_PreshaderBuffer[4])) + lerp(_363.z, _365.z, 0.5f);
    float _374 = isnan(9.9999997473787516355514526367188e-05f) ? _373 : (isnan(_373) ? 9.9999997473787516355514526367188e-05f : max(_373, 9.9999997473787516355514526367188e-05f));
    float _375 = isnan(1.0f) ? _374 : (isnan(_374) ? 1.0f : min(_374, 1.0f));
    float _377 = 1.0f / ((_342 + _358) + _375);
    float2 _383 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _326, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _394 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _405 = _377 * _342;
    float3 _406 = _405.xxx;
    float2 _412 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _326, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _423 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _434 = _377 * _358;
    float3 _435 = _434.xxx;
    float2 _443 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _326, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _454 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _465 = _377 * _375;
    float3 _466 = _465.xxx;
    float _470 = dot(_335, Material_Material_PreshaderBuffer[5]);
    float2 _476 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _326, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _487 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _316, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _498 = _470.xxx;
    float3 _502 = lerp(mad(lerp(float4(_443, sqrt(clamp(1.0f - dot(_443, _443), 0.0f, 1.0f)), 1.0f).xyz, float4(_454, sqrt(clamp(1.0f - dot(_454, _454), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _466, mad(lerp(float4(_383, sqrt(clamp(1.0f - dot(_383, _383), 0.0f, 1.0f)), 1.0f).xyz, float4(_394, sqrt(clamp(1.0f - dot(_394, _394), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _406, lerp(float4(_412, sqrt(clamp(1.0f - dot(_412, _412), 0.0f, 1.0f)), 1.0f).xyz, float4(_423, sqrt(clamp(1.0f - dot(_423, _423), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _435)), lerp(float4(_476, sqrt(clamp(1.0f - dot(_476, _476), 0.0f, 1.0f)), 1.0f).xyz, float4(_487, sqrt(clamp(1.0f - dot(_487, _487), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _498) * View_View_NormalOverrideParameter.w;
    float3 _507 = normalize(mul(normalize(_502 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_277, cross(_274, _277), _274), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _515 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _498), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _549 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _326, View_View_MaterialTextureMipBias);
    float4 _551 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _316, View_View_MaterialTextureMipBias);
    float _556 = lerp(0.0f, 0.0f, _470);
    float4 _578 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _326, View_View_MaterialTextureMipBias);
    float4 _580 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _316, View_View_MaterialTextureMipBias);
    float _601 = _293.z;
    float _602 = _293.w;
    float _604 = _601 / (_602 + _556);
    float _605 = isnan(gl_FragCoord.z) ? _604 : (isnan(_604) ? gl_FragCoord.z : min(_604, gl_FragCoord.z));
    float3 _611 = (_301 - View_View_RelativePreViewTranslation) + ((-_311) * (mad(-_605, _602, _601) / _605));
    float3 _612 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _326, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _316, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _466, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _326, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _316, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _406, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _326, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _316, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _435)), lerp(_549.xyz, _551.xyz, 0.5f.xxx), _498), 0.0f.xxx, 1.0f.xxx);
    float _613 = clamp(_556, 0.0f, 1.0f);
    float _614 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _465, mad(Material_Material_PreshaderBuffer[7].x, _405, Material_Material_PreshaderBuffer[7].x * _434)), Material_Material_PreshaderBuffer[7].x, _470), 0.0f, 1.0f);
    float _618 = mad(clamp(lerp(mad(lerp(_365.y, _363.y, 0.5f), _465, mad(lerp(_328.y, _322.y, 0.5f), _405, lerp(_348.y, _346.y, 0.5f) * _434)), lerp(_578.y, _580.y, 0.5f), _470), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _619 = clamp(lerp(mad(lerp(_365.x, _363.x, 0.5f), _465, mad(lerp(_328.x, _322.x, 0.5f), _405, lerp(_348.x, _346.x, 0.5f) * _434)), lerp(_578.x, _580.x, 0.5f), _470), 0.0f, 1.0f);
    uint _620 = in_var_PRIMITIVE_ID * 41u;
    float _667 = 0.0f;
    float _668 = 0.0f;
    float _669 = 0.0f;
    float3 _670 = 0.0f.xxx;
    float3 _671 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_620 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _636 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _640 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _636, 0.0f);
        float4 _644 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _636, 0.0f);
        float4 _648 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _636, 0.0f);
        float _658 = _648.w;
        _667 = mad(_618, _658, _648.z);
        _668 = mad(_614, _658, _648.y);
        _669 = mad(_613, _658, _648.x);
        _670 = (_612 * _640.w) + _640.xyz;
        _671 = normalize((_507 * _644.w) + ((_644.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _667 = _618;
        _668 = _614;
        _669 = _613;
        _670 = _612;
        _671 = _507;
    }
    float3 _682 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _611, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _693 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_682.x), int(_682.y), int(_682.z), 0).xyz, 0)));
    float3 _708 = (((_693.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_682 / _693.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    uint _711 = asuint(asfloat(View_PrimitiveSceneData.Load4(_620 * 16 + 0)).x);
    float _732 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_620 * 16 + 0)).x) & 4u) != 0u)
    {
        _732 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f).x;
    }
    else
    {
        _732 = 1.0f;
    }
    float3 _745 = ((_670 - (_670 * _669)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _752 = (lerp((0.07999999821186065673828125f * _668).xxx, _670, _669.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _755 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _760 = 0.0f.xxx;
    if (_755)
    {
        _760 = _745 + (_752 * 0.449999988079071044921875f);
    }
    else
    {
        _760 = _745;
    }
    bool3 _761 = _755.xxx;
    float3 _762 = float3(_761.x ? 0.0f.xxx.x : _752.x, _761.y ? 0.0f.xxx.y : _752.y, _761.z ? 0.0f.xxx.z : _752.z);
    float3 _764 = dot(_762, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _771 = _619.xxx;
    float3 _776 = ((((((_764 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _619) + ((_764 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _619) + ((_764 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _619;
    bool3 _1197 = isnan(_771);
    bool3 _1198 = isnan(_776);
    float3 _1199 = max(_771, _776);
    float3 _1200 = float3(_1197.x ? _776.x : _1199.x, _1197.y ? _776.y : _1199.y, _1197.z ? _776.z : _1199.z);
    float4 _782 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f);
    float _798 = _782.x;
    float4 _800 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f) * 2.0f) - 1.0f.xxxx) * _798) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _801 = _782.y;
    float4 _803 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f) * 2.0f) - 1.0f.xxxx) * _801) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _804 = _782.z;
    float4 _806 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f) * 2.0f) - 1.0f.xxxx) * _804) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float4 _823 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f) * 2.0f) - 1.0f.xxxx) * _798) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _825 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f) * 2.0f) - 1.0f.xxxx) * _801) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _827 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f) * 2.0f) - 1.0f.xxxx) * _804) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _860 = 0.0f.xxxx;
    _860.y = (-0.48860299587249755859375f) * _671.y;
    _860.z = 0.48860299587249755859375f * _671.z;
    _860.w = (-0.48860299587249755859375f) * _671.x;
    float3 _867 = _671 * _671;
    float4 _870 = 0.0f.xxxx;
    _870.x = (1.09254801273345947265625f * _671.x) * _671.y;
    _870.y = ((-1.09254801273345947265625f) * _671.y) * _671.z;
    _870.z = 0.3153919875621795654296875f * mad(3.0f, _867.z, -1.0f);
    _870.w = ((-1.09254801273345947265625f) * _671.x) * _671.z;
    _860.x = 0.886227548122406005859375f;
    float3 _886 = _860.yzw * 2.094395160675048828125f;
    float4 _887 = float4(_860.x, _886.x, _886.y, _886.z);
    float4 _888 = _870 * 0.785398185253143310546875f;
    float _889 = (_867.x - _867.y) * 0.4290426075458526611328125f;
    float3 _894 = 0.0f.xxx;
    _894.x = mad(_823.w, _889, dot(float4(_798, _800.xyz), _887) + dot(float4(_800.w, _823.xyz), _888));
    _894.y = mad(_825.w, _889, dot(float4(_801, _803.xyz), _887) + dot(float4(_803.w, _825.xyz), _888));
    _894.z = mad(_827.w, _889, dot(float4(_804, _806.xyz), _887) + dot(float4(_806.w, _827.xyz), _888));
    bool3 _1204 = isnan(0.0f.xxx);
    bool3 _1205 = isnan(_894);
    float3 _1206 = max(0.0f.xxx, _894);
    float3 _1207 = float3(_1204.x ? _894.x : _1206.x, _1204.y ? _894.y : _1206.y, _1204.z ? _894.z : _1206.z);
    float3 _985 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _937 = 0.0f;
        float _938 = 0.0f;
        float3 _939 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _924 = (View_SkyBentNormalBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _708, 0.0f).xyz * 2.0f) - 1.0f.xxx;
            float _925 = length(_924);
            float3 _928 = _924 / (isnan(9.9999997473787516355514526367188e-05f) ? _925 : (isnan(_925) ? 9.9999997473787516355514526367188e-05f : max(_925, 9.9999997473787516355514526367188e-05f))).xxx;
            float _931 = mad(_925 - 1.0f, 1.0f - _925, 1.0f);
            _937 = lerp(clamp(dot(_928, _671), 0.0f, 1.0f), 1.0f, _931);
            _938 = _925;
            _939 = lerp(_928, _671, _931.xxx);
        }
        else
        {
            _937 = 1.0f;
            _938 = 1.0f;
            _939 = _671;
        }
        float4 _943 = float4(_939, 1.0f);
        float3 _947 = 0.0f.xxx;
        _947.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _943);
        _947.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _943);
        _947.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _943);
        float4 _958 = _943.xyzz * _943.yzzx;
        float3 _962 = 0.0f.xxx;
        _962.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _958);
        _962.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _958);
        _962.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _958);
        float3 _979 = (_947 + _962) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_939.x, _939.x, -(_939.y * _939.y)));
        bool3 _1220 = isnan(0.0f.xxx);
        bool3 _1221 = isnan(_979);
        float3 _1222 = max(0.0f.xxx, _979);
        float3 _1223 = float3(_1220.x ? _979.x : _1222.x, _1220.y ? _979.y : _1222.y, _1220.z ? _979.z : _1222.z);
        _985 = (float3(_1221.x ? 0.0f.xxx.x : _1223.x, _1221.y ? 0.0f.xxx.y : _1223.y, _1221.z ? 0.0f.xxx.z : _1223.z) * View_View_SkyLightColor.xyz) * (_938 * _937);
    }
    else
    {
        _985 = 0.0f.xxx;
    }
    float3 _986 = mad(float3(_1205.x ? 0.0f.xxx.x : _1207.x, _1205.y ? 0.0f.xxx.y : _1207.y, _1205.z ? 0.0f.xxx.z : _1207.z) * 0.3183098733425140380859375f.xxx, View_View_PrecomputedIndirectLightingColorScale, _985);
    float3 _999 = ((((((_670 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _619) + ((_670 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _619) + ((_670 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _619;
    bool3 _1225 = isnan(_771);
    bool3 _1226 = isnan(_999);
    float3 _1227 = max(_771, _999);
    float3 _1228 = float3(_1225.x ? _999.x : _1227.x, _1225.y ? _999.y : _1227.y, _1225.z ? _999.z : _1227.z);
    bool3 _1230 = isnan(_515);
    bool3 _1231 = isnan(0.0f.xxx);
    float3 _1232 = max(_515, 0.0f.xxx);
    float3 _1233 = float3(_1230.x ? 0.0f.xxx.x : _1232.x, _1230.y ? 0.0f.xxx.y : _1232.y, _1230.z ? 0.0f.xxx.z : _1232.z);
    float3 _1007 = float3(_1231.x ? _515.x : _1233.x, _1231.y ? _515.y : _1233.y, _1231.z ? _515.z : _1233.z);
    float3 _1087 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _1033 = _620 + 31u;
        float3 _1042 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_620 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_611 - asfloat(View_PrimitiveSceneData.Load4((_620 + 18u) * 16 + 0)).xyz));
        float3 _1043 = float3(asfloat(View_PrimitiveSceneData.Load4((_620 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_620 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_620 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1086 = 0.0f.xxx;
        if (any(bool3(_1042.x > _1043.x, _1042.y > _1043.y, _1042.z > _1043.z)))
        {
            float3 _1066 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _1067 = _611 * 0.57700002193450927734375f.xxx;
            float3 _1082 = frac(mad((_1067.x + _1067.y) + _1067.z, 0.00200000009499490261077880859375f, frac(((_1066.x + _1066.y) + _1066.z) * 4194.30419921875f))).xxx;
            _1086 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1082.x > 0.5f.xxx.x, _1082.y > 0.5f.xxx.y, _1082.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _1065 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_1033 * 16 + 0)).x > 0.0f)
            {
                float3 _1053 = abs(_301 - in_var_TEXCOORD9);
                float _1054 = _1053.x;
                float _1055 = _1053.y;
                float _1056 = _1053.z;
                float _1057 = isnan(_1056) ? _1055 : (isnan(_1055) ? _1056 : max(_1055, _1056));
                _1065 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_1057) ? _1054 : (isnan(_1054) ? _1057 : max(_1054, _1057))) - asfloat(View_PrimitiveSceneData.Load4(_1033 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _1065 = _1007;
            }
            _1086 = _1065;
        }
        _1087 = _1086;
    }
    else
    {
        _1087 = _1007;
    }
    float4 _1094 = float4((mad(_986 * _760, float3(_1226.x ? _771.x : _1228.x, _1226.y ? _771.y : _1228.y, _1226.z ? _771.z : _1228.z), lerp(0.0f.xxx, _760 + (_762 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _1087) * 1.0f, 0.0f);
    float4 _1101 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1100 = _1094;
        _1100.w = 0.0f;
        _1101 = _1100;
    }
    else
    {
        _1101 = _1094;
    }
    float2 _1105 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1120 = (_671 * 0.5f) + 0.5f.xxx;
    float4 _1122 = 0.0f.xxxx;
    _1122.x = _1120.x;
    _1122.y = _1120.y;
    _1122.z = _1120.z;
    _1122.w = mad(2.0f, float((_711 & 256u) != 0u), float((_711 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1129 = 0.0f.xxxx;
    _1129.x = _670.x;
    _1129.y = _670.y;
    _1129.z = _670.z;
    _1129.w = mad(frac(dot(_1105.xyx * _1105.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_986, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1198.x ? _771.x : _1200.x, _1198.y ? _771.y : _1200.y, _1198.z ? _771.z : _1200.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1135 = 0.0f.xxxx;
    _1135.x = _732;
    _1135.y = 1.0f;
    _1135.z = 1.0f;
    _1135.w = 1.0f;
    float4 _1140 = _1101 * View_View_PreExposure;
    float3 _1141 = _1140.xyz;
    bool3 _1249 = isnan(_1141);
    bool3 _1250 = isnan(32256.0f.xxx);
    float3 _1251 = min(_1141, 32256.0f.xxx);
    float3 _1252 = float3(_1249.x ? 32256.0f.xxx.x : _1251.x, _1249.y ? 32256.0f.xxx.y : _1251.y, _1249.z ? 32256.0f.xxx.z : _1251.z);
    float3 _1142 = float3(_1250.x ? _1141.x : _1252.x, _1250.y ? _1141.y : _1252.y, _1250.z ? _1141.z : _1252.z);
    out_var_SV_Target0 = float4(_1142.x, _1142.y, _1142.z, _1140.w);
    out_var_SV_Target1 = _1122;
    out_var_SV_Target2 = float4(_669, _668, _667, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1129;
    out_var_SV_Target5 = _1135;
    gl_FragDepth = _605;
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
