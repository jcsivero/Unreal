#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _181 = 0.0f;
static float3 _182 = 0.0f.xxx;

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
    float4 _224 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _228 = mad(float2(_224.zw), 2.0f.xx, (-1.0f).xx);
    float _230 = 1.0f - dot(_228, _228);
    float _232 = sqrt(isnan(0.0f) ? _230 : (isnan(_230) ? 0.0f : max(_230, 0.0f)));
    float _233 = _228.x;
    float3 _235 = float3(_233, _228.y, _232);
    float3 _238 = normalize(float3(_232, 0.0f, -_233));
    float4 _254 = float4(_181, _181, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _258 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _262 = _258.xyz / _258.w.xxx;
    float3 _272 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _272 = -View_View_ViewForward;
    }
    else
    {
        _272 = normalize(-_262);
    }
    float4 _276 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _279 = dot(_276, Material_Material_PreshaderBuffer[1]);
    float _282 = dot(_276, Material_Material_PreshaderBuffer[2]);
    float _285 = dot(_276, Material_Material_PreshaderBuffer[3]);
    float _288 = dot(_276, Material_Material_PreshaderBuffer[4]);
    float2 _289 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _293 = _289 * Material_Material_PreshaderBuffer[5].y.xx;
    float2 _301 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _293, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _312 = _289 * Material_Material_PreshaderBuffer[5].w.xx;
    float2 _316 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _327 = _279.xxx;
    float2 _333 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _293, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _344 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _354 = lerp(float4(_333, sqrt(clamp(1.0f - dot(_333, _333), 0.0f, 1.0f)), 1.0f).xyz, float4(_344, sqrt(clamp(1.0f - dot(_344, _344), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx);
    float3 _355 = _282.xxx;
    float3 _358 = _285.xxx;
    float2 _365 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _293, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _376 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _387 = _288.xxx;
    float3 _395 = normalize(mul(normalize((mad(lerp(float4(_365, sqrt(clamp(1.0f - dot(_365, _365), 0.0f, 1.0f)), 1.0f).xyz, float4(_376, sqrt(clamp(1.0f - dot(_376, _376), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _387, mad(_354, _358, mad(lerp(float4(_301, sqrt(clamp(1.0f - dot(_301, _301), 0.0f, 1.0f)), 1.0f).xyz, float4(_316, sqrt(clamp(1.0f - dot(_316, _316), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _327, _354 * _355))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_238, cross(_235, _238), _235), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _396 = _395 * 1.0f;
    float3 _403 = lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _407 = Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _409 = Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _416 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _418 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _427 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _429 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _437 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _439 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _451 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _453 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _460 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _462 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _471 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _473 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _481 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _293, View_View_MaterialTextureMipBias);
    float4 _483 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _312, View_View_MaterialTextureMipBias);
    float _504 = _254.z;
    float _505 = _254.w;
    float _506 = _504 / _505;
    float _507 = isnan(gl_FragCoord.z) ? _506 : (isnan(_506) ? gl_FragCoord.z : min(_506, gl_FragCoord.z));
    float3 _513 = (_262 - View_View_RelativePreViewTranslation) + ((-_272) * (mad(-_507, _505, _504) / _507));
    float3 _514 = clamp(mad(lerp(_437.xyz, _439.xyz, 0.5f.xxx), _387, mad(lerp(_427.xyz, _429.xyz, 0.5f.xxx), _358, mad(lerp(_407.xyz, _409.xyz, 0.5f.xxx), _327, lerp(_416.xyz, _418.xyz, 0.5f.xxx) * _355))), 0.0f.xxx, 1.0f.xxx);
    float _515 = clamp(mad(0.5f, _288, mad(0.5f, _285, mad(0.5f, _279, 0.5f * _282))), 0.0f, 1.0f);
    float _519 = mad(clamp(mad(lerp(_481.y, _483.y, 0.5f), _288, mad(lerp(_471.y, _473.y, 0.5f), _285, mad(lerp(_451.y, _453.y, 0.5f), _279, lerp(_460.y, _462.y, 0.5f) * _282))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _520 = clamp(mad(lerp(_481.x, _483.x, 0.5f), _288, mad(lerp(_471.x, _473.x, 0.5f), _285, mad(lerp(_451.x, _453.x, 0.5f), _279, lerp(_460.x, _462.x, 0.5f) * _282))), 0.0f, 1.0f);
    uint _521 = in_var_PRIMITIVE_ID * 41u;
    float _567 = 0.0f;
    float _568 = 0.0f;
    float _569 = 0.0f;
    float3 _570 = 0.0f.xxx;
    float3 _571 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_521 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _537 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _541 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _537, 0.0f);
        float4 _545 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _537, 0.0f);
        float4 _549 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _537, 0.0f);
        float _559 = _549.w;
        _567 = mad(_519, _559, _549.z);
        _568 = mad(_515, _559, _549.y);
        _569 = _549.x;
        _570 = (_514 * _541.w) + _541.xyz;
        _571 = normalize((_396 * _545.w) + ((_545.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _567 = _519;
        _568 = _515;
        _569 = 0.0f;
        _570 = _514;
        _571 = _396;
    }
    uint _574 = asuint(asfloat(View_PrimitiveSceneData.Load4(_521 * 16 + 0)).x);
    float _632 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_521 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _600 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _513, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _611 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_600.x), int(_600.y), int(_600.z), 0).xyz, 0)));
        _632 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_611.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_600 / _611.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _632 = 1.0f;
    }
    float3 _645 = ((_570 - (_570 * _569)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _652 = (lerp((0.07999999821186065673828125f * _568).xxx, _570, _569.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _655 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _660 = 0.0f.xxx;
    if (_655)
    {
        _660 = _645 + (_652 * 0.449999988079071044921875f);
    }
    else
    {
        _660 = _645;
    }
    bool3 _661 = _655.xxx;
    float3 _712 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _671 = float4(_571, 1.0f);
        float3 _675 = 0.0f.xxx;
        _675.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _671);
        _675.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _671);
        _675.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _671);
        float4 _686 = _671.xyzz * _671.yzzx;
        float3 _690 = 0.0f.xxx;
        _690.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _686);
        _690.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _686);
        _690.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _686);
        float3 _707 = (_675 + _690) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_571.x, _571.x, -(_571.y * _571.y)));
        bool3 _890 = isnan(0.0f.xxx);
        bool3 _891 = isnan(_707);
        float3 _892 = max(0.0f.xxx, _707);
        float3 _893 = float3(_890.x ? _707.x : _892.x, _890.y ? _707.y : _892.y, _890.z ? _707.z : _892.z);
        _712 = (float3(_891.x ? 0.0f.xxx.x : _893.x, _891.y ? 0.0f.xxx.y : _893.y, _891.z ? 0.0f.xxx.z : _893.z) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _712 = 0.0f.xxx;
    }
    float3 _720 = _520.xxx;
    float3 _725 = ((((((_570 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _520) + ((_570 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _520) + ((_570 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _520;
    bool3 _895 = isnan(_720);
    bool3 _896 = isnan(_725);
    float3 _897 = max(_720, _725);
    float3 _898 = float3(_895.x ? _725.x : _897.x, _895.y ? _725.y : _897.y, _895.z ? _725.z : _897.z);
    bool3 _900 = isnan(_403);
    bool3 _901 = isnan(0.0f.xxx);
    float3 _902 = max(_403, 0.0f.xxx);
    float3 _903 = float3(_900.x ? 0.0f.xxx.x : _902.x, _900.y ? 0.0f.xxx.y : _902.y, _900.z ? 0.0f.xxx.z : _902.z);
    float3 _733 = float3(_901.x ? _403.x : _903.x, _901.y ? _403.y : _903.y, _901.z ? _403.z : _903.z);
    float3 _813 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _759 = _521 + 31u;
        float3 _768 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_521 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_513 - asfloat(View_PrimitiveSceneData.Load4((_521 + 18u) * 16 + 0)).xyz));
        float3 _769 = float3(asfloat(View_PrimitiveSceneData.Load4((_521 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_521 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_521 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _812 = 0.0f.xxx;
        if (any(bool3(_768.x > _769.x, _768.y > _769.y, _768.z > _769.z)))
        {
            float3 _792 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _793 = _513 * 0.57700002193450927734375f.xxx;
            float3 _808 = frac(mad((_793.x + _793.y) + _793.z, 0.00200000009499490261077880859375f, frac(((_792.x + _792.y) + _792.z) * 4194.30419921875f))).xxx;
            _812 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_808.x > 0.5f.xxx.x, _808.y > 0.5f.xxx.y, _808.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _791 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_759 * 16 + 0)).x > 0.0f)
            {
                float3 _779 = abs(_262 - in_var_TEXCOORD9);
                float _780 = _779.x;
                float _781 = _779.y;
                float _782 = _779.z;
                float _783 = isnan(_782) ? _781 : (isnan(_781) ? _782 : max(_781, _782));
                _791 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_783) ? _780 : (isnan(_780) ? _783 : max(_780, _783))) - asfloat(View_PrimitiveSceneData.Load4(_759 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _791 = _733;
            }
            _812 = _791;
        }
        _813 = _812;
    }
    else
    {
        _813 = _733;
    }
    float4 _820 = float4((mad(_712 * _660, float3(_896.x ? _720.x : _898.x, _896.y ? _720.y : _898.y, _896.z ? _720.z : _898.z), lerp(0.0f.xxx, _660 + (float3(_661.x ? 0.0f.xxx.x : _652.x, _661.y ? 0.0f.xxx.y : _652.y, _661.z ? 0.0f.xxx.z : _652.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _813) * 1.0f, 0.0f);
    float4 _827 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _826 = _820;
        _826.w = 0.0f;
        _827 = _826;
    }
    else
    {
        _827 = _820;
    }
    float2 _831 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _840 = (_571 * 0.5f) + 0.5f.xxx;
    float4 _842 = 0.0f.xxxx;
    _842.x = _840.x;
    _842.y = _840.y;
    _842.z = _840.z;
    _842.w = mad(2.0f, float((_574 & 256u) != 0u), float((_574 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _849 = 0.0f.xxxx;
    _849.x = _570.x;
    _849.y = _570.y;
    _849.z = _570.z;
    _849.w = (frac(dot(_831.xyx * _831.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _855 = 0.0f.xxxx;
    _855.x = _632;
    _855.y = 1.0f;
    _855.z = 1.0f;
    _855.w = 1.0f;
    float4 _862 = _827 * View_View_PreExposure;
    float3 _863 = _862.xyz;
    bool3 _919 = isnan(_863);
    bool3 _920 = isnan(32256.0f.xxx);
    float3 _921 = min(_863, 32256.0f.xxx);
    float3 _922 = float3(_919.x ? 32256.0f.xxx.x : _921.x, _919.y ? 32256.0f.xxx.y : _921.y, _919.z ? 32256.0f.xxx.z : _921.z);
    float3 _864 = float3(_920.x ? _863.x : _922.x, _920.y ? _863.y : _922.y, _920.z ? _863.z : _922.z);
    out_var_SV_Target0 = float4(_864.x, _864.y, _864.z, _862.w);
    out_var_SV_Target1 = _842;
    out_var_SV_Target2 = float4(_569, _568, _567, 0.56862747669219970703125f);
    out_var_SV_Target3 = _849;
    out_var_SV_Target5 = _855;
    gl_FragDepth = _507;
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
