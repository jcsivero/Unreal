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
    float4 _514 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _291, View_View_MaterialTextureMipBias);
    float4 _516 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _310, View_View_MaterialTextureMipBias);
    float4 _526 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _361, View_View_MaterialTextureMipBias);
    float4 _528 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _378, View_View_MaterialTextureMipBias);
    float4 _540 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _399, View_View_MaterialTextureMipBias);
    float4 _542 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _416, View_View_MaterialTextureMipBias);
    float3 _562 = clamp(mad(_468 * lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _399, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _416, View_View_MaterialTextureMipBias).xyz, _355), _431, mad(_468 * lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _291, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _310, View_View_MaterialTextureMipBias).xyz, _355), _357, (_468 * lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _361, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _378, View_View_MaterialTextureMipBias).xyz, _355)) * _393)), 0.0f.xxx, 1.0f.xxx);
    float _563 = clamp(mad(Material_Material_PreshaderBuffer[8].y, _287, mad(Material_Material_PreshaderBuffer[7].w, _281, Material_Material_PreshaderBuffer[8].x * _284)), 0.0f, 1.0f);
    float _567 = mad(clamp(mad(Material_Material_PreshaderBuffer[9].x * lerp(_540.y, _542.y, _352), _287, mad(Material_Material_PreshaderBuffer[8].z * lerp(_514.y, _516.y, _352), _281, (Material_Material_PreshaderBuffer[8].w * lerp(_526.y, _528.y, _352)) * _284)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _568 = clamp(mad(lerp(_540.x, _542.x, _352), _287, mad(lerp(_514.x, _516.x, _352), _281, lerp(_526.x, _528.x, _352) * _284)), 0.0f, 1.0f);
    uint _569 = in_var_PRIMITIVE_ID * 41u;
    float _615 = 0.0f;
    float _616 = 0.0f;
    float _617 = 0.0f;
    float3 _618 = 0.0f.xxx;
    float3 _619 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_569 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _585 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _589 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _585, 0.0f);
        float4 _593 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _585, 0.0f);
        float4 _597 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _585, 0.0f);
        float _607 = _597.w;
        _615 = mad(_567, _607, _597.z);
        _616 = mad(_563, _607, _597.y);
        _617 = _597.x;
        _618 = (_562 * _589.w) + _589.xyz;
        _619 = normalize((_440 * _593.w) + ((_593.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _615 = _567;
        _616 = _563;
        _617 = 0.0f;
        _618 = _562;
        _619 = _440;
    }
    uint _622 = asuint(asfloat(View_PrimitiveSceneData.Load4(_569 * 16 + 0)).x);
    bool _638 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _644 = 0.0f;
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_569 * 16 + 0)).x) & 2u) != 0u) && _638)
    {
        _644 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _644 = 1.0f;
    }
    float _694 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_569 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _662 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _274, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _673 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_662.x), int(_662.y), int(_662.z), 0).xyz, 0)));
        _694 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_673.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_662 / _673.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _694 = _644;
    }
    float3 _707 = ((_618 - (_618 * _617)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _714 = (lerp((0.07999999821186065673828125f * _616).xxx, _618, _617.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _717 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _722 = 0.0f.xxx;
    if (_717)
    {
        _722 = _707 + (_714 * 0.449999988079071044921875f);
    }
    else
    {
        _722 = _707;
    }
    bool3 _723 = _717.xxx;
    float3 _724 = float3(_723.x ? 0.0f.xxx.x : _714.x, _723.y ? 0.0f.xxx.y : _714.y, _723.z ? 0.0f.xxx.z : _714.z);
    float3 _726 = dot(_724, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _733 = _568.xxx;
    float3 _738 = ((((((_726 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _568) + ((_726 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _568) + ((_726 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _568;
    bool3 _980 = isnan(_733);
    bool3 _981 = isnan(_738);
    float3 _982 = max(_733, _738);
    float3 _983 = float3(_980.x ? _738.x : _982.x, _980.y ? _738.y : _982.y, _980.z ? _738.z : _982.z);
    float3 _802 = 0.0f.xxx;
    if (_638)
    {
        float3 _754 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _274, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _758 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _754);
        float4 _762 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _754);
        float4 _765 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _754);
        float4 _783 = 0.0f.xxxx;
        _783.y = (-0.48860299587249755859375f) * _619.y;
        _783.z = 0.48860299587249755859375f * _619.z;
        _783.w = (-0.48860299587249755859375f) * _619.x;
        _783.x = 0.886227548122406005859375f;
        float3 _792 = _783.yzw * 2.094395160675048828125f;
        float4 _793 = float4(_783.x, _792.x, _792.y, _792.z);
        float3 _795 = 0.0f.xxx;
        _795.x = dot(float4(_758.x, _762.x, _765.x, _758.w), _793);
        _795.y = dot(float4(_758.y, _762.y, _765.y, _762.w), _793);
        _795.z = dot(float4(_758.z, _762.z, _765.zw), _793);
        bool3 _987 = isnan(0.0f.xxx);
        bool3 _988 = isnan(_795);
        float3 _989 = max(0.0f.xxx, _795);
        float3 _990 = float3(_987.x ? _795.x : _989.x, _987.y ? _795.y : _989.y, _987.z ? _795.z : _989.z);
        _802 = float3(_988.x ? 0.0f.xxx.x : _990.x, _988.y ? 0.0f.xxx.y : _990.y, _988.z ? 0.0f.xxx.z : _990.z) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _802 = 0.0f.xxx;
    }
    float3 _805 = _802 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _818 = ((((((_618 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _568) + ((_618 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _568) + ((_618 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _568;
    bool3 _992 = isnan(_733);
    bool3 _993 = isnan(_818);
    float3 _994 = max(_733, _818);
    float3 _995 = float3(_992.x ? _818.x : _994.x, _992.y ? _818.y : _994.y, _992.z ? _818.z : _994.z);
    bool3 _997 = isnan(_447);
    bool3 _998 = isnan(0.0f.xxx);
    float3 _999 = max(_447, 0.0f.xxx);
    float3 _1000 = float3(_997.x ? 0.0f.xxx.x : _999.x, _997.y ? 0.0f.xxx.y : _999.y, _997.z ? 0.0f.xxx.z : _999.z);
    float3 _826 = float3(_998.x ? _447.x : _1000.x, _998.y ? _447.y : _1000.y, _998.z ? _447.z : _1000.z);
    float3 _906 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _852 = _569 + 31u;
        float3 _861 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_569 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_274 - asfloat(View_PrimitiveSceneData.Load4((_569 + 18u) * 16 + 0)).xyz));
        float3 _862 = float3(asfloat(View_PrimitiveSceneData.Load4((_569 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_569 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_569 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _905 = 0.0f.xxx;
        if (any(bool3(_861.x > _862.x, _861.y > _862.y, _861.z > _862.z)))
        {
            float3 _885 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _886 = _274 * 0.57700002193450927734375f.xxx;
            float3 _901 = frac(mad((_886.x + _886.y) + _886.z, 0.00200000009499490261077880859375f, frac(((_885.x + _885.y) + _885.z) * 4194.30419921875f))).xxx;
            _905 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_901.x > 0.5f.xxx.x, _901.y > 0.5f.xxx.y, _901.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _884 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_852 * 16 + 0)).x > 0.0f)
            {
                float3 _872 = abs(_273 - in_var_TEXCOORD9);
                float _873 = _872.x;
                float _874 = _872.y;
                float _875 = _872.z;
                float _876 = isnan(_875) ? _874 : (isnan(_874) ? _875 : max(_874, _875));
                _884 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_876) ? _873 : (isnan(_873) ? _876 : max(_873, _876))) - asfloat(View_PrimitiveSceneData.Load4(_852 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _884 = _826;
            }
            _905 = _884;
        }
        _906 = _905;
    }
    else
    {
        _906 = _826;
    }
    float4 _913 = float4((mad(_805 * _722, float3(_993.x ? _733.x : _995.x, _993.y ? _733.y : _995.y, _993.z ? _733.z : _995.z), lerp(0.0f.xxx, _722 + (_724 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _906) * 1.0f, 0.0f);
    float4 _920 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _919 = _913;
        _919.w = 0.0f;
        _920 = _919;
    }
    else
    {
        _920 = _913;
    }
    float2 _924 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _939 = (_619 * 0.5f) + 0.5f.xxx;
    float4 _941 = 0.0f.xxxx;
    _941.x = _939.x;
    _941.y = _939.y;
    _941.z = _939.z;
    _941.w = mad(2.0f, float((_622 & 256u) != 0u), float((_622 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _948 = 0.0f.xxxx;
    _948.x = _618.x;
    _948.y = _618.y;
    _948.z = _618.z;
    _948.w = mad(frac(dot(_924.xyx * _924.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_805, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * float3(_981.x ? _733.x : _983.x, _981.y ? _733.y : _983.y, _981.z ? _733.z : _983.z).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _954 = 0.0f.xxxx;
    _954.x = _694;
    _954.y = 1.0f;
    _954.z = 1.0f;
    _954.w = 1.0f;
    float4 _959 = _920 * View_View_PreExposure;
    float3 _960 = _959.xyz;
    bool3 _1016 = isnan(_960);
    bool3 _1017 = isnan(32256.0f.xxx);
    float3 _1018 = min(_960, 32256.0f.xxx);
    float3 _1019 = float3(_1016.x ? 32256.0f.xxx.x : _1018.x, _1016.y ? 32256.0f.xxx.y : _1018.y, _1016.z ? 32256.0f.xxx.z : _1018.z);
    float3 _961 = float3(_1017.x ? _960.x : _1019.x, _1017.y ? _960.y : _1019.y, _1017.z ? _960.z : _1019.z);
    out_var_SV_Target0 = float4(_961.x, _961.y, _961.z, _959.w);
    out_var_SV_Target1 = _941;
    out_var_SV_Target2 = float4(_617, _616, _615, 0.50588238239288330078125f);
    out_var_SV_Target3 = _948;
    out_var_SV_Target5 = _954;
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
