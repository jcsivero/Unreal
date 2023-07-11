#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _196 = 0.0f;
static float4 _197 = 0.0f.xxxx;

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
    float4 _235 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _239 = mad(float2(_235.zw), 2.0f.xx, (-1.0f).xx);
    float _241 = 1.0f - dot(_239, _239);
    float _243 = sqrt(isnan(0.0f) ? _241 : (isnan(_241) ? 0.0f : max(_241, 0.0f)));
    float _244 = _239.x;
    float3 _246 = float3(_244, _239.y, _243);
    float3 _249 = normalize(float3(_243, 0.0f, -_244));
    float4 _265 = float4(_196, _196, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _269 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _273 = _269.xyz / _269.w.xxx;
    float3 _274 = _273 - View_View_RelativePreViewTranslation;
    float4 _278 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _281 = dot(_278, Material_Material_PreshaderBuffer[1]);
    float _284 = dot(_278, Material_Material_PreshaderBuffer[2]);
    float _287 = dot(_278, Material_Material_PreshaderBuffer[3]);
    float2 _291 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[4].x.xx;
    float4 _297 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _291, View_View_MaterialTextureMipBias);
    float2 _299 = mad(_297.xy, 2.0f.xx, (-1.0f).xx);
    float2 _310 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[4].y.xx;
    float4 _312 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _310, View_View_MaterialTextureMipBias);
    float2 _314 = mad(_312.xy, 2.0f.xx, (-1.0f).xx);
    float _345 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _345 = _265.w;
            break;
        }
        else
        {
            float _330 = _265.z;
            _345 = mad(_330, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_330, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _352 = clamp((_345 + Material_Material_PreshaderBuffer[4].z) * Material_Material_PreshaderBuffer[5].x, 0.0f, 1.0f);
    float3 _355 = _352.xxx;
    float3 _357 = _281.xxx;
    float2 _361 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].y.xx;
    float2 _367 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _361, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _378 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].z.xx;
    float2 _382 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _378, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _393 = _284.xxx;
    float2 _399 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].w.xx;
    float2 _405 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _399, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _416 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[6].x.xx;
    float2 _420 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _416, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _431 = _287.xxx;
    float3 _436 = (mad(lerp(float4(_405, sqrt(clamp(1.0f - dot(_405, _405), 0.0f, 1.0f)), 1.0f).xyz, float4(_420, sqrt(clamp(1.0f - dot(_420, _420), 0.0f, 1.0f)), 1.0f).xyz, _355), _431, mad(lerp(float4(_299, sqrt(clamp(1.0f - dot(_299, _299), 0.0f, 1.0f)), 1.0f).xyz, float4(_314, sqrt(clamp(1.0f - dot(_314, _314), 0.0f, 1.0f)), 1.0f).xyz, _355), _357, lerp(float4(_367, sqrt(clamp(1.0f - dot(_367, _367), 0.0f, 1.0f)), 1.0f).xyz, float4(_382, sqrt(clamp(1.0f - dot(_382, _382), 0.0f, 1.0f)), 1.0f).xyz, _355) * _393)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz;
    float3 _440 = normalize(mul(normalize(_436), mul(float3x3(_249, cross(_246, _249), _246), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _447 = lerp(0.0f.xxx, Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].y.xxx);
    float3 _468 = lerp(0.5f.xxx, 1.0f.xxx, ((Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0 * 0.21340000629425048828125f.xx, View_View_MaterialTextureMipBias).x + 0.5f) * ((Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0 * 0.053410001099109649658203125f.xx, View_View_MaterialTextureMipBias).x + 0.5f) * (Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0 * 0.00200000009499490261077880859375f.xx, View_View_MaterialTextureMipBias).x + 0.5f))).xxx);
    float4 _513 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _291, View_View_MaterialTextureMipBias);
    float4 _515 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _310, View_View_MaterialTextureMipBias);
    float4 _525 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _361, View_View_MaterialTextureMipBias);
    float4 _527 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _378, View_View_MaterialTextureMipBias);
    float4 _539 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _399, View_View_MaterialTextureMipBias);
    float4 _541 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _416, View_View_MaterialTextureMipBias);
    float3 _561 = clamp(mad(_468 * lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _399, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _416, View_View_MaterialTextureMipBias).xyz, _355), _431, mad(_468 * lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _291, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _310, View_View_MaterialTextureMipBias).xyz, _355), _357, lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _361, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _378, View_View_MaterialTextureMipBias).xyz, _355) * _393)), 0.0f.xxx, 1.0f.xxx);
    float _562 = clamp(mad(Material_Material_PreshaderBuffer[8].y, _287, mad(Material_Material_PreshaderBuffer[7].w, _281, Material_Material_PreshaderBuffer[8].x * _284)), 0.0f, 1.0f);
    float _566 = mad(clamp(mad(Material_Material_PreshaderBuffer[9].x * lerp(_539.y, _541.y, _352), _287, mad(Material_Material_PreshaderBuffer[8].z * lerp(_513.y, _515.y, _352), _281, (Material_Material_PreshaderBuffer[8].w * lerp(_525.y, _527.y, _352)) * _284)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _567 = clamp(mad(lerp(_539.x, _541.x, _352), _287, mad(lerp(_513.x, _515.x, _352), _281, lerp(_525.x, _527.x, _352) * _284)), 0.0f, 1.0f);
    uint _568 = in_var_PRIMITIVE_ID * 41u;
    float _614 = 0.0f;
    float _615 = 0.0f;
    float _616 = 0.0f;
    float3 _617 = 0.0f.xxx;
    float3 _618 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_568 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _584 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _588 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _584, 0.0f);
        float4 _592 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _584, 0.0f);
        float4 _596 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _584, 0.0f);
        float _606 = _596.w;
        _614 = mad(_566, _606, _596.z);
        _615 = mad(_562, _606, _596.y);
        _616 = _596.x;
        _617 = (_561 * _588.w) + _588.xyz;
        _618 = normalize((_440 * _592.w) + ((_592.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _614 = _566;
        _615 = _562;
        _616 = 0.0f;
        _617 = _561;
        _618 = _440;
    }
    uint _621 = asuint(asfloat(View_PrimitiveSceneData.Load4(_568 * 16 + 0)).x);
    bool _637 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _643 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_568 * 16 + 0)).x) & 2u) != 0u) && _637)
    {
        _643 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _643 = 1.0f;
    }
    float _693 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_568 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _661 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _274, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _672 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_661.x), int(_661.y), int(_661.z), 0).xyz, 0)));
        _693 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_672.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_661 / _672.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _693 = _643;
    }
    float3 _706 = ((_617 - (_617 * _616)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _713 = (lerp((0.07999999821186065673828125f * _615).xxx, _617, _616.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _716 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _721 = 0.0f.xxx;
    if (_716)
    {
        _721 = _706 + (_713 * 0.449999988079071044921875f);
    }
    else
    {
        _721 = _706;
    }
    bool3 _722 = _716.xxx;
    float3 _723 = float3(_722.x ? 0.0f.xxx.x : _713.x, _722.y ? 0.0f.xxx.y : _713.y, _722.z ? 0.0f.xxx.z : _713.z);
    float3 _725 = dot(_723, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _732 = _567.xxx;
    float3 _737 = ((((((_725 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _567) + ((_725 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _567) + ((_725 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _567;
    bool3 _979 = isnan(_732);
    bool3 _980 = isnan(_737);
    float3 _981 = max(_732, _737);
    float3 _982 = float3(_979.x ? _737.x : _981.x, _979.y ? _737.y : _981.y, _979.z ? _737.z : _981.z);
    float3 _801 = 0.0f.xxx;
    if (_637)
    {
        float3 _753 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _274, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _757 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _753);
        float4 _761 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _753);
        float4 _764 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _753);
        float4 _782 = 0.0f.xxxx;
        _782.y = (-0.48860299587249755859375f) * _618.y;
        _782.z = 0.48860299587249755859375f * _618.z;
        _782.w = (-0.48860299587249755859375f) * _618.x;
        _782.x = 0.886227548122406005859375f;
        float3 _791 = _782.yzw * 2.094395160675048828125f;
        float4 _792 = float4(_782.x, _791.x, _791.y, _791.z);
        float3 _794 = 0.0f.xxx;
        _794.x = dot(float4(_757.x, _761.x, _764.x, _757.w), _792);
        _794.y = dot(float4(_757.y, _761.y, _764.y, _761.w), _792);
        _794.z = dot(float4(_757.z, _761.z, _764.zw), _792);
        bool3 _986 = isnan(0.0f.xxx);
        bool3 _987 = isnan(_794);
        float3 _988 = max(0.0f.xxx, _794);
        float3 _989 = float3(_986.x ? _794.x : _988.x, _986.y ? _794.y : _988.y, _986.z ? _794.z : _988.z);
        _801 = float3(_987.x ? 0.0f.xxx.x : _989.x, _987.y ? 0.0f.xxx.y : _989.y, _987.z ? 0.0f.xxx.z : _989.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _801 = 0.0f.xxx;
    }
    float3 _804 = _801 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _817 = ((((((_617 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _567) + ((_617 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _567) + ((_617 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _567;
    bool3 _991 = isnan(_732);
    bool3 _992 = isnan(_817);
    float3 _993 = max(_732, _817);
    float3 _994 = float3(_991.x ? _817.x : _993.x, _991.y ? _817.y : _993.y, _991.z ? _817.z : _993.z);
    bool3 _996 = isnan(_447);
    bool3 _997 = isnan(0.0f.xxx);
    float3 _998 = max(_447, 0.0f.xxx);
    float3 _999 = float3(_996.x ? 0.0f.xxx.x : _998.x, _996.y ? 0.0f.xxx.y : _998.y, _996.z ? 0.0f.xxx.z : _998.z);
    float3 _825 = float3(_997.x ? _447.x : _999.x, _997.y ? _447.y : _999.y, _997.z ? _447.z : _999.z);
    float3 _905 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _851 = _568 + 31u;
        float3 _860 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_568 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_274 - asfloat(View_PrimitiveSceneData.Load4((_568 + 18u) * 16 + 0)).xyz));
        float3 _861 = float3(asfloat(View_PrimitiveSceneData.Load4((_568 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_568 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_568 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _904 = 0.0f.xxx;
        if (any(bool3(_860.x > _861.x, _860.y > _861.y, _860.z > _861.z)))
        {
            float3 _884 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _885 = _274 * 0.57700002193450927734375f.xxx;
            float3 _900 = frac(mad((_885.x + _885.y) + _885.z, 0.00200000009499490261077880859375f, frac(((_884.x + _884.y) + _884.z) * 4194.30419921875f))).xxx;
            _904 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_900.x > 0.5f.xxx.x, _900.y > 0.5f.xxx.y, _900.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _883 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_851 * 16 + 0)).x > 0.0f)
            {
                float3 _871 = abs(_273 - in_var_TEXCOORD9);
                float _872 = _871.x;
                float _873 = _871.y;
                float _874 = _871.z;
                float _875 = isnan(_874) ? _873 : (isnan(_873) ? _874 : max(_873, _874));
                _883 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_875) ? _872 : (isnan(_872) ? _875 : max(_872, _875))) - asfloat(View_PrimitiveSceneData.Load4(_851 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _883 = _825;
            }
            _904 = _883;
        }
        _905 = _904;
    }
    else
    {
        _905 = _825;
    }
    float4 _912 = float4((mad(_804 * _721, float3(_992.x ? _732.x : _994.x, _992.y ? _732.y : _994.y, _992.z ? _732.z : _994.z), lerp(0.0f.xxx, _721 + (_723 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _905) * 1.0f, 0.0f);
    float4 _919 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _918 = _912;
        _918.w = 0.0f;
        _919 = _918;
    }
    else
    {
        _919 = _912;
    }
    float2 _923 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _938 = (_618 * 0.5f) + 0.5f.xxx;
    float4 _940 = 0.0f.xxxx;
    _940.x = _938.x;
    _940.y = _938.y;
    _940.z = _938.z;
    _940.w = mad(2.0f, float((_621 & 256u) != 0u), float((_621 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _947 = 0.0f.xxxx;
    _947.x = _617.x;
    _947.y = _617.y;
    _947.z = _617.z;
    _947.w = mad(frac(dot(_923.xyx * _923.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_804, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_980.x ? _732.x : _982.x, _980.y ? _732.y : _982.y, _980.z ? _732.z : _982.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _953 = 0.0f.xxxx;
    _953.x = _693;
    _953.y = 1.0f;
    _953.z = 1.0f;
    _953.w = 1.0f;
    float4 _958 = _919 * View_View_PreExposure;
    float3 _959 = _958.xyz;
    bool3 _1015 = isnan(_959);
    bool3 _1016 = isnan(32256.0f.xxx);
    float3 _1017 = min(_959, 32256.0f.xxx);
    float3 _1018 = float3(_1015.x ? 32256.0f.xxx.x : _1017.x, _1015.y ? 32256.0f.xxx.y : _1017.y, _1015.z ? 32256.0f.xxx.z : _1017.z);
    float3 _960 = float3(_1016.x ? _959.x : _1018.x, _1016.y ? _959.y : _1018.y, _1016.z ? _959.z : _1018.z);
    out_var_SV_Target0 = float4(_960.x, _960.y, _960.z, _958.w);
    out_var_SV_Target1 = _940;
    out_var_SV_Target2 = float4(_616, _615, _614, 0.50588238239288330078125f);
    out_var_SV_Target3 = _947;
    out_var_SV_Target5 = _953;
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
