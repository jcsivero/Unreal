#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _190 = 0.0f;
static float3 _191 = 0.0f.xxx;

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
    float4 Material_Material_PreshaderBuffer[11] : packoffset(c0);
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
    float4 _229 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _233 = mad(float2(_229.zw), 2.0f.xx, (-1.0f).xx);
    float _235 = 1.0f - dot(_233, _233);
    float _237 = sqrt(isnan(0.0f) ? _235 : (isnan(_235) ? 0.0f : max(_235, 0.0f)));
    float _238 = _233.x;
    float3 _240 = float3(_238, _233.y, _237);
    float3 _243 = normalize(float3(_237, 0.0f, -_238));
    float4 _259 = float4(_190, _190, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _263 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _267 = _263.xyz / _263.w.xxx;
    float3 _268 = _267 - View_View_RelativePreViewTranslation;
    float4 _272 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _275 = dot(_272, Material_Material_PreshaderBuffer[1]);
    float _278 = dot(_272, Material_Material_PreshaderBuffer[2]);
    float _281 = dot(_272, Material_Material_PreshaderBuffer[3]);
    float _284 = dot(_272, Material_Material_PreshaderBuffer[4]);
    float2 _288 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].x.xx;
    float4 _294 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _288, View_View_MaterialTextureMipBias);
    float2 _296 = mad(_294.xy, 2.0f.xx, (-1.0f).xx);
    float2 _307 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[5].y.xx;
    float4 _309 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _307, View_View_MaterialTextureMipBias);
    float2 _311 = mad(_309.xy, 2.0f.xx, (-1.0f).xx);
    float _342 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _342 = _259.w;
            break;
        }
        else
        {
            float _327 = _259.z;
            _342 = mad(_327, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_327, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float _349 = clamp((_342 + Material_Material_PreshaderBuffer[5].z) * Material_Material_PreshaderBuffer[6].x, 0.0f, 1.0f);
    float3 _352 = _349.xxx;
    float3 _354 = _275.xxx;
    float2 _358 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[6].y.xx;
    float2 _364 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _358, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _375 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[6].z.xx;
    float2 _379 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _375, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _390 = _278.xxx;
    float2 _396 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[6].w.xx;
    float2 _402 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _396, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _413 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[7].x.xx;
    float2 _417 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _413, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _428 = _281.xxx;
    float2 _433 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[7].y.xx;
    float2 _439 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _433, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _450 = in_var_TEXCOORD0 * Material_Material_PreshaderBuffer[7].z.xx;
    float2 _454 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _450, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _465 = _284.xxx;
    float3 _469 = mad(lerp(float4(_439, sqrt(clamp(1.0f - dot(_439, _439), 0.0f, 1.0f)), 1.0f).xyz, float4(_454, sqrt(clamp(1.0f - dot(_454, _454), 0.0f, 1.0f)), 1.0f).xyz, _352), _465, mad(lerp(float4(_402, sqrt(clamp(1.0f - dot(_402, _402), 0.0f, 1.0f)), 1.0f).xyz, float4(_417, sqrt(clamp(1.0f - dot(_417, _417), 0.0f, 1.0f)), 1.0f).xyz, _352), _428, mad(lerp(float4(_296, sqrt(clamp(1.0f - dot(_296, _296), 0.0f, 1.0f)), 1.0f).xyz, float4(_311, sqrt(clamp(1.0f - dot(_311, _311), 0.0f, 1.0f)), 1.0f).xyz, _352), _354, lerp(float4(_364, sqrt(clamp(1.0f - dot(_364, _364), 0.0f, 1.0f)), 1.0f).xyz, float4(_379, sqrt(clamp(1.0f - dot(_379, _379), 0.0f, 1.0f)), 1.0f).xyz, _352) * _390))) * View_View_NormalOverrideParameter.w;
    float3 _474 = normalize(mul(normalize(_469 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_243, cross(_240, _243), _240), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _481 = lerp(0.0f.xxx, Material_Material_PreshaderBuffer[8].xyz, Material_Material_PreshaderBuffer[7].w.xxx);
    float4 _486 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0 * 0.21340000629425048828125f.xx, View_View_MaterialTextureMipBias);
    float4 _491 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0 * 0.053410001099109649658203125f.xx, View_View_MaterialTextureMipBias);
    float4 _496 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0 * 0.00200000009499490261077880859375f.xx, View_View_MaterialTextureMipBias);
    float3 _502 = lerp(0.5f.xxx, 1.0f.xxx, ((_486.x + 0.5f) * ((_491.x + 0.5f) * (_496.x + 0.5f))).xxx);
    float4 _538 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _433, View_View_MaterialTextureMipBias);
    float4 _540 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _450, View_View_MaterialTextureMipBias);
    float4 _561 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _288, View_View_MaterialTextureMipBias);
    float4 _563 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _307, View_View_MaterialTextureMipBias);
    float4 _573 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _358, View_View_MaterialTextureMipBias);
    float4 _575 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _375, View_View_MaterialTextureMipBias);
    float4 _587 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _396, View_View_MaterialTextureMipBias);
    float4 _589 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _413, View_View_MaterialTextureMipBias);
    float4 _600 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _433, View_View_MaterialTextureMipBias);
    float4 _602 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _450, View_View_MaterialTextureMipBias);
    float3 _626 = clamp(mad(_502 * lerp(_538.xyz, _540.xyz, _352), _465, mad(_502 * lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _396, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _413, View_View_MaterialTextureMipBias).xyz, _352), _428, mad(_502 * lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _288, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _307, View_View_MaterialTextureMipBias).xyz, _352), _354, lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _358, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _375, View_View_MaterialTextureMipBias).xyz, _352) * _390))), 0.0f.xxx, 1.0f.xxx);
    float _627 = clamp(mad(Material_Material_PreshaderBuffer[9].z, _284, mad(Material_Material_PreshaderBuffer[9].y, _281, mad(Material_Material_PreshaderBuffer[8].w, _275, Material_Material_PreshaderBuffer[9].x * _278))), 0.0f, 1.0f);
    float _631 = mad(clamp(mad(Material_Material_PreshaderBuffer[10].z * lerp(_600.y, _602.y, _349), _284, mad(Material_Material_PreshaderBuffer[10].y * lerp(_587.y, _589.y, _349), _281, mad(Material_Material_PreshaderBuffer[9].w * lerp(_561.y, _563.y, _349), _275, (Material_Material_PreshaderBuffer[10].x * lerp(_573.y, _575.y, _349)) * _278))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _632 = clamp(mad(lerp(_600.x, _602.x, _349), _284, mad(lerp(_587.x, _589.x, _349), _281, mad(lerp(_561.x, _563.x, _349), _275, lerp(_573.x, _575.x, _349) * _278))), 0.0f, 1.0f);
    uint _633 = in_var_PRIMITIVE_ID * 41u;
    float _679 = 0.0f;
    float _680 = 0.0f;
    float _681 = 0.0f;
    float3 _682 = 0.0f.xxx;
    float3 _683 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_633 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _649 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _653 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _649, 0.0f);
        float4 _657 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _649, 0.0f);
        float4 _661 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _649, 0.0f);
        float _671 = _661.w;
        _679 = mad(_631, _671, _661.z);
        _680 = mad(_627, _671, _661.y);
        _681 = _661.x;
        _682 = (_626 * _653.w) + _653.xyz;
        _683 = normalize((_474 * _657.w) + ((_657.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _679 = _631;
        _680 = _627;
        _681 = 0.0f;
        _682 = _626;
        _683 = _474;
    }
    uint _686 = asuint(asfloat(View_PrimitiveSceneData.Load4(_633 * 16 + 0)).x);
    float _744 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_633 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _712 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _268, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _723 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_712.x), int(_712.y), int(_712.z), 0).xyz, 0)));
        _744 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_723.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_712 / _723.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _744 = 1.0f;
    }
    float3 _757 = ((_682 - (_682 * _681)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _764 = (lerp((0.07999999821186065673828125f * _680).xxx, _682, _681.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _767 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _772 = 0.0f.xxx;
    if (_767)
    {
        _772 = _757 + (_764 * 0.449999988079071044921875f);
    }
    else
    {
        _772 = _757;
    }
    bool3 _773 = _767.xxx;
    float3 _824 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _783 = float4(_683, 1.0f);
        float3 _787 = 0.0f.xxx;
        _787.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _783);
        _787.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _783);
        _787.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _783);
        float4 _798 = _783.xyzz * _783.yzzx;
        float3 _802 = 0.0f.xxx;
        _802.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _798);
        _802.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _798);
        _802.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _798);
        float3 _819 = (_787 + _802) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_683.x, _683.x, -(_683.y * _683.y)));
        bool3 _997 = isnan(0.0f.xxx);
        bool3 _998 = isnan(_819);
        float3 _999 = max(0.0f.xxx, _819);
        float3 _1000 = float3(_997.x ? _819.x : _999.x, _997.y ? _819.y : _999.y, _997.z ? _819.z : _999.z);
        _824 = (float3(_998.x ? 0.0f.xxx.x : _1000.x, _998.y ? 0.0f.xxx.y : _1000.y, _998.z ? 0.0f.xxx.z : _1000.z) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _824 = 0.0f.xxx;
    }
    float3 _832 = _632.xxx;
    float3 _837 = ((((((_682 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _632) + ((_682 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _632) + ((_682 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _632;
    bool3 _1002 = isnan(_832);
    bool3 _1003 = isnan(_837);
    float3 _1004 = max(_832, _837);
    float3 _1005 = float3(_1002.x ? _837.x : _1004.x, _1002.y ? _837.y : _1004.y, _1002.z ? _837.z : _1004.z);
    bool3 _1007 = isnan(_481);
    bool3 _1008 = isnan(0.0f.xxx);
    float3 _1009 = max(_481, 0.0f.xxx);
    float3 _1010 = float3(_1007.x ? 0.0f.xxx.x : _1009.x, _1007.y ? 0.0f.xxx.y : _1009.y, _1007.z ? 0.0f.xxx.z : _1009.z);
    float3 _845 = float3(_1008.x ? _481.x : _1010.x, _1008.y ? _481.y : _1010.y, _1008.z ? _481.z : _1010.z);
    float3 _925 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _871 = _633 + 31u;
        float3 _880 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_633 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_268 - asfloat(View_PrimitiveSceneData.Load4((_633 + 18u) * 16 + 0)).xyz));
        float3 _881 = float3(asfloat(View_PrimitiveSceneData.Load4((_633 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_633 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_633 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _924 = 0.0f.xxx;
        if (any(bool3(_880.x > _881.x, _880.y > _881.y, _880.z > _881.z)))
        {
            float3 _904 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _905 = _268 * 0.57700002193450927734375f.xxx;
            float3 _920 = frac(mad((_905.x + _905.y) + _905.z, 0.00200000009499490261077880859375f, frac(((_904.x + _904.y) + _904.z) * 4194.30419921875f))).xxx;
            _924 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_920.x > 0.5f.xxx.x, _920.y > 0.5f.xxx.y, _920.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _903 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_871 * 16 + 0)).x > 0.0f)
            {
                float3 _891 = abs(_267 - in_var_TEXCOORD9);
                float _892 = _891.x;
                float _893 = _891.y;
                float _894 = _891.z;
                float _895 = isnan(_894) ? _893 : (isnan(_893) ? _894 : max(_893, _894));
                _903 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_895) ? _892 : (isnan(_892) ? _895 : max(_892, _895))) - asfloat(View_PrimitiveSceneData.Load4(_871 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _903 = _845;
            }
            _924 = _903;
        }
        _925 = _924;
    }
    else
    {
        _925 = _845;
    }
    float4 _932 = float4((mad(_824 * _772, float3(_1003.x ? _832.x : _1005.x, _1003.y ? _832.y : _1005.y, _1003.z ? _832.z : _1005.z), lerp(0.0f.xxx, _772 + (float3(_773.x ? 0.0f.xxx.x : _764.x, _773.y ? 0.0f.xxx.y : _764.y, _773.z ? 0.0f.xxx.z : _764.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _925) * 1.0f, 0.0f);
    float4 _939 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _938 = _932;
        _938.w = 0.0f;
        _939 = _938;
    }
    else
    {
        _939 = _932;
    }
    float2 _943 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _952 = (_683 * 0.5f) + 0.5f.xxx;
    float4 _954 = 0.0f.xxxx;
    _954.x = _952.x;
    _954.y = _952.y;
    _954.z = _952.z;
    _954.w = mad(2.0f, float((_686 & 256u) != 0u), float((_686 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _961 = 0.0f.xxxx;
    _961.x = _682.x;
    _961.y = _682.y;
    _961.z = _682.z;
    _961.w = (frac(dot(_943.xyx * _943.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _967 = 0.0f.xxxx;
    _967.x = _744;
    _967.y = 1.0f;
    _967.z = 1.0f;
    _967.w = 1.0f;
    float4 _974 = _939 * View_View_PreExposure;
    float3 _975 = _974.xyz;
    bool3 _1026 = isnan(_975);
    bool3 _1027 = isnan(32256.0f.xxx);
    float3 _1028 = min(_975, 32256.0f.xxx);
    float3 _1029 = float3(_1026.x ? 32256.0f.xxx.x : _1028.x, _1026.y ? 32256.0f.xxx.y : _1028.y, _1026.z ? 32256.0f.xxx.z : _1028.z);
    float3 _976 = float3(_1027.x ? _975.x : _1029.x, _1027.y ? _975.y : _1029.y, _1027.z ? _975.z : _1029.z);
    out_var_SV_Target0 = float4(_976.x, _976.y, _976.z, _974.w);
    out_var_SV_Target1 = _954;
    out_var_SV_Target2 = float4(_681, _680, _679, 0.50588238239288330078125f);
    out_var_SV_Target3 = _961;
    out_var_SV_Target5 = _967;
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
