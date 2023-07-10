#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _179 = 0.0f;

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
    float4 Material_Material_PreshaderBuffer[14] : packoffset(c0);
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
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
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
Texture2D<float4> Material_Texture2D_13;
SamplerState Material_Texture2D_13Sampler;

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
    float4 _215 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _219 = mad(float2(_215.zw), 2.0f.xx, (-1.0f).xx);
    float _221 = 1.0f - dot(_219, _219);
    float _223 = sqrt(isnan(0.0f) ? _221 : (isnan(_221) ? 0.0f : max(_221, 0.0f)));
    float _224 = _219.x;
    float3 _226 = float3(_224, _219.y, _223);
    float3 _229 = normalize(float3(_223, 0.0f, -_224));
    float4 _245 = float4(_179, _179, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _249 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _253 = _249.xyz / _249.w.xxx;
    float3 _254 = _253 - View_View_RelativePreViewTranslation;
    float2 _258 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[1].x.xx;
    float4 _264 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _258, View_View_MaterialTextureMipBias);
    float2 _266 = mad(_264.xy, 2.0f.xx, (-1.0f).xx);
    float _270 = sqrt(clamp(1.0f - dot(_266, _266), 0.0f, 1.0f));
    float4 _277 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _258, View_View_MaterialTextureMipBias);
    float _301 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _301 = _245.w;
            break;
        }
        else
        {
            float _286 = _245.z;
            _301 = mad(_286, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_286, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _308 = clamp((_301 + Material_Material_PreshaderBuffer[1].y) * Material_Material_PreshaderBuffer[1].w, 0.0f, 1.0f);
    float4 _317 = Material_Texture2D_2.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _322 = lerp(-1.0f, 1.0f, dot(_317, Material_Material_PreshaderBuffer[3])) + lerp(lerp(_270, _277.z, _308), 1.0f, Material_Material_PreshaderBuffer[2].x);
    float _323 = isnan(9.9999997473787516355514526367188e-05f) ? _322 : (isnan(_322) ? 9.9999997473787516355514526367188e-05f : max(_322, 9.9999997473787516355514526367188e-05f));
    float _324 = isnan(1.0f) ? _323 : (isnan(_323) ? 1.0f : min(_323, 1.0f));
    float2 _328 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[4].x.xx;
    float2 _334 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _328, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _338 = sqrt(clamp(1.0f - dot(_334, _334), 0.0f, 1.0f));
    float4 _345 = Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _328, View_View_MaterialTextureMipBias);
    float _353 = lerp(-1.0f, 1.0f, dot(_317, Material_Material_PreshaderBuffer[5])) + lerp(lerp(_338, _345.z, _308), 1.0f, Material_Material_PreshaderBuffer[2].x);
    float _354 = isnan(9.9999997473787516355514526367188e-05f) ? _353 : (isnan(_353) ? 9.9999997473787516355514526367188e-05f : max(_353, 9.9999997473787516355514526367188e-05f));
    float _355 = isnan(1.0f) ? _354 : (isnan(_354) ? 1.0f : min(_354, 1.0f));
    float2 _360 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[6].x.xx;
    float2 _366 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _360, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _370 = sqrt(clamp(1.0f - dot(_366, _366), 0.0f, 1.0f));
    float4 _377 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _360, View_View_MaterialTextureMipBias);
    float _385 = lerp(-1.0f, 1.0f, dot(_317, Material_Material_PreshaderBuffer[7])) + lerp(lerp(_370, _377.z, _308), 1.0f, Material_Material_PreshaderBuffer[2].x);
    float _386 = isnan(9.9999997473787516355514526367188e-05f) ? _385 : (isnan(_385) ? 9.9999997473787516355514526367188e-05f : max(_385, 9.9999997473787516355514526367188e-05f));
    float _387 = isnan(1.0f) ? _386 : (isnan(_386) ? 1.0f : min(_386, 1.0f));
    float2 _392 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[8].x.xx;
    float4 _396 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _392, View_View_MaterialTextureMipBias);
    float2 _398 = mad(_396.xy, 2.0f.xx, (-1.0f).xx);
    float _402 = sqrt(clamp(1.0f - dot(_398, _398), 0.0f, 1.0f));
    float4 _409 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _392, View_View_MaterialTextureMipBias);
    float _417 = lerp(-1.0f, 1.0f, dot(_317, Material_Material_PreshaderBuffer[9])) + lerp(lerp(_402, _409.z, _308), 1.0f, Material_Material_PreshaderBuffer[2].x);
    float _418 = isnan(9.9999997473787516355514526367188e-05f) ? _417 : (isnan(_417) ? 9.9999997473787516355514526367188e-05f : max(_417, 9.9999997473787516355514526367188e-05f));
    float _419 = isnan(1.0f) ? _418 : (isnan(_418) ? 1.0f : min(_418, 1.0f));
    float _421 = 1.0f / (((_324 + _355) + _387) + _419);
    float2 _425 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[10].x.xx;
    float2 _429 = mad(Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _425, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _439 = _308.xxx;
    float _441 = _421 * _324;
    float3 _442 = _441.xxx;
    float2 _446 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[10].y.xx;
    float2 _450 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _446, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _461 = _421 * _355;
    float3 _462 = _461.xxx;
    float2 _468 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[10].z.xx;
    float2 _472 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _468, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _483 = _421 * _387;
    float3 _484 = _483.xxx;
    float2 _489 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[10].w.xx;
    float2 _493 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _489, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _504 = _421 * _419;
    float3 _505 = _504.xxx;
    float3 _509 = mad(lerp(float4(_493, sqrt(clamp(1.0f - dot(_493, _493), 0.0f, 1.0f)), 1.0f).xyz, float4(_398, _402, 1.0f).xyz, _439), _505, mad(lerp(float4(_472, sqrt(clamp(1.0f - dot(_472, _472), 0.0f, 1.0f)), 1.0f).xyz, float4(_366, _370, 1.0f).xyz, _439), _484, mad(lerp(float4(_429, sqrt(clamp(1.0f - dot(_429, _429), 0.0f, 1.0f)), 1.0f).xyz, float4(_266, _270, 1.0f).xyz, _439), _442, lerp(float4(_450, sqrt(clamp(1.0f - dot(_450, _450), 0.0f, 1.0f)), 1.0f).xyz, float4(_334, _338, 1.0f).xyz, _439) * _462))) * View_View_NormalOverrideParameter.w;
    float3 _514 = normalize(mul(normalize(_509 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_229, cross(_226, _229), _226), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _521 = lerp(0.0f.xxx, Material_Material_PreshaderBuffer[11].yzw, Material_Material_PreshaderBuffer[11].x.xxx);
    float3 _542 = lerp(0.5f.xxx, 1.0f.xxx, ((Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0 * 0.21340000629425048828125f.xx, View_View_MaterialTextureMipBias).x + 0.5f) * ((Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0 * 0.053410001099109649658203125f.xx, View_View_MaterialTextureMipBias).x + 0.5f) * (Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0 * 0.00200000009499490261077880859375f.xx, View_View_MaterialTextureMipBias).x + 0.5f))).xxx);
    float4 _626 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _489, View_View_MaterialTextureMipBias);
    float3 _634 = clamp(mad(_542 * lerp(Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _489, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _392, View_View_MaterialTextureMipBias).xyz, _439), _505, mad(_542 * lerp(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _468, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _360, View_View_MaterialTextureMipBias).xyz, _439), _484, mad(_542 * lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _425, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _258, View_View_MaterialTextureMipBias).xyz, _439), _442, lerp(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _446, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _328, View_View_MaterialTextureMipBias).xyz, _439) * _462))), 0.0f.xxx, 1.0f.xxx);
    float _635 = clamp(mad(Material_Material_PreshaderBuffer[12].w, _504, mad(Material_Material_PreshaderBuffer[12].z, _483, mad(Material_Material_PreshaderBuffer[12].x, _441, Material_Material_PreshaderBuffer[12].y * _461))), 0.0f, 1.0f);
    float _639 = mad(clamp(mad(Material_Material_PreshaderBuffer[13].w * lerp(_626.y, _409.y, _308), _504, mad(Material_Material_PreshaderBuffer[13].z * lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _468, View_View_MaterialTextureMipBias).y, _377.y, _308), _483, mad(Material_Material_PreshaderBuffer[13].x * lerp(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _425, View_View_MaterialTextureMipBias).y, _277.y, _308), _441, (Material_Material_PreshaderBuffer[13].y * lerp(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _446, View_View_MaterialTextureMipBias).y, _345.y, _308)) * _461))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _640 = in_var_PRIMITIVE_ID * 41u;
    float _686 = 0.0f;
    float _687 = 0.0f;
    float _688 = 0.0f;
    float3 _689 = 0.0f.xxx;
    float3 _690 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_640 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _656 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _660 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _656, 0.0f);
        float4 _664 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _656, 0.0f);
        float4 _668 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _656, 0.0f);
        float _678 = _668.w;
        _686 = mad(_639, _678, _668.z);
        _687 = mad(_635, _678, _668.y);
        _688 = _668.x;
        _689 = (_634 * _660.w) + _660.xyz;
        _690 = normalize((_514 * _664.w) + ((_664.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _686 = _639;
        _687 = _635;
        _688 = 0.0f;
        _689 = _634;
        _690 = _514;
    }
    uint _693 = asuint(asfloat(View_PrimitiveSceneData.Load4(_640 * 16 + 0)).x);
    float _751 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_640 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _719 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _254, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _730 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_719.x), int(_719.y), int(_719.z), 0).xyz, 0)));
        _751 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_730.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_719 / _730.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _751 = 1.0f;
    }
    float3 _764 = ((_689 - (_689 * _688)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _771 = (lerp((0.07999999821186065673828125f * _687).xxx, _689, _688.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _774 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _779 = 0.0f.xxx;
    if (_774)
    {
        _779 = _764 + (_771 * 0.449999988079071044921875f);
    }
    else
    {
        _779 = _764;
    }
    bool3 _780 = _774.xxx;
    bool3 _975 = isnan(_521);
    bool3 _976 = isnan(0.0f.xxx);
    float3 _977 = max(_521, 0.0f.xxx);
    float3 _978 = float3(_975.x ? 0.0f.xxx.x : _977.x, _975.y ? 0.0f.xxx.y : _977.y, _975.z ? 0.0f.xxx.z : _977.z);
    float3 _788 = float3(_976.x ? _521.x : _978.x, _976.y ? _521.y : _978.y, _976.z ? _521.z : _978.z);
    float3 _868 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _814 = _640 + 31u;
        float3 _823 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_640 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_254 - asfloat(View_PrimitiveSceneData.Load4((_640 + 18u) * 16 + 0)).xyz));
        float3 _824 = float3(asfloat(View_PrimitiveSceneData.Load4((_640 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_640 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_640 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _867 = 0.0f.xxx;
        if (any(bool3(_823.x > _824.x, _823.y > _824.y, _823.z > _824.z)))
        {
            float3 _847 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _848 = _254 * 0.57700002193450927734375f.xxx;
            float3 _863 = frac(mad((_848.x + _848.y) + _848.z, 0.00200000009499490261077880859375f, frac(((_847.x + _847.y) + _847.z) * 4194.30419921875f))).xxx;
            _867 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_863.x > 0.5f.xxx.x, _863.y > 0.5f.xxx.y, _863.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _846 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_814 * 16 + 0)).x > 0.0f)
            {
                float3 _834 = abs(_253 - in_var_TEXCOORD9);
                float _835 = _834.x;
                float _836 = _834.y;
                float _837 = _834.z;
                float _838 = isnan(_837) ? _836 : (isnan(_836) ? _837 : max(_836, _837));
                _846 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_838) ? _835 : (isnan(_835) ? _838 : max(_835, _838))) - asfloat(View_PrimitiveSceneData.Load4(_814 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _846 = _788;
            }
            _867 = _846;
        }
        _868 = _867;
    }
    else
    {
        _868 = _788;
    }
    float4 _874 = float4((lerp(0.0f.xxx, _779 + (float3(_780.x ? 0.0f.xxx.x : _771.x, _780.y ? 0.0f.xxx.y : _771.y, _780.z ? 0.0f.xxx.z : _771.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _868) * 1.0f, 0.0f);
    float4 _881 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _880 = _874;
        _880.w = 0.0f;
        _881 = _880;
    }
    else
    {
        _881 = _874;
    }
    float2 _885 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _894 = (_690 * 0.5f) + 0.5f.xxx;
    float4 _896 = 0.0f.xxxx;
    _896.x = _894.x;
    _896.y = _894.y;
    _896.z = _894.z;
    _896.w = mad(2.0f, float((_693 & 256u) != 0u), float((_693 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _903 = 0.0f.xxxx;
    _903.x = _689.x;
    _903.y = _689.y;
    _903.z = _689.z;
    _903.w = (frac(dot(_885.xyx * _885.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _909 = 0.0f.xxxx;
    _909.x = _751;
    _909.y = 1.0f;
    _909.z = 1.0f;
    _909.w = 1.0f;
    float4 _916 = _881 * View_View_PreExposure;
    float3 _917 = _916.xyz;
    bool3 _994 = isnan(_917);
    bool3 _995 = isnan(32256.0f.xxx);
    float3 _996 = min(_917, 32256.0f.xxx);
    float3 _997 = float3(_994.x ? 32256.0f.xxx.x : _996.x, _994.y ? 32256.0f.xxx.y : _996.y, _994.z ? 32256.0f.xxx.z : _996.z);
    float3 _918 = float3(_995.x ? _917.x : _997.x, _995.y ? _917.y : _997.y, _995.z ? _917.z : _997.z);
    out_var_SV_Target0 = float4(_918.x, _918.y, _918.z, _916.w);
    out_var_SV_Target1 = _896;
    out_var_SV_Target2 = float4(_688, _687, _686, 0.50588238239288330078125f);
    out_var_SV_Target3 = _903;
    out_var_SV_Target5 = _909;
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
