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
    float4 _210 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _214 = mad(float2(_210.zw), 2.0f.xx, (-1.0f).xx);
    float _216 = 1.0f - dot(_214, _214);
    float _218 = sqrt(isnan(0.0f) ? _216 : (isnan(_216) ? 0.0f : max(_216, 0.0f)));
    float _219 = _214.x;
    float3 _221 = float3(_219, _214.y, _218);
    float3 _224 = normalize(float3(_218, 0.0f, -_219));
    float4 _240 = float4(_168, _168, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _244 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _248 = _244.xyz / _244.w.xxx;
    float3 _258 = 0.0f.xxx;
    if (View_View_ViewToClip[3].w >= 1.0f)
    {
        _258 = -View_View_ViewForward;
    }
    else
    {
        _258 = normalize(-_248);
    }
    float2 _259 = 0.0039525697939097881317138671875f.xx * in_var_TEXCOORD0;
    float2 _263 = _259 * Material_Material_PreshaderBuffer[1].y.xx;
    float4 _269 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _263, View_View_MaterialTextureMipBias);
    float2 _273 = _259 * Material_Material_PreshaderBuffer[1].w.xx;
    float4 _275 = Material_Texture2D_0.SampleBias(Material_Texture2D_0Sampler, _273, View_View_MaterialTextureMipBias);
    float4 _282 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _287 = lerp(-1.0f, 1.0f, dot(_282, Material_Material_PreshaderBuffer[2])) + lerp(_269.z, _275.z, 0.5f);
    float _288 = isnan(9.9999997473787516355514526367188e-05f) ? _287 : (isnan(_287) ? 9.9999997473787516355514526367188e-05f : max(_287, 9.9999997473787516355514526367188e-05f));
    float _289 = isnan(1.0f) ? _288 : (isnan(_288) ? 1.0f : min(_288, 1.0f));
    float4 _293 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _263, View_View_MaterialTextureMipBias);
    float4 _295 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _273, View_View_MaterialTextureMipBias);
    float _303 = lerp(-1.0f, 1.0f, dot(_282, Material_Material_PreshaderBuffer[3])) + lerp(_293.z, _295.z, 0.5f);
    float _304 = isnan(9.9999997473787516355514526367188e-05f) ? _303 : (isnan(_303) ? 9.9999997473787516355514526367188e-05f : max(_303, 9.9999997473787516355514526367188e-05f));
    float _305 = isnan(1.0f) ? _304 : (isnan(_304) ? 1.0f : min(_304, 1.0f));
    float4 _310 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _263, View_View_MaterialTextureMipBias);
    float4 _312 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _273, View_View_MaterialTextureMipBias);
    float _320 = lerp(-1.0f, 1.0f, dot(_282, Material_Material_PreshaderBuffer[4])) + lerp(_310.z, _312.z, 0.5f);
    float _321 = isnan(9.9999997473787516355514526367188e-05f) ? _320 : (isnan(_320) ? 9.9999997473787516355514526367188e-05f : max(_320, 9.9999997473787516355514526367188e-05f));
    float _322 = isnan(1.0f) ? _321 : (isnan(_321) ? 1.0f : min(_321, 1.0f));
    float _324 = 1.0f / ((_289 + _305) + _322);
    float2 _330 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _273, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _341 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _263, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _352 = _324 * _289;
    float3 _353 = _352.xxx;
    float2 _359 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _273, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _370 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _263, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _381 = _324 * _305;
    float3 _382 = _381.xxx;
    float2 _390 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _273, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _401 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _263, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float _412 = _324 * _322;
    float3 _413 = _412.xxx;
    float _417 = dot(_282, Material_Material_PreshaderBuffer[5]);
    float2 _423 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _273, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float2 _434 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _263, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _445 = _417.xxx;
    float3 _449 = lerp(mad(lerp(float4(_390, sqrt(clamp(1.0f - dot(_390, _390), 0.0f, 1.0f)), 1.0f).xyz, float4(_401, sqrt(clamp(1.0f - dot(_401, _401), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _413, mad(lerp(float4(_330, sqrt(clamp(1.0f - dot(_330, _330), 0.0f, 1.0f)), 1.0f).xyz, float4(_341, sqrt(clamp(1.0f - dot(_341, _341), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _353, lerp(float4(_359, sqrt(clamp(1.0f - dot(_359, _359), 0.0f, 1.0f)), 1.0f).xyz, float4(_370, sqrt(clamp(1.0f - dot(_370, _370), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx) * _382)), lerp(float4(_423, sqrt(clamp(1.0f - dot(_423, _423), 0.0f, 1.0f)), 1.0f).xyz, float4(_434, sqrt(clamp(1.0f - dot(_434, _434), 0.0f, 1.0f)), 1.0f).xyz, 0.5f.xxx), _445) * View_View_NormalOverrideParameter.w;
    float3 _454 = normalize(mul(normalize(_449 + View_View_NormalOverrideParameter.xyz), mul(float3x3(_224, cross(_221, _224), _221), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float3 _462 = lerp(lerp(0.0f.xxx, 0.0f.xxx, _445), Material_Material_PreshaderBuffer[6].yzw, Material_Material_PreshaderBuffer[6].x.xxx);
    float4 _496 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _273, View_View_MaterialTextureMipBias);
    float4 _498 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _263, View_View_MaterialTextureMipBias);
    float _503 = lerp(0.0f, 0.0f, _417);
    float4 _525 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _273, View_View_MaterialTextureMipBias);
    float4 _527 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _263, View_View_MaterialTextureMipBias);
    float _532 = _240.z;
    float _533 = _240.w;
    float _535 = _532 / (_533 + _503);
    float _536 = isnan(gl_FragCoord.z) ? _535 : (isnan(_535) ? gl_FragCoord.z : min(_535, gl_FragCoord.z));
    float3 _542 = (_248 - View_View_RelativePreViewTranslation) + ((-_258) * (mad(-_536, _533, _532) / _536));
    float3 _543 = clamp(lerp(mad(lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _273, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _263, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _413, mad(lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _273, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _263, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx), _353, lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _273, View_View_MaterialTextureMipBias).xyz, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _263, View_View_MaterialTextureMipBias).xyz, 0.5f.xxx) * _382)), lerp(_496.xyz, _498.xyz, 0.5f.xxx), _445), 0.0f.xxx, 1.0f.xxx);
    float _544 = clamp(_503, 0.0f, 1.0f);
    float _545 = clamp(lerp(mad(Material_Material_PreshaderBuffer[7].x, _412, mad(Material_Material_PreshaderBuffer[7].x, _352, Material_Material_PreshaderBuffer[7].x * _381)), Material_Material_PreshaderBuffer[7].x, _417), 0.0f, 1.0f);
    float _549 = mad(clamp(lerp(mad(lerp(_312.y, _310.y, 0.5f), _412, mad(lerp(_275.y, _269.y, 0.5f), _352, lerp(_295.y, _293.y, 0.5f) * _381)), lerp(_525.y, _527.y, 0.5f), _417), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _550 = in_var_PRIMITIVE_ID * 41u;
    float _597 = 0.0f;
    float _598 = 0.0f;
    float _599 = 0.0f;
    float3 _600 = 0.0f.xxx;
    float3 _601 = 0.0f.xxx;
    [flatten]
    if (((asuint(asfloat(View_PrimitiveSceneData.Load4(_550 * 16 + 0)).x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _566 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _570 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _566, 0.0f);
        float4 _574 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferBTextureSampler, _566, 0.0f);
        float4 _578 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferCTextureSampler, _566, 0.0f);
        float _588 = _578.w;
        _597 = mad(_549, _588, _578.z);
        _598 = mad(_545, _588, _578.y);
        _599 = mad(_544, _588, _578.x);
        _600 = (_543 * _570.w) + _570.xyz;
        _601 = normalize((_454 * _574.w) + ((_574.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _597 = _549;
        _598 = _545;
        _599 = _544;
        _600 = _543;
        _601 = _454;
    }
    uint _604 = asuint(asfloat(View_PrimitiveSceneData.Load4(_550 * 16 + 0)).x);
    float _662 = 0.0f;
    [branch]
    if ((asuint(asfloat(View_PrimitiveSceneData.Load4(_550 * 16 + 0)).x) & 4u) != 0u)
    {
        float3 _630 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _542, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _641 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_630.x), int(_630.y), int(_630.z), 0).xyz, 0)));
        _662 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_641.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_630 / _641.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _662 = 1.0f;
    }
    float3 _675 = ((_600 - (_600 * _599)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _682 = (lerp((0.07999999821186065673828125f * _598).xxx, _600, _599.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _685 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _690 = 0.0f.xxx;
    if (_685)
    {
        _690 = _675 + (_682 * 0.449999988079071044921875f);
    }
    else
    {
        _690 = _675;
    }
    bool3 _691 = _685.xxx;
    bool3 _881 = isnan(_462);
    bool3 _882 = isnan(0.0f.xxx);
    float3 _883 = max(_462, 0.0f.xxx);
    float3 _884 = float3(_881.x ? 0.0f.xxx.x : _883.x, _881.y ? 0.0f.xxx.y : _883.y, _881.z ? 0.0f.xxx.z : _883.z);
    float3 _699 = float3(_882.x ? _462.x : _884.x, _882.y ? _462.y : _884.y, _882.z ? _462.z : _884.z);
    float3 _779 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _725 = _550 + 31u;
        float3 _734 = abs(((View_View_ViewTilePosition - asfloat(View_PrimitiveSceneData.Load4((_550 + 1u) * 16 + 0)).xyz) * 2097152.0f) + (_542 - asfloat(View_PrimitiveSceneData.Load4((_550 + 18u) * 16 + 0)).xyz));
        float3 _735 = float3(asfloat(View_PrimitiveSceneData.Load4((_550 + 17u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_550 + 24u) * 16 + 0)).w, asfloat(View_PrimitiveSceneData.Load4((_550 + 25u) * 16 + 0)).w) + 1.0f.xxx;
        float3 _778 = 0.0f.xxx;
        if (any(bool3(_734.x > _735.x, _734.y > _735.y, _734.z > _735.z)))
        {
            float3 _758 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _759 = _542 * 0.57700002193450927734375f.xxx;
            float3 _774 = frac(mad((_759.x + _759.y) + _759.z, 0.00200000009499490261077880859375f, frac(((_758.x + _758.y) + _758.z) * 4194.30419921875f))).xxx;
            _778 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_774.x > 0.5f.xxx.x, _774.y > 0.5f.xxx.y, _774.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _757 = 0.0f.xxx;
            if (asfloat(View_PrimitiveSceneData.Load4(_725 * 16 + 0)).x > 0.0f)
            {
                float3 _745 = abs(_248 - in_var_TEXCOORD9);
                float _746 = _745.x;
                float _747 = _745.y;
                float _748 = _745.z;
                float _749 = isnan(_748) ? _747 : (isnan(_747) ? _748 : max(_747, _748));
                _757 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs((isnan(_749) ? _746 : (isnan(_746) ? _749 : max(_746, _749))) - asfloat(View_PrimitiveSceneData.Load4(_725 * 16 + 0)).x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _757 = _699;
            }
            _778 = _757;
        }
        _779 = _778;
    }
    else
    {
        _779 = _699;
    }
    float4 _785 = float4((lerp(0.0f.xxx, _690 + (float3(_691.x ? 0.0f.xxx.x : _682.x, _691.y ? 0.0f.xxx.y : _682.y, _691.z ? 0.0f.xxx.z : _682.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _779) * 1.0f, 0.0f);
    float4 _792 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _791 = _785;
        _791.w = 0.0f;
        _792 = _791;
    }
    else
    {
        _792 = _785;
    }
    float2 _796 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _805 = (_601 * 0.5f) + 0.5f.xxx;
    float4 _807 = 0.0f.xxxx;
    _807.x = _805.x;
    _807.y = _805.y;
    _807.z = _805.z;
    _807.w = mad(2.0f, float((_604 & 256u) != 0u), float((_604 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _814 = 0.0f.xxxx;
    _814.x = _600.x;
    _814.y = _600.y;
    _814.z = _600.z;
    _814.w = (frac(dot(_796.xyx * _796.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _820 = 0.0f.xxxx;
    _820.x = _662;
    _820.y = 1.0f;
    _820.z = 1.0f;
    _820.w = 1.0f;
    float4 _827 = _792 * View_View_PreExposure;
    float3 _828 = _827.xyz;
    bool3 _900 = isnan(_828);
    bool3 _901 = isnan(32256.0f.xxx);
    float3 _902 = min(_828, 32256.0f.xxx);
    float3 _903 = float3(_900.x ? 32256.0f.xxx.x : _902.x, _900.y ? 32256.0f.xxx.y : _902.y, _900.z ? 32256.0f.xxx.z : _902.z);
    float3 _829 = float3(_901.x ? _828.x : _903.x, _901.y ? _828.y : _903.y, _901.z ? _828.z : _903.z);
    out_var_SV_Target0 = float4(_829.x, _829.y, _829.z, _827.w);
    out_var_SV_Target1 = _807;
    out_var_SV_Target2 = float4(_599, _598, _597, 0.56862747669219970703125f);
    out_var_SV_Target3 = _814;
    out_var_SV_Target5 = _820;
    gl_FragDepth = _536;
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
