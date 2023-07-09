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
    float4 _262 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _266 = mad(float2(_262.zw), 2.0f.xx, (-1.0f).xx);
    float _268 = 1.0f - dot(_266, _266);
    float _270 = sqrt(isnan(0.0f) ? _268 : (isnan(_268) ? 0.0f : max(_268, 0.0f)));
    float _271 = _266.x;
    float3 _273 = float3(_271, _266.y, _270);
    float3 _276 = normalize(float3(_270, 0.0f, -_271));
    float4 _292 = float4(_218, _218, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _296 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _300 = _296.xyz / _296.w.xxx;
    float3 _310 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _310 = -View_View_ViewForward;
    }
    else
    {
        _310 = normalize(-_300);
    }
    float2 _311 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _315 = _311 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _321 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _315, View_View_MaterialTextureMipBias);
    float2 _325 = _311 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _327 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _325, View_View_MaterialTextureMipBias);
    float4 _334 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _339 = lerp(-1.0f, 1.0f, dot(_334, Material_Material_PreshaderBuffer[2])) + lerp(_321.z, _327.z, 0.5f);
    float _340 = isnan(9.9999997473787516355514526367188e-05f) ? _339 : (isnan(_339) ? 9.9999997473787516355514526367188e-05f : max(_339, 9.9999997473787516355514526367188e-05f));
    float _341 = isnan(1.0f) ? _340 : (isnan(_340) ? 1.0f : min(_340, 1.0f));
    float4 _345 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _315, View_View_MaterialTextureMipBias);
    float4 _347 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _325, View_View_MaterialTextureMipBias);
    float _355 = lerp(-1.0f, 1.0f, dot(_334, Material_Material_PreshaderBuffer[3])) + lerp(_345.z, _347.z, 0.5f);
    float _356 = isnan(9.9999997473787516355514526367188e-05f) ? _355 : (isnan(_355) ? 9.9999997473787516355514526367188e-05f : max(_355, 9.9999997473787516355514526367188e-05f));
    float _357 = isnan(1.0f) ? _356 : (isnan(_356) ? 1.0f : min(_356, 1.0f));
    float4 _362 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _315, View_View_MaterialTextureMipBias);
    float4 _364 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _325, View_View_MaterialTextureMipBias);
    float _372 = lerp(-1.0f, 1.0f, dot(_334, Material_Material_PreshaderBuffer[4])) + lerp(_362.z, _364.z, 0.5f);
    float _373 = isnan(9.9999997473787516355514526367188e-05f) ? _372 : (isnan(_372) ? 9.9999997473787516355514526367188e-05f : max(_372, 9.9999997473787516355514526367188e-05f));
    float _374 = isnan(1.0f) ? _373 : (isnan(_373) ? 1.0f : min(_373, 1.0f));
    float _376 = 1.0f / ((_341 + _357) + _374);
    float2 _382 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _325, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _393 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _404 = _376 * _341;
    float3 _405 = _404.xxx;
    float2 _411 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _325, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _422 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _433 = _376 * _357;
    float3 _434 = _433.xxx;
    float2 _442 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _325, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _453 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _464 = _376 * _374;
    float3 _465 = _464.xxx;
    float _469 = dot(_334, Material_Material_PreshaderBuffer[5]);
    float2 _475 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _325, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _486 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _315, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _497 = _469.xxx;
    float3 _501 = lerp(mad(lerp(float4(_442, sqrt(clamp(1.0f - dot(_442, _442), 0.0f, 1.0f)), 1.0f).xyz, float4(_453, sqrt(clamp(1.0f - dot(_453, _453), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _465, mad(lerp(float4(_382, sqrt(clamp(1.0f - dot(_382, _382), 0.0f, 1.0f)), 1.0f).xyz, float4(_393, sqrt(clamp(1.0f - dot(_393, _393), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _405, lerp(float4(_411, sqrt(clamp(1.0f - dot(_411, _411), 0.0f, 1.0f)), 1.0f).xyz, float4(_422, sqrt(clamp(1.0f - dot(_422, _422), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _434)), lerp(float4(_475, sqrt(clamp(1.0f - dot(_475, _475), 0.0f, 1.0f)), 1.0f).xyz, float4(_486, sqrt(clamp(1.0f - dot(_486, _486), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _497) * View_View_NormalOverrideParameter.w;
    float3 _506 = normalize(mul(normalize(_501 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_276, cross(_273, _276), _273), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _514 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _497), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _548 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _325, View_View_MaterialTextureMipBias);
    float4 _550 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _315, View_View_MaterialTextureMipBias);
    float _555 = lerp(0.0f, 0.0f, _469);
    float4 _574 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _325, View_View_MaterialTextureMipBias);
    float4 _576 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _315, View_View_MaterialTextureMipBias);
    float _597 = _292.z;
    float _598 = _292.w;
    float _600 = _597 / (_598 + _555);
    float _601 = isnan(gl_FragCoord.z) ? _600 : (isnan(_600) ? gl_FragCoord.z : min(_600, gl_FragCoord.z));
    float3 _607 = (_300 - View_View_RelativePreViewTranslation) + ((-_310) * (mad(-_601, _598, _597) / _601));
    float3 _608 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _325, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _315, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _465, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _325, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _315, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _405, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _325, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _315, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _434)), lerp(_548.xyz, _550.xyz, 0.5f.xxx), _497), 0.0f.xxx, 1.0f.xxx);
    float _609 = clamp(_555, 0.0f, 1.0f);
    float _610 = clamp(lerp(mad(0.5f, _433, 0.5f * _464), 0.5f, _469), 0.0f, 1.0f);
    float _614 = mad(clamp(lerp(mad(lerp(_364.y, _362.y, 0.5f), _464, mad(lerp(_327.y, _321.y, 0.5f), _404, lerp(_347.y, _345.y, 0.5f) * _433)), lerp(_574.y, _576.y, 0.5f), _469), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _615 = clamp(lerp(mad(lerp(_364.x, _362.x, 0.5f), _464, mad(lerp(_327.x, _321.x, 0.5f), _404, lerp(_347.x, _345.x, 0.5f) * _433)), lerp(_574.x, _576.x, 0.5f), _469), 0.0f, 1.0f);
    uint _616 = in_var_PRIMITIVE_ID * 41u;
    float _663 = 0.0f;
    float _664 = 0.0f;
    float _665 = 0.0f;
    float3 _666 = 0.0f.xxx;
    float3 _667 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_616 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _632 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _636 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _632, 0.0f);
        float4 _640 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _632, 0.0f);
        float4 _644 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _632, 0.0f);
        float _654 = _644.w;
        _663 = mad(_614, _654, _644.z);
        _664 = mad(_610, _654, _644.y);
        _665 = mad(_609, _654, _644.x);
        _666 = (_608 * _636.w) + _636.xyz;
        _667 = normalize((_506 * _640.w) + ((_640.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _663 = _614;
        _664 = _610;
        _665 = _609;
        _666 = _608;
        _667 = _506;
    }
    float3 _678 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _607, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
    float4 _689 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_678.x), int(_678.y), int(_678.z), 0).xyz, 0)));
    float3 _704 = (((_689.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_678 / _689.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize;
    uint _707 = asuint(asfloat(View_PrimitiveSceneData.Load4(_616 * 16 + 0)).x);
    float _728 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_616 * 16 + 0)).x) & 4u) != 0u)
    {
        _728 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f).x;
    }
    else
    {
        _728 = 1.0f;
    }
    float3 _741 = ((_666 - (_666 * _665)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _748 = (lerp((0.07999999821186065673828125f * _664).xxx, _666, _665.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
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
    float3 _767 = _615.xxx;
    float3 _772 = ((((((_760 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _615) + ((_760 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _615) + ((_760 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _615;
    bool3 _1193 = isnan(_767);
    bool3 _1194 = isnan(_772);
    float3 _1195 = max(_767, _772);
    float3 _1196 = float3(_1193.x ? _772.x : _1195.x, _1193.y ? _772.y : _1195.y, _1193.z ? _772.z : _1195.z);
    float4 _778 = View_VolumetricLightmapBrickAmbientVector.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f);
    float _794 = _778.x;
    float4 _796 = (((View_VolumetricLightmapBrickSHCoefficients0.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f) * 2.0f) - 1.0f.xxxx) * _794) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _797 = _778.y;
    float4 _799 = (((View_VolumetricLightmapBrickSHCoefficients2.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f) * 2.0f) - 1.0f.xxxx) * _797) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float _800 = _778.z;
    float4 _802 = (((View_VolumetricLightmapBrickSHCoefficients4.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f) * 2.0f) - 1.0f.xxxx) * _800) * float4(1.732051372528076171875f, 1.732051372528076171875f, 1.732051372528076171875f, 3.87297916412353515625f);
    float4 _819 = (((View_VolumetricLightmapBrickSHCoefficients1.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f) * 2.0f) - 1.0f.xxxx) * _794) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _821 = (((View_VolumetricLightmapBrickSHCoefficients3.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f) * 2.0f) - 1.0f.xxxx) * _797) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _823 = (((View_VolumetricLightmapBrickSHCoefficients5.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f) * 2.0f) - 1.0f.xxxx) * _800) * float4(3.87297916412353515625f, 4.472138881683349609375f, 3.87297916412353515625f, 3.87297916412353515625f);
    float4 _856 = 0.0f.xxxx;
    _856.y = (-0.48860299587249755859375f) * _667.y;
    _856.z = 0.48860299587249755859375f * _667.z;
    _856.w = (-0.48860299587249755859375f) * _667.x;
    float3 _863 = _667 * _667;
    float4 _866 = 0.0f.xxxx;
    _866.x = (1.09254801273345947265625f * _667.x) * _667.y;
    _866.y = ((-1.09254801273345947265625f) * _667.y) * _667.z;
    _866.z = 0.3153919875621795654296875f * mad(3.0f, _863.z, -1.0f);
    _866.w = ((-1.09254801273345947265625f) * _667.x) * _667.z;
    _856.x = 0.886227548122406005859375f;
    float3 _882 = _856.yzw * 2.094395160675048828125f;
    float4 _883 = float4(_856.x, _882.x, _882.y, _882.z);
    float4 _884 = _866 * 0.785398185253143310546875f;
    float _885 = (_863.x - _863.y) * 0.4290426075458526611328125f;
    float3 _890 = 0.0f.xxx;
    _890.x = mad(_819.w, _885, dot(float4(_794, _796.xyz), _883) + dot(float4(_796.w, _819.xyz), _884));
    _890.y = mad(_821.w, _885, dot(float4(_797, _799.xyz), _883) + dot(float4(_799.w, _821.xyz), _884));
    _890.z = mad(_823.w, _885, dot(float4(_800, _802.xyz), _883) + dot(float4(_802.w, _823.xyz), _884));
    bool3 _1200 = isnan(0.0f.xxx);
    bool3 _1201 = isnan(_890);
    float3 _1202 = max(0.0f.xxx, _890);
    float3 _1203 = float3(_1200.x ? _890.x : _1202.x, _1200.y ? _890.y : _1202.y, _1200.z ? _890.z : _1202.z);
    float3 _981 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _933 = 0.0f;
        float _934 = 0.0f;
        float3 _935 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _920 = (View_SkyBentNormalBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, _704, 0.0f).xyz * 2.0f) - 1.0f.xxx;
            float _921 = length(_920);
            float3 _924 = _920 / (isnan(9.9999997473787516355514526367188e-05f) ? _921 : (isnan(_921) ? 9.9999997473787516355514526367188e-05f : max(_921, 9.9999997473787516355514526367188e-05f))).xxx;
            float _927 = mad(_921 - 1.0f, 1.0f - _921, 1.0f);
            _933 = lerp(clamp(dot(_924, _667), 0.0f, 1.0f), 1.0f, _927);
            _934 = _921;
            _935 = lerp(_924, _667, _927.xxx);
        }
        else
        {
            _933 = 1.0f;
            _934 = 1.0f;
            _935 = _667;
        }
        float4 _939 = float4(_935, 1.0f);
        float3 _943 = 0.0f.xxx;
        _943.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _939);
        _943.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _939);
        _943.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _939);
        float4 _954 = _939.xyzz * _939.yzzx;
        float3 _958 = 0.0f.xxx;
        _958.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _954);
        _958.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _954);
        _958.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _954);
        float3 _975 = (_943 + _958) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_935.x, _935.x, -(_935.y * _935.y)));
        bool3 _1216 = isnan(0.0f.xxx);
        bool3 _1217 = isnan(_975);
        float3 _1218 = max(0.0f.xxx, _975);
        float3 _1219 = float3(_1216.x ? _975.x : _1218.x, _1216.y ? _975.y : _1218.y, _1216.z ? _975.z : _1218.z);
        _981 = (float3(_1217.x ? 0.0f.xxx.x : _1219.x, _1217.y ? 0.0f.xxx.y : _1219.y, _1217.z ? 0.0f.xxx.z : _1219.z) * View_View_SkyLightColor.xyz) * (_934 * _933);
    }
    else
    {
        _981 = 0.0f.xxx;
    }
    float3 _982 = mad(float3(_1201.x ? 0.0f.xxx.x : _1203.x, _1201.y ? 0.0f.xxx.y : _1203.y, _1201.z ? 0.0f.xxx.z : _1203.z) * 0.3183098733425140380859375f.xxx, View_View_PrecomputedIndirectLightingColorScale, _981);
    float3 _995 = ((((((_666 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _615) + ((_666 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _615) + ((_666 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _615;
    bool3 _1221 = isnan(_767);
    bool3 _1222 = isnan(_995);
    float3 _1223 = max(_767, _995);
    float3 _1224 = float3(_1221.x ? _995.x : _1223.x, _1221.y ? _995.y : _1223.y, _1221.z ? _995.z : _1223.z);
    bool3 _1226 = isnan(_514);
    bool3 _1227 = isnan(0.0f.xxx);
    float3 _1228 = max(_514, 0.0f.xxx);
    float3 _1229 = float3(_1226.x ? 0.0f.xxx.x : _1228.x, _1226.y ? 0.0f.xxx.y : _1228.y, _1226.z ? 0.0f.xxx.z : _1228.z);
    float3 _1003 = float3(_1227.x ? _514.x : _1229.x, _1227.y ? _514.y : _1229.y, _1227.z ? _514.z : _1229.z);
    float3 _1083 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _1029 = _616 + 31u;
        float3 _1038 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_616 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_607 - asfloat(View_PrimitiveSceneData.Load4((_616 + 18u) * 16 + 0)).xyz));
        float3 _1039 = float3(asfloat(View_PrimitiveSceneData.Load4((_616 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_616 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_616 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _1082 = 0.0f.xxx;
        if (any(bool3(_1038.x > _1039.x, _1038.y > _1039.y, _1038.z > _1039.z)))
        {
            float3 _1062 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _1063 = _607 * 0.57700002193450927734375f.xxx;
            float3 _1078 = frac(mad((_1063.x + _1063.y) + _1063.z, 0.00200000009499490261077880859375f, frac(((_1062.x + _1062.y) + _1062.z) * 4194.30419921875f))).xxx;
            _1082 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_1078.x > 0.5f.xxx.x, _1078.y > 0.5f.xxx.y, _1078.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _1061 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_1029 * 16 + 0)).x > 0.0f)
            {
                float3 _1049 = abs(_300 - in_var_TEXCOORD9);
                float _1050 = _1049.x;
                float _1051 = _1049.y;
                float _1052 = _1049.z;
                float _1053 = isnan(_1052) ? _1051 : (isnan(_1051) ? _1052 : max(_1051, _1052));
                _1061 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_1053) ? _1050 : (isnan(_1050) ? _1053 : max(_1050, _1053))) - asfloat(View_PrimitiveSceneData.Load4(_1029 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _1061 = _1003;
            }
            _1082 = _1061;
        }
        _1083 = _1082;
    }
    else
    {
        _1083 = _1003;
    }
    float4 _1090 = float4((mad(_982 * _756, float3(_1222.x ? _767.x : _1224.x, _1222.y ? _767.y : _1224.y, _1222.z ? _767.z : _1224.z), lerp(0.0f.xxx, _756 + (_758 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _1083) * 1.0f, 0.0f);
    float4 _1097 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _1096 = _1090;
        _1096.w = 0.0f;
        _1097 = _1096;
    }
    else
    {
        _1097 = _1090;
    }
    float2 _1101 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _1116 = (_667 * 0.5f) + 0.5f.xxx;
    float4 _1118 = 0.0f.xxxx;
    _1118.x = _1116.x;
    _1118.y = _1116.y;
    _1118.z = _1116.z;
    _1118.w = mad(2.0f, float((_707 & 256u) != 0u), float((_707 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _1125 = 0.0f.xxxx;
    _1125.x = _666.x;
    _1125.y = _666.y;
    _1125.z = _666.z;
    _1125.w = mad(frac(dot(_1101.xyx * _1101.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_982, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_1194.x ? _767.x : _1196.x, _1194.y ? _767.y : _1196.y, _1194.z ? _767.z : _1196.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _1131 = 0.0f.xxxx;
    _1131.x = _728;
    _1131.y = 1.0f;
    _1131.z = 1.0f;
    _1131.w = 1.0f;
    float4 _1136 = _1097 * View_View_PreExposure;
    float3 _1137 = _1136.xyz;
    bool3 _1245 = isnan(_1137);
    bool3 _1246 = isnan(32256.0f.xxx);
    float3 _1247 = min(_1137, 32256.0f.xxx);
    float3 _1248 = float3(_1245.x ? 32256.0f.xxx.x : _1247.x, _1245.y ? 32256.0f.xxx.y : _1247.y, _1245.z ? 32256.0f.xxx.z : _1247.z);
    float3 _1138 = float3(_1246.x ? _1137.x : _1248.x, _1246.y ? _1137.y : _1248.y, _1246.z ? _1137.z : _1248.z);
    out_var_SV_Target0 = float4(_1138.x, _1138.y, _1138.z, _1136.w);
    out_var_SV_Target1 = _1118;
    out_var_SV_Target2 = float4(_665, _664, _663, 0.56862747669219970703125f);
    out_var_SV_Target3 = _1125;
    out_var_SV_Target5 = _1131;
    gl_FragDepth = _601;
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
