#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _168 = 0.0f;

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
    float4 _209 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _213 = mad(float2(_209.zw), 2.0f.xx, (-1.0f).xx);
    float _215 = 1.0f - dot(_213, _213);
    float _217 = sqrt(isnan(0.0f) ? _215 : (isnan(_215) ? 0.0f : max(_215, 0.0f)));
    float _218 = _213.x;
    float3 _220 = float3(_218, _213.y, _217);
    float3 _223 = normalize(float3(_217, 0.0f, -_218));
    float4 _239 = float4(_168, _168, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _243 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _247 = _243.xyz / _243.w.xxx;
    float3 _257 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _257 = -View_View_ViewForward;
    }
    else
    {
        _257 = normalize(-_247);
    }
    float2 _258 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _262 = _258 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _268 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _262, View_View_MaterialTextureMipBias);
    float2 _272 = _258 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _274 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _272, View_View_MaterialTextureMipBias);
    float4 _281 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _286 = lerp(-1.0f, 1.0f, dot(_281, Material_Material_PreshaderBuffer[2])) + lerp(_268.z, _274.z, 0.5f);
    float _287 = isnan(9.9999997473787516355514526367188e-05f) ? _286 : (isnan(_286) ? 9.9999997473787516355514526367188e-05f : max(_286, 9.9999997473787516355514526367188e-05f));
    float _288 = isnan(1.0f) ? _287 : (isnan(_287) ? 1.0f : min(_287, 1.0f));
    float4 _292 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _262, View_View_MaterialTextureMipBias);
    float4 _294 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _272, View_View_MaterialTextureMipBias);
    float _302 = lerp(-1.0f, 1.0f, dot(_281, Material_Material_PreshaderBuffer[3])) + lerp(_292.z, _294.z, 0.5f);
    float _303 = isnan(9.9999997473787516355514526367188e-05f) ? _302 : (isnan(_302) ? 9.9999997473787516355514526367188e-05f : max(_302, 9.9999997473787516355514526367188e-05f));
    float _304 = isnan(1.0f) ? _303 : (isnan(_303) ? 1.0f : min(_303, 1.0f));
    float4 _309 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _262, View_View_MaterialTextureMipBias);
    float4 _311 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _272, View_View_MaterialTextureMipBias);
    float _319 = lerp(-1.0f, 1.0f, dot(_281, Material_Material_PreshaderBuffer[4])) + lerp(_309.z, _311.z, 0.5f);
    float _320 = isnan(9.9999997473787516355514526367188e-05f) ? _319 : (isnan(_319) ? 9.9999997473787516355514526367188e-05f : max(_319, 9.9999997473787516355514526367188e-05f));
    float _321 = isnan(1.0f) ? _320 : (isnan(_320) ? 1.0f : min(_320, 1.0f));
    float _323 = 1.0f / ((_288 + _304) + _321);
    float2 _329 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _272, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _340 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _262, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _351 = _323 * _288;
    float3 _352 = _351.xxx;
    float2 _358 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _272, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _369 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _262, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _380 = _323 * _304;
    float3 _381 = _380.xxx;
    float2 _389 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _272, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _400 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _262, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _411 = _323 * _321;
    float3 _412 = _411.xxx;
    float _416 = dot(_281, Material_Material_PreshaderBuffer[5]);
    float2 _422 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _272, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _433 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _262, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _444 = _416.xxx;
    float3 _448 = lerp(mad(lerp(float4(_389, sqrt(clamp(1.0f - dot(_389, _389), 0.0f, 1.0f)), 1.0f).xyz, float4(_400, sqrt(clamp(1.0f - dot(_400, _400), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _412, mad(lerp(float4(_329, sqrt(clamp(1.0f - dot(_329, _329), 0.0f, 1.0f)), 1.0f).xyz, float4(_340, sqrt(clamp(1.0f - dot(_340, _340), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _352, lerp(float4(_358, sqrt(clamp(1.0f - dot(_358, _358), 0.0f, 1.0f)), 1.0f).xyz, float4(_369, sqrt(clamp(1.0f - dot(_369, _369), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _381)), lerp(float4(_422, sqrt(clamp(1.0f - dot(_422, _422), 0.0f, 1.0f)), 1.0f).xyz, float4(_433, sqrt(clamp(1.0f - dot(_433, _433), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _444) * View_View_NormalOverrideParameter.w;
    float3 _453 = normalize(mul(normalize(_448 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_223, cross(_220, _223), _220), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _461 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _444), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _495 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _272, View_View_MaterialTextureMipBias);
    float4 _497 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _262, View_View_MaterialTextureMipBias);
    float _502 = lerp(0.0f, 0.0f, _416);
    float4 _521 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _272, View_View_MaterialTextureMipBias);
    float4 _523 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _262, View_View_MaterialTextureMipBias);
    float _528 = _239.z;
    float _529 = _239.w;
    float _531 = _528 / (_529 + _502);
    float _532 = isnan(gl_FragCoord.z) ? _531 : (isnan(_531) ? gl_FragCoord.z : min(_531, gl_FragCoord.z));
    float3 _538 = (_247 - View_View_RelativePreViewTranslation) + ((-_257) * (mad(-_532, _529, _528) / _532));
    float3 _539 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _272, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _262, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _412, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _272, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _262, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _352, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _272, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _262, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _381)), lerp(_495.xyz, _497.xyz, 0.5f.xxx), _444), 0.0f.xxx, 1.0f.xxx);
    float _540 = clamp(_502, 0.0f, 1.0f);
    float _541 = clamp(lerp(mad(0.5f, _380, 0.5f * _411), 0.5f, _416), 0.0f, 1.0f);
    float _545 = mad(clamp(lerp(mad(lerp(_311.y, _309.y, 0.5f), _411, mad(lerp(_274.y, _268.y, 0.5f), _351, lerp(_294.y, _292.y, 0.5f) * _380)), lerp(_521.y, _523.y, 0.5f), _416), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _546 = in_var_PRIMITIVE_ID * 41u;
    float _593 = 0.0f;
    float _594 = 0.0f;
    float _595 = 0.0f;
    float3 _596 = 0.0f.xxx;
    float3 _597 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_546 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _562 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _566 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _562, 0.0f);
        float4 _570 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _562, 0.0f);
        float4 _574 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _562, 0.0f);
        float _584 = _574.w;
        _593 = mad(_545, _584, _574.z);
        _594 = mad(_541, _584, _574.y);
        _595 = mad(_540, _584, _574.x);
        _596 = (_539 * _566.w) + _566.xyz;
        _597 = normalize((_453 * _570.w) + ((_570.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _593 = _545;
        _594 = _541;
        _595 = _540;
        _596 = _539;
        _597 = _453;
    }
    uint _600 = asuint(asfloat(View_PrimitiveSceneData.Load4(_546 * 16 + 0)).x);
    float _658 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_546 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _626 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _538, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _637 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_626.x), int(_626.y), int(_626.z), 0).xyz, 0)));
        _658 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_637.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_626 / _637.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _658 = 1.0f;
    }
    float3 _671 = ((_596 - (_596 * _595)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _678 = (lerp((0.07999999821186065673828125f * _594).xxx, _596, _595.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _681 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _686 = 0.0f.xxx;
    if (_681)
    {
        _686 = _671 + (_678 * 0.449999988079071044921875f);
    }
    else
    {
        _686 = _671;
    }
    bool3 _687 = _681.xxx;
    bool3 _877 = isnan(_461);
    bool3 _878 = isnan(0.0f.xxx);
    float3 _879 = max(_461, 0.0f.xxx);
    float3 _880 = float3(_877.x ? 0.0f.xxx.x : _879.x, _877.y ? 0.0f.xxx.y : _879.y, _877.z ? 0.0f.xxx.z : _879.z);
    float3 _695 = float3(_878.x ? _461.x : _880.x, _878.y ? _461.y : _880.y, _878.z ? _461.z : _880.z);
    float3 _775 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _721 = _546 + 31u;
        float3 _730 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_546 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_538 - asfloat(View_PrimitiveSceneData.Load4((_546 + 18u) * 16 + 0)).xyz));
        float3 _731 = float3(asfloat(View_PrimitiveSceneData.Load4((_546 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_546 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_546 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _774 = 0.0f.xxx;
        if (any(bool3(_730.x > _731.x, _730.y > _731.y, _730.z > _731.z)))
        {
            float3 _754 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _755 = _538 * 0.57700002193450927734375f.xxx;
            float3 _770 = frac(mad((_755.x + _755.y) + _755.z, 0.00200000009499490261077880859375f, frac(((_754.x + _754.y) + _754.z) * 4194.30419921875f))).xxx;
            _774 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_770.x > 0.5f.xxx.x, _770.y > 0.5f.xxx.y, _770.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _753 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_721 * 16 + 0)).x > 0.0f)
            {
                float3 _741 = abs(_247 - in_var_TEXCOORD9);
                float _742 = _741.x;
                float _743 = _741.y;
                float _744 = _741.z;
                float _745 = isnan(_744) ? _743 : (isnan(_743) ? _744 : max(_743, _744));
                _753 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_745) ? _742 : (isnan(_742) ? _745 : max(_742, _745))) - asfloat(View_PrimitiveSceneData.Load4(_721 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _753 = _695;
            }
            _774 = _753;
        }
        _775 = _774;
    }
    else
    {
        _775 = _695;
    }
    float4 _781 = float4((lerp(0.0f.xxx, _686 + (float3(_687.x ? 0.0f.xxx.x : _678.x, _687.y ? 0.0f.xxx.y : _678.y, _687.z ? 0.0f.xxx.z : _678.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _775) * 1.0f, 0.0f);
    float4 _788 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _787 = _781;
        _787.w = 0.0f;
        _788 = _787;
    }
    else
    {
        _788 = _781;
    }
    float2 _792 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _801 = (_597 * 0.5f) + 0.5f.xxx;
    float4 _803 = 0.0f.xxxx;
    _803.x = _801.x;
    _803.y = _801.y;
    _803.z = _801.z;
    _803.w = mad(2.0f, float((_600 & 256u) != 0u), float((_600 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _810 = 0.0f.xxxx;
    _810.x = _596.x;
    _810.y = _596.y;
    _810.z = _596.z;
    _810.w = (frac(dot(_792.xyx * _792.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _816 = 0.0f.xxxx;
    _816.x = _658;
    _816.y = 1.0f;
    _816.z = 1.0f;
    _816.w = 1.0f;
    float4 _823 = _788 * View_View_PreExposure;
    float3 _824 = _823.xyz;
    bool3 _896 = isnan(_824);
    bool3 _897 = isnan(32256.0f.xxx);
    float3 _898 = min(_824, 32256.0f.xxx);
    float3 _899 = float3(_896.x ? 32256.0f.xxx.x : _898.x, _896.y ? 32256.0f.xxx.y : _898.y, _896.z ? 32256.0f.xxx.z : _898.z);
    float3 _825 = float3(_897.x ? _824.x : _899.x, _897.y ? _824.y : _899.y, _897.z ? _824.z : _899.z);
    out_var_SV_Target0 = float4(_825.x, _825.y, _825.z, _823.w);
    out_var_SV_Target1 = _803;
    out_var_SV_Target2 = float4(_595, _594, _593, 0.56862747669219970703125f);
    out_var_SV_Target3 = _810;
    out_var_SV_Target5 = _816;
    gl_FragDepth = _532;
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
