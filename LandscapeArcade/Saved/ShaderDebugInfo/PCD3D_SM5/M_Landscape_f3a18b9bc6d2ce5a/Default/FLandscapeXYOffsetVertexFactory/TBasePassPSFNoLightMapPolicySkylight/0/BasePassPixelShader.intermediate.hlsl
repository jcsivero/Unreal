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
    float4 _228 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _232 = mad(float2(_228.zw), 2.0f.xx, (-1.0f).xx);
    float _234 = 1.0f - dot(_232, _232);
    float _236 = sqrt(isnan(0.0f) ? _234 : (isnan(_234) ? 0.0f : max(_234, 0.0f)));
    float _237 = _232.x;
    float3 _239 = float3(_237, _232.y, _236);
    float3 _242 = normalize(float3(_236, 0.0f, -_237));
    float4 _258 = float4(_184, _184, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _262 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _266 = _262.xyz / _262.w.xxx;
    float3 _276 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _276 = -View_View_ViewForward;
    }
    else
    {
        _276 = normalize(-_266);
    }
    float2 _277 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _281 = _277 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _287 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _281, View_View_MaterialTextureMipBias);
    float2 _291 = _277 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _293 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _291, View_View_MaterialTextureMipBias);
    float4 _300 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _305 = lerp(-1.0f, 1.0f, dot(_300, Material_Material_PreshaderBuffer[2])) + lerp(_287.z, _293.z, 0.5f);
    float _306 = isnan(9.9999997473787516355514526367188e-05f) ? _305 : (isnan(_305) ? 9.9999997473787516355514526367188e-05f : max(_305, 9.9999997473787516355514526367188e-05f));
    float _307 = isnan(1.0f) ? _306 : (isnan(_306) ? 1.0f : min(_306, 1.0f));
    float4 _311 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _281, View_View_MaterialTextureMipBias);
    float4 _313 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _291, View_View_MaterialTextureMipBias);
    float _321 = lerp(-1.0f, 1.0f, dot(_300, Material_Material_PreshaderBuffer[3])) + lerp(_311.z, _313.z, 0.5f);
    float _322 = isnan(9.9999997473787516355514526367188e-05f) ? _321 : (isnan(_321) ? 9.9999997473787516355514526367188e-05f : max(_321, 9.9999997473787516355514526367188e-05f));
    float _323 = isnan(1.0f) ? _322 : (isnan(_322) ? 1.0f : min(_322, 1.0f));
    float4 _328 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _281, View_View_MaterialTextureMipBias);
    float4 _330 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _291, View_View_MaterialTextureMipBias);
    float _338 = lerp(-1.0f, 1.0f, dot(_300, Material_Material_PreshaderBuffer[4])) + lerp(_328.z, _330.z, 0.5f);
    float _339 = isnan(9.9999997473787516355514526367188e-05f) ? _338 : (isnan(_338) ? 9.9999997473787516355514526367188e-05f : max(_338, 9.9999997473787516355514526367188e-05f));
    float _340 = isnan(1.0f) ? _339 : (isnan(_339) ? 1.0f : min(_339, 1.0f));
    float _342 = 1.0f / ((_307 + _323) + _340);
    float2 _348 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _291, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _359 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _281, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _370 = _342 * _307;
    float3 _371 = _370.xxx;
    float2 _377 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _291, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _388 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _281, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _399 = _342 * _323;
    float3 _400 = _399.xxx;
    float2 _408 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _291, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _419 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _281, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _430 = _342 * _340;
    float3 _431 = _430.xxx;
    float _435 = dot(_300, Material_Material_PreshaderBuffer[5]);
    float2 _441 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _291, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _452 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _281, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _463 = _435.xxx;
    float3 _467 = lerp(mad(lerp(float4(_408, sqrt(clamp(1.0f - dot(_408, _408), 0.0f, 1.0f)), 1.0f).xyz, float4(_419, sqrt(clamp(1.0f - dot(_419, _419), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _431, mad(lerp(float4(_348, sqrt(clamp(1.0f - dot(_348, _348), 0.0f, 1.0f)), 1.0f).xyz, float4(_359, sqrt(clamp(1.0f - dot(_359, _359), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _371, lerp(float4(_377, sqrt(clamp(1.0f - dot(_377, _377), 0.0f, 1.0f)), 1.0f).xyz, float4(_388, sqrt(clamp(1.0f - dot(_388, _388), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _400)), lerp(float4(_441, sqrt(clamp(1.0f - dot(_441, _441), 0.0f, 1.0f)), 1.0f).xyz, float4(_452, sqrt(clamp(1.0f - dot(_452, _452), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _463) * View_View_NormalOverrideParameter.w;
    float3 _472 = normalize(mul(normalize(_467 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_242, cross(_239, _242), _239), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _480 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _463), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _514 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _291, View_View_MaterialTextureMipBias);
    float4 _516 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _281, View_View_MaterialTextureMipBias);
    float _521 = lerp(0.0f, 0.0f, _435);
    float4 _543 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _291, View_View_MaterialTextureMipBias);
    float4 _545 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _281, View_View_MaterialTextureMipBias);
    float _566 = _258.z;
    float _567 = _258.w;
    float _569 = _566 / (_567 + _521);
    float _570 = isnan(gl_FragCoord.z) ? _569 : (isnan(_569) ? gl_FragCoord.z : min(_569, gl_FragCoord.z));
    float3 _576 = (_266 - View_View_RelativePreViewTranslation) + ((-_276) * (mad(-_570, _567, _566) / _570));
    float3 _577 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _291, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _281, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _431, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _291, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _281, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _371, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _291, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _281, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _400)), lerp(_514.xyz, _516.xyz, 0.5f.xxx), _463), 0.0f.xxx, 1.0f.xxx);
    float _578 = clamp(_521, 0.0f, 1.0f);
    float _579 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _430, mad(Material_Material_PreshaderBuffer[7].x, _370, Material_Material_PreshaderBuffer[7].x * _399)), Material_Material_PreshaderBuffer[7].x, _435), 0.0f, 1.0f);
    float _583 = mad(clamp(lerp(mad(lerp(_330.y, _328.y, 0.5f), _430, mad(lerp(_293.y, _287.y, 0.5f), _370, lerp(_313.y, _311.y, 0.5f) * _399)), lerp(_543.y, _545.y, 0.5f), _435), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _584 = clamp(lerp(mad(lerp(_330.x, _328.x, 0.5f), _430, mad(lerp(_293.x, _287.x, 0.5f), _370, lerp(_313.x, _311.x, 0.5f) * _399)), lerp(_543.x, _545.x, 0.5f), _435), 0.0f, 1.0f);
    uint _585 = in_var_PRIMITIVE_ID * 41u;
    float _632 = 0.0f;
    float _633 = 0.0f;
    float _634 = 0.0f;
    float3 _635 = 0.0f.xxx;
    float3 _636 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_585 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _601 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _605 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _601, 0.0f);
        float4 _609 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _601, 0.0f);
        float4 _613 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _601, 0.0f);
        float _623 = _613.w;
        _632 = mad(_583, _623, _613.z);
        _633 = mad(_579, _623, _613.y);
        _634 = mad(_578, _623, _613.x);
        _635 = (_577 * _605.w) + _605.xyz;
        _636 = normalize((_472 * _609.w) + ((_609.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _632 = _583;
        _633 = _579;
        _634 = _578;
        _635 = _577;
        _636 = _472;
    }
    uint _639 = asuint(asfloat(View_PrimitiveSceneData.Load4(_585 * 16 + 0)).x);
    float _697 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_585 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _665 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _576, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _676 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_665.x), int(_665.y), int(_665.z), 0).xyz, 0)));
        _697 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_676.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_665 / _676.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _697 = 1.0f;
    }
    float3 _710 = ((_635 - (_635 * _634)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _717 = (lerp((0.07999999821186065673828125f * _633).xxx, _635, _634.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _720 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _725 = 0.0f.xxx;
    if (_720)
    {
        _725 = _710 + (_717 * 0.449999988079071044921875f);
    }
    else
    {
        _725 = _710;
    }
    bool3 _726 = _720.xxx;
    float3 _777 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _736 = float4(_636, 1.0f);
        float3 _740 = 0.0f.xxx;
        _740.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(0)), _736);
        _740.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(16)), _736);
        _740.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(32)), _736);
        float4 _751 = _736.xyzz * _736.yzzx;
        float3 _755 = 0.0f.xxx;
        _755.x = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(48)), _751);
        _755.y = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(64)), _751);
        _755.z = dot(asfloat(View_SkyIrradianceEnvironmentMap.Load4(80)), _751);
        float3 _772 = (_740 + _755) + (asfloat(View_SkyIrradianceEnvironmentMap.Load4(96)).xyz * mad(_636.x, _636.x, -(_636.y * _636.y)));
        bool3 _985 = isnan(0.0f.xxx);
        bool3 _986 = isnan(_772);
        float3 _987 = max(0.0f.xxx, _772);
        float3 _988 = float3(_985.x ? _772.x : _987.x, _985.y ? _772.y : _987.y, _985.z ? _772.z : _987.z);
        _777 = (float3(_986.x ? 0.0f.xxx.x : _988.x, _986.y ? 0.0f.xxx.y : _988.y, _986.z ? 0.0f.xxx.z : _988.z) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _777 = 0.0f.xxx;
    }
    float3 _785 = _584.xxx;
    float3 _790 = ((((((_635 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _584) + ((_635 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _584) + ((_635 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _584;
    bool3 _990 = isnan(_785);
    bool3 _991 = isnan(_790);
    float3 _992 = max(_785, _790);
    float3 _993 = float3(_990.x ? _790.x : _992.x, _990.y ? _790.y : _992.y, _990.z ? _790.z : _992.z);
    bool3 _995 = isnan(_480);
    bool3 _996 = isnan(0.0f.xxx);
    float3 _997 = max(_480, 0.0f.xxx);
    float3 _998 = float3(_995.x ? 0.0f.xxx.x : _997.x, _995.y ? 0.0f.xxx.y : _997.y, _995.z ? 0.0f.xxx.z : _997.z);
    float3 _798 = float3(_996.x ? _480.x : _998.x, _996.y ? _480.y : _998.y, _996.z ? _480.z : _998.z);
    float3 _878 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _824 = _585 + 31u;
        float3 _833 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_585 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_576 - asfloat(View_PrimitiveSceneData.Load4((_585 + 18u) * 16 + 0)).xyz));
        float3 _834 = float3(asfloat(View_PrimitiveSceneData.Load4((_585 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_585 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_585 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _877 = 0.0f.xxx;
        if (any(bool3(_833.x > _834.x, _833.y > _834.y, _833.z > _834.z)))
        {
            float3 _857 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _858 = _576 * 0.57700002193450927734375f.xxx;
            float3 _873 = frac(mad((_858.x + _858.y) + _858.z, 0.00200000009499490261077880859375f, frac(((_857.x + _857.y) + _857.z) * 4194.30419921875f))).xxx;
            _877 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_873.x > 0.5f.xxx.x, _873.y > 0.5f.xxx.y, _873.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _856 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_824 * 16 + 0)).x > 0.0f)
            {
                float3 _844 = abs(_266 - in_var_TEXCOORD9);
                float _845 = _844.x;
                float _846 = _844.y;
                float _847 = _844.z;
                float _848 = isnan(_847) ? _846 : (isnan(_846) ? _847 : max(_846, _847));
                _856 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_848) ? _845 : (isnan(_845) ? _848 : max(_845, _848))) - asfloat(View_PrimitiveSceneData.Load4(_824 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _856 = _798;
            }
            _877 = _856;
        }
        _878 = _877;
    }
    else
    {
        _878 = _798;
    }
    float4 _885 = float4((mad(_777 * _725, float3(_991.x ? _785.x : _993.x, _991.y ? _785.y : _993.y, _991.z ? _785.z : _993.z), lerp(0.0f.xxx, _725 + (float3(_726.x ? 0.0f.xxx.x : _717.x, _726.y ? 0.0f.xxx.y : _717.y, _726.z ? 0.0f.xxx.z : _717.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _878) * 1.0f, 0.0f);
    float4 _892 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _891 = _885;
        _891.w = 0.0f;
        _892 = _891;
    }
    else
    {
        _892 = _885;
    }
    float2 _896 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _905 = (_636 * 0.5f) + 0.5f.xxx;
    float4 _907 = 0.0f.xxxx;
    _907.x = _905.x;
    _907.y = _905.y;
    _907.z = _905.z;
    _907.w = mad(2.0f, float((_639 & 256u) != 0u), float((_639 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _914 = 0.0f.xxxx;
    _914.x = _635.x;
    _914.y = _635.y;
    _914.z = _635.z;
    _914.w = (frac(dot(_896.xyx * _896.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _920 = 0.0f.xxxx;
    _920.x = _697;
    _920.y = 1.0f;
    _920.z = 1.0f;
    _920.w = 1.0f;
    float4 _927 = _892 * View_View_PreExposure;
    float3 _928 = _927.xyz;
    bool3 _1014 = isnan(_928);
    bool3 _1015 = isnan(32256.0f.xxx);
    float3 _1016 = min(_928, 32256.0f.xxx);
    float3 _1017 = float3(_1014.x ? 32256.0f.xxx.x : _1016.x, _1014.y ? 32256.0f.xxx.y : _1016.y, _1014.z ? 32256.0f.xxx.z : _1016.z);
    float3 _929 = float3(_1015.x ? _928.x : _1017.x, _1015.y ? _928.y : _1017.y, _1015.z ? _928.z : _1017.z);
    out_var_SV_Target0 = float4(_929.x, _929.y, _929.z, _927.w);
    out_var_SV_Target1 = _907;
    out_var_SV_Target2 = float4(_634, _633, _632, 0.56862747669219970703125f);
    out_var_SV_Target3 = _914;
    out_var_SV_Target5 = _920;
    gl_FragDepth = _570;
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
