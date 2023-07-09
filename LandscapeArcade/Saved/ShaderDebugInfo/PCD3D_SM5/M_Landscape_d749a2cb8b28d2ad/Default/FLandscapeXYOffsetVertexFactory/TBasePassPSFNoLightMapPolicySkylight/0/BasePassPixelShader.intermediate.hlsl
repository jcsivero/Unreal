#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _184 = 0.0f;
static float3 _185 = 0.0f.xxx;

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
    float4 _227 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _231 = mad(float2(_227.zw), 2.0f.xx, (-1.0f).xx);
    float _233 = 1.0f - dot(_231, _231);
    float _235 = sqrt(isnan(0.0f) ? _233 : (isnan(_233) ? 0.0f : max(_233, 0.0f)));
    float _236 = _231.x;
    float3 _238 = float3(_236, _231.y, _235);
    float3 _241 = normalize(float3(_235, 0.0f, -_236));
    float4 _257 = float4(_184, _184, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _261 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _265 = _261.xyz / _261.w.xxx;
    float3 _275 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _275 = -View_View_ViewForward;
    }
    else
    {
        _275 = normalize(-_265);
    }
    float2 _276 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _280 = _276 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _286 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _280, View_View_MaterialTextureMipBias);
    float2 _290 = _276 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _292 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _290, View_View_MaterialTextureMipBias);
    float4 _299 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _304 = lerp(-1.0f, 1.0f, dot(_299, Material_Material_PreshaderBuffer[2])) + lerp(_286.z, _292.z, 0.5f);
    float _305 = isnan(9.9999997473787516355514526367188e-05f) ? _304 : (isnan(_304) ? 9.9999997473787516355514526367188e-05f : max(_304, 9.9999997473787516355514526367188e-05f));
    float _306 = isnan(1.0f) ? _305 : (isnan(_305) ? 1.0f : min(_305, 1.0f));
    float4 _310 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _280, View_View_MaterialTextureMipBias);
    float4 _312 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _290, View_View_MaterialTextureMipBias);
    float _320 = lerp(-1.0f, 1.0f, dot(_299, Material_Material_PreshaderBuffer[3])) + lerp(_310.z, _312.z, 0.5f);
    float _321 = isnan(9.9999997473787516355514526367188e-05f) ? _320 : (isnan(_320) ? 9.9999997473787516355514526367188e-05f : max(_320, 9.9999997473787516355514526367188e-05f));
    float _322 = isnan(1.0f) ? _321 : (isnan(_321) ? 1.0f : min(_321, 1.0f));
    float4 _327 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _280, View_View_MaterialTextureMipBias);
    float4 _329 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _290, View_View_MaterialTextureMipBias);
    float _337 = lerp(-1.0f, 1.0f, dot(_299, Material_Material_PreshaderBuffer[4])) + lerp(_327.z, _329.z, 0.5f);
    float _338 = isnan(9.9999997473787516355514526367188e-05f) ? _337 : (isnan(_337) ? 9.9999997473787516355514526367188e-05f : max(_337, 9.9999997473787516355514526367188e-05f));
    float _339 = isnan(1.0f) ? _338 : (isnan(_338) ? 1.0f : min(_338, 1.0f));
    float _341 = 1.0f / ((_306 + _322) + _339);
    float2 _347 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _290, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _358 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _280, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _369 = _341 * _306;
    float3 _370 = _369.xxx;
    float2 _376 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _290, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _387 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _280, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _398 = _341 * _322;
    float3 _399 = _398.xxx;
    float2 _407 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _290, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _418 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _280, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _429 = _341 * _339;
    float3 _430 = _429.xxx;
    float _434 = dot(_299, Material_Material_PreshaderBuffer[5]);
    float2 _440 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _290, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _451 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _280, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _462 = _434.xxx;
    float3 _466 = lerp(mad(lerp(float4(_407, sqrt(clamp(1.0f - dot(_407, _407), 0.0f, 1.0f)), 1.0f).xyz, float4(_418, sqrt(clamp(1.0f - dot(_418, _418), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _430, mad(lerp(float4(_347, sqrt(clamp(1.0f - dot(_347, _347), 0.0f, 1.0f)), 1.0f).xyz, float4(_358, sqrt(clamp(1.0f - dot(_358, _358), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _370, lerp(float4(_376, sqrt(clamp(1.0f - dot(_376, _376), 0.0f, 1.0f)), 1.0f).xyz, float4(_387, sqrt(clamp(1.0f - dot(_387, _387), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _399)), lerp(float4(_440, sqrt(clamp(1.0f - dot(_440, _440), 0.0f, 1.0f)), 1.0f).xyz, float4(_451, sqrt(clamp(1.0f - dot(_451, _451), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _462) * View_View_NormalOverrideParameter.w;
    float3 _471 = normalize(mul(normalize(_466 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_241, cross(_238, _241), _238), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _479 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _462), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _513 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _290, View_View_MaterialTextureMipBias);
    float4 _515 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _280, View_View_MaterialTextureMipBias);
    float _520 = lerp(0.0f, 0.0f, _434);
    float4 _539 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _290, View_View_MaterialTextureMipBias);
    float4 _541 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _280, View_View_MaterialTextureMipBias);
    float _562 = _257.z;
    float _563 = _257.w;
    float _565 = _562 / (_563 + _520);
    float _566 = isnan(gl_FragCoord.z) ? _565 : (isnan(_565) ? gl_FragCoord.z : min(_565, gl_FragCoord.z));
    float3 _572 = (_265 - View_View_RelativePreViewTranslation) + ((-_275) * (mad(-_566, _563, _562) / _566));
    float3 _573 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _290, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _280, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _430, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _290, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _280, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _370, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _290, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _280, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _399)), lerp(_513.xyz, _515.xyz, 0.5f.xxx), _462), 0.0f.xxx, 1.0f.xxx);
    float _574 = clamp(_520, 0.0f, 1.0f);
    float _575 = clamp(lerp(mad(0.5f, _398, 0.5f * _429), 0.5f, _434), 0.0f, 1.0f);
    float _579 = mad(clamp(lerp(mad(lerp(_329.y, _327.y, 0.5f), _429, mad(lerp(_292.y, _286.y, 0.5f), _369, lerp(_312.y, _310.y, 0.5f) * _398)), lerp(_539.y, _541.y, 0.5f), _434), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _580 = clamp(lerp(mad(lerp(_329.x, _327.x, 0.5f), _429, mad(lerp(_292.x, _286.x, 0.5f), _369, lerp(_312.x, _310.x, 0.5f) * _398)), lerp(_539.x, _541.x, 0.5f), _434), 0.0f, 1.0f);
    uint _581 = in_var_PRIMITIVE_ID * 41u;
    float _628 = 0.0f;
    float _629 = 0.0f;
    float _630 = 0.0f;
    float3 _631 = 0.0f.xxx;
    float3 _632 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_581 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _597 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _601 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _597, 0.0f);
        float4 _605 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _597, 0.0f);
        float4 _609 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _597, 0.0f);
        float _619 = _609.w;
        _628 = mad(_579, _619, _609.z);
        _629 = mad(_575, _619, _609.y);
        _630 = mad(_574, _619, _609.x);
        _631 = (_573 * _601.w) + _601.xyz;
        _632 = normalize((_471 * _605.w) + ((_605.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _628 = _579;
        _629 = _575;
        _630 = _574;
        _631 = _573;
        _632 = _471;
    }
    uint _635 = asuint(asfloat(View_PrimitiveSceneData.Load4(_581 * 16 + 0)).x);
    float _693 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_581 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _661 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _572, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _672 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_661.x), int(_661.y), int(_661.z), 0).xyz, 0)));
        _693 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_672.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_661 / _672.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _693 = 1.0f;
    }
    float3 _706 = ((_631 - (_631 * _630)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _713 = (lerp((0.07999999821186065673828125f * _629).xxx, _631, _630.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
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
    float3 _773 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _732 = float4(_632, 1.0f);
        float3 _736 = 0.0f.xxx;
        _736.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _732);
        _736.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _732);
        _736.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _732);
        float4 _747 = _732.xyzz * _732.yzzx;
        float3 _751 = 0.0f.xxx;
        _751.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _747);
        _751.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _747);
        _751.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _747);
        float3 _768 = (_736 + _751) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_632.x, _632.x, -(_632.y * _632.y)));
        bool3 _981 = isnan(0.0f.xxx);
        bool3 _982 = isnan(_768);
        float3 _983 = max(0.0f.xxx, _768);
        float3 _984 = float3(_981.x ? _768.x : _983.x, _981.y ? _768.y : _983.y, _981.z ? _768.z : _983.z);
        _773 = (float3(_982.x ? 0.0f.xxx.x : _984.x, _982.y ? 0.0f.xxx.y : _984.y, _982.z ? 0.0f.xxx.z : _984.z) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _773 = 0.0f.xxx;
    }
    float3 _781 = _580.xxx;
    float3 _786 = ((((((_631 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _580) + ((_631 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _580) + ((_631 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _580;
    bool3 _986 = isnan(_781);
    bool3 _987 = isnan(_786);
    float3 _988 = max(_781, _786);
    float3 _989 = float3(_986.x ? _786.x : _988.x, _986.y ? _786.y : _988.y, _986.z ? _786.z : _988.z);
    bool3 _991 = isnan(_479);
    bool3 _992 = isnan(0.0f.xxx);
    float3 _993 = max(_479, 0.0f.xxx);
    float3 _994 = float3(_991.x ? 0.0f.xxx.x : _993.x, _991.y ? 0.0f.xxx.y : _993.y, _991.z ? 0.0f.xxx.z : _993.z);
    float3 _794 = float3(_992.x ? _479.x : _994.x, _992.y ? _479.y : _994.y, _992.z ? _479.z : _994.z);
    float3 _874 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _820 = _581 + 31u;
        float3 _829 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_581 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_572 - asfloat(View_PrimitiveSceneData.Load4((_581 + 18u) * 16 + 0)).xyz));
        float3 _830 = float3(asfloat(View_PrimitiveSceneData.Load4((_581 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_581 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_581 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _873 = 0.0f.xxx;
        if (any(bool3(_829.x > _830.x, _829.y > _830.y, _829.z > _830.z)))
        {
            float3 _853 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _854 = _572 * 0.57700002193450927734375f.xxx;
            float3 _869 = frac(mad((_854.x + _854.y) + _854.z, 0.00200000009499490261077880859375f, frac(((_853.x + _853.y) + _853.z) * 4194.30419921875f))).xxx;
            _873 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_869.x > 0.5f.xxx.x, _869.y > 0.5f.xxx.y, _869.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _852 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_820 * 16 + 0)).x > 0.0f)
            {
                float3 _840 = abs(_265 - in_var_TEXCOORD9);
                float _841 = _840.x;
                float _842 = _840.y;
                float _843 = _840.z;
                float _844 = isnan(_843) ? _842 : (isnan(_842) ? _843 : max(_842, _843));
                _852 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_844) ? _841 : (isnan(_841) ? _844 : max(_841, _844))) - asfloat(View_PrimitiveSceneData.Load4(_820 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _852 = _794;
            }
            _873 = _852;
        }
        _874 = _873;
    }
    else
    {
        _874 = _794;
    }
    float4 _881 = float4((mad(_773 * _721, float3(_987.x ? _781.x : _989.x, _987.y ? _781.y : _989.y, _987.z ? _781.z : _989.z), lerp(0.0f.xxx, _721 + (float3(_722.x ? 0.0f.xxx.x : _713.x, _722.y ? 0.0f.xxx.y : _713.y, _722.z ? 0.0f.xxx.z : _713.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _874) * 1.0f, 0.0f);
    float4 _888 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _887 = _881;
        _887.w = 0.0f;
        _888 = _887;
    }
    else
    {
        _888 = _881;
    }
    float2 _892 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _901 = (_632 * 0.5f) + 0.5f.xxx;
    float4 _903 = 0.0f.xxxx;
    _903.x = _901.x;
    _903.y = _901.y;
    _903.z = _901.z;
    _903.w = mad(2.0f, float((_635 & 256u) != 0u), float((_635 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _910 = 0.0f.xxxx;
    _910.x = _631.x;
    _910.y = _631.y;
    _910.z = _631.z;
    _910.w = (frac(dot(_892.xyx * _892.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _916 = 0.0f.xxxx;
    _916.x = _693;
    _916.y = 1.0f;
    _916.z = 1.0f;
    _916.w = 1.0f;
    float4 _923 = _888 * View_View_PreExposure;
    float3 _924 = _923.xyz;
    bool3 _1010 = isnan(_924);
    bool3 _1011 = isnan(32256.0f.xxx);
    float3 _1012 = min(_924, 32256.0f.xxx);
    float3 _1013 = float3(_1010.x ? 32256.0f.xxx.x : _1012.x, _1010.y ? 32256.0f.xxx.y : _1012.y, _1010.z ? 32256.0f.xxx.z : _1012.z);
    float3 _925 = float3(_1011.x ? _924.x : _1013.x, _1011.y ? _924.y : _1013.y, _1011.z ? _924.z : _1013.z);
    out_var_SV_Target0 = float4(_925.x, _925.y, _925.z, _923.w);
    out_var_SV_Target1 = _903;
    out_var_SV_Target2 = float4(_630, _629, _628, 0.56862747669219970703125f);
    out_var_SV_Target3 = _910;
    out_var_SV_Target5 = _916;
    gl_FragDepth = _566;
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
