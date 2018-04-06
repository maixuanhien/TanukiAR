// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-7131-OUT,spec-8911-OUT,gloss-4494-OUT,alpha-7041-OUT,voffset-4618-OUT,tess-7322-OUT;n:type:ShaderForge.SFN_Vector1,id:8911,x:32501,y:32732,varname:node_8911,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4494,x:32501,y:32789,varname:node_4494,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Color,id:6704,x:30762,y:32278,ptovrint:False,ptlb:Color 01,ptin:_Color01,varname:node_6704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.03833659,c3:0.7941176,c4:1;n:type:ShaderForge.SFN_Color,id:1301,x:30762,y:32450,ptovrint:False,ptlb:Color 02,ptin:_Color02,varname:node_1301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2906034,c2:0.5290053,c3:0.9191176,c4:1;n:type:ShaderForge.SFN_Lerp,id:2858,x:31057,y:32382,varname:node_2858,prsc:2|A-6704-RGB,B-1301-RGB,T-1865-OUT;n:type:ShaderForge.SFN_DepthBlend,id:8144,x:30224,y:33054,varname:node_8144,prsc:2|DIST-8069-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8069,x:30071,y:33054,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_8069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Clamp01,id:1865,x:30617,y:33145,varname:node_1865,prsc:2|IN-3852-OUT;n:type:ShaderForge.SFN_Divide,id:3852,x:30415,y:33145,varname:node_3852,prsc:2|A-8144-OUT,B-3308-OUT;n:type:ShaderForge.SFN_Dot,id:3308,x:30224,y:33190,varname:node_3308,prsc:2,dt:4|A-1822-OUT,B-4766-OUT;n:type:ShaderForge.SFN_ViewVector,id:1822,x:30071,y:33144,varname:node_1822,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4766,x:30071,y:33276,prsc:2,pt:False;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:292,x:30975,y:33155,varname:node_292,prsc:2|IN-1865-OUT,IMIN-4595-OUT,IMAX-4865-OUT,OMIN-6334-OUT,OMAX-8418-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1763,x:30975,y:32989,varname:node_1763,prsc:2|IN-1865-OUT,IMIN-5070-OUT,IMAX-4199-OUT,OMIN-6047-OUT,OMAX-5181-OUT;n:type:ShaderForge.SFN_Slider,id:4595,x:30460,y:33304,ptovrint:False,ptlb:Depth Min,ptin:_DepthMin,varname:node_4595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4865,x:30460,y:33407,ptovrint:False,ptlb:Depth Max,ptin:_DepthMax,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:6334,x:30617,y:33482,varname:node_6334,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8418,x:30617,y:33541,varname:node_8418,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:5070,x:30460,y:32822,ptovrint:False,ptlb:Foam Min,ptin:_FoamMin,varname:node_5070,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4199,x:30460,y:32918,ptovrint:False,ptlb:Foam Max,ptin:_FoamMax,varname:node_4199,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:6047,x:30617,y:32991,varname:node_6047,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5181,x:30617,y:33050,varname:node_5181,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:1259,x:31152,y:32989,varname:node_1259,prsc:2|IN-1763-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5564,x:31899,y:32973,varname:node_5564,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-486-OUT;n:type:ShaderForge.SFN_Multiply,id:5639,x:32095,y:32973,varname:node_5639,prsc:2|A-5564-OUT,B-2793-OUT;n:type:ShaderForge.SFN_Vector1,id:2793,x:31899,y:33126,varname:node_2793,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:7041,x:32501,y:32971,varname:node_7041,prsc:2|IN-4033-OUT;n:type:ShaderForge.SFN_Clamp01,id:486,x:31786,y:32836,varname:node_486,prsc:2|IN-317-OUT;n:type:ShaderForge.SFN_Multiply,id:3549,x:31514,y:32846,varname:node_3549,prsc:2|A-440-OUT,B-3354-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3354,x:31336,y:32916,ptovrint:False,ptlb:Foam Power,ptin:_FoamPower,varname:node_3354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Add,id:1152,x:32318,y:32570,varname:node_1152,prsc:2|A-2858-OUT,B-486-OUT;n:type:ShaderForge.SFN_Clamp01,id:7131,x:32501,y:32570,varname:node_7131,prsc:2|IN-1152-OUT;n:type:ShaderForge.SFN_Add,id:4033,x:32293,y:33138,varname:node_4033,prsc:2|A-5639-OUT,B-292-OUT;n:type:ShaderForge.SFN_OneMinus,id:4111,x:31336,y:32989,varname:node_4111,prsc:2|IN-1259-OUT;n:type:ShaderForge.SFN_Power,id:3760,x:31514,y:33035,varname:node_3760,prsc:2|VAL-4111-OUT,EXP-8217-OUT;n:type:ShaderForge.SFN_Vector1,id:8217,x:31336,y:33120,varname:node_8217,prsc:2,v1:5;n:type:ShaderForge.SFN_Add,id:317,x:31693,y:33035,varname:node_317,prsc:2|A-3549-OUT,B-3760-OUT;n:type:ShaderForge.SFN_Multiply,id:440,x:31336,y:32727,varname:node_440,prsc:2|A-1072-OUT,B-4111-OUT;n:type:ShaderForge.SFN_Multiply,id:1072,x:31336,y:32571,varname:node_1072,prsc:2|A-2858-OUT,B-2225-RGB;n:type:ShaderForge.SFN_Tex2d,id:2225,x:31009,y:32655,ptovrint:False,ptlb:Foam Texture,ptin:_FoamTexture,varname:node_2225,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1598267fdb1be1e42ad8787b38ee956c,ntxv:0,isnm:False|UVIN-3938-UVOUT;n:type:ShaderForge.SFN_Panner,id:3938,x:30399,y:32448,varname:node_3938,prsc:2,spu:0.01,spv:0.01|UVIN-5268-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:5268,x:29873,y:32402,varname:node_5268,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:7322,x:32655,y:33226,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_7322,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Tex2d,id:6583,x:31852,y:33576,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_6583,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4868-UVOUT;n:type:ShaderForge.SFN_Panner,id:4868,x:31669,y:33576,varname:node_4868,prsc:2,spu:0.5,spv:0.5|UVIN-8876-UVOUT,DIST-3702-OUT;n:type:ShaderForge.SFN_TexCoord,id:8876,x:31458,y:33502,varname:node_8876,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:4873,x:30478,y:33621,varname:node_4873,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:8136,x:30649,y:33829,varname:node_8136,prsc:2;n:type:ShaderForge.SFN_Add,id:9594,x:30887,y:33761,varname:node_9594,prsc:2|A-8136-X,B-3702-OUT;n:type:ShaderForge.SFN_Multiply,id:985,x:31086,y:33761,varname:node_985,prsc:2|A-9594-OUT,B-916-OUT;n:type:ShaderForge.SFN_ValueProperty,id:916,x:30887,y:33927,ptovrint:False,ptlb:Wave Count,ptin:_WaveCount,varname:node_916,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Sin,id:6066,x:31274,y:33761,varname:node_6066,prsc:2|IN-985-OUT;n:type:ShaderForge.SFN_Multiply,id:610,x:31468,y:33761,varname:node_610,prsc:2|A-6066-OUT,B-7169-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7169,x:31274,y:33920,ptovrint:False,ptlb:Wave Spread,ptin:_WaveSpread,varname:node_7169,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Add,id:7239,x:31674,y:33761,varname:node_7239,prsc:2|A-610-OUT,B-5294-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5294,x:31468,y:33920,ptovrint:False,ptlb:Wave Width,ptin:_WaveWidth,varname:node_5294,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_RemapRange,id:8759,x:31852,y:33761,varname:node_8759,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-7239-OUT;n:type:ShaderForge.SFN_Multiply,id:5713,x:32093,y:33682,varname:node_5713,prsc:2|A-6583-R,B-8759-OUT;n:type:ShaderForge.SFN_Multiply,id:1781,x:32303,y:33738,varname:node_1781,prsc:2|A-5713-OUT,B-2538-OUT;n:type:ShaderForge.SFN_Slider,id:2538,x:31987,y:33849,ptovrint:False,ptlb:Wave Height,ptin:_WaveHeight,varname:node_2538,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Append,id:6440,x:32505,y:33657,varname:node_6440,prsc:2|A-168-OUT,B-1781-OUT;n:type:ShaderForge.SFN_Vector1,id:168,x:32303,y:33657,varname:node_168,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:4618,x:32716,y:33657,varname:node_4618,prsc:2|A-6440-OUT,B-4194-OUT;n:type:ShaderForge.SFN_Vector1,id:4194,x:32505,y:33784,varname:node_4194,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:3702,x:30856,y:33609,varname:node_3702,prsc:2|A-4873-TSL,B-1274-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1274,x:30478,y:33774,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_1274,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:6704-1301-8069-5070-4199-3354-4595-4865-2225-7322-6583-916-7169-5294-2538-1274;pass:END;sub:END;*/

Shader "Shader Forge/S_Water" {
    Properties {
        _Color01 ("Color 01", Color) = (0,0.03833659,0.7941176,1)
        _Color02 ("Color 02", Color) = (0.2906034,0.5290053,0.9191176,1)
        _Depth ("Depth", Float ) = 10
        _FoamMin ("Foam Min", Range(0, 1)) = 0
        _FoamMax ("Foam Max", Range(0, 1)) = 1
        _FoamPower ("Foam Power", Float ) = 8
        _DepthMin ("Depth Min", Range(0, 1)) = 0
        _DepthMax ("Depth Max", Range(0, 1)) = 0
        _FoamTexture ("Foam Texture", 2D) = "white" {}
        _Tesselation ("Tesselation", Range(0, 10)) = 1
        _Distortion ("Distortion", 2D) = "white" {}
        _WaveCount ("Wave Count", Float ) = 10
        _WaveSpread ("Wave Spread", Float ) = 0.3
        _WaveWidth ("Wave Width", Float ) = 10
        _WaveHeight ("Wave Height", Range(0, 1)) = 0.5
        _WaveSpeed ("Wave Speed", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color01;
            uniform float4 _Color02;
            uniform float _Depth;
            uniform float _DepthMin;
            uniform float _DepthMax;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _FoamPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Tesselation;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _WaveCount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4873 = _Time + _TimeEditor;
                float node_3702 = (node_4873.r*_WaveSpeed);
                float2 node_4868 = (o.uv0+node_3702*float2(0.5,0.5));
                float4 _Distortion_var = tex2Dlod(_Distortion,float4(TRANSFORM_TEX(node_4868, _Distortion),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_Distortion_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_3702)*_WaveCount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.8; // Convert roughness to gloss
                float perceptualRoughness = 0.8;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_1865 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float3 node_2858 = lerp(_Color01.rgb,_Color02.rgb,node_1865);
                float4 node_1606 = _Time + _TimeEditor;
                float2 node_3938 = (i.uv0+node_1606.g*float2(0.01,0.01));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_3938, _FoamTexture));
                float node_6047 = 0.0;
                float node_4111 = (1.0 - saturate((node_6047 + ( (node_1865 - _FoamMin) * (1.0 - node_6047) ) / (_FoamMax - _FoamMin))));
                float3 node_486 = saturate(((((node_2858*_FoamTexture_var.rgb)*node_4111)*_FoamPower)+pow(node_4111,5.0)));
                float3 diffuseColor = saturate((node_2858+node_486)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_6334 = 0.0;
                fixed4 finalRGBA = fixed4(finalColor,saturate(((node_486.r*0.5)+(node_6334 + ( (node_1865 - _DepthMin) * (1.0 - node_6334) ) / (_DepthMax - _DepthMin)))));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color01;
            uniform float4 _Color02;
            uniform float _Depth;
            uniform float _DepthMin;
            uniform float _DepthMax;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _FoamPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Tesselation;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _WaveCount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4873 = _Time + _TimeEditor;
                float node_3702 = (node_4873.r*_WaveSpeed);
                float2 node_4868 = (o.uv0+node_3702*float2(0.5,0.5));
                float4 _Distortion_var = tex2Dlod(_Distortion,float4(TRANSFORM_TEX(node_4868, _Distortion),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_Distortion_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_3702)*_WaveCount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.8; // Convert roughness to gloss
                float perceptualRoughness = 0.8;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_1865 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float3 node_2858 = lerp(_Color01.rgb,_Color02.rgb,node_1865);
                float4 node_5726 = _Time + _TimeEditor;
                float2 node_3938 = (i.uv0+node_5726.g*float2(0.01,0.01));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_3938, _FoamTexture));
                float node_6047 = 0.0;
                float node_4111 = (1.0 - saturate((node_6047 + ( (node_1865 - _FoamMin) * (1.0 - node_6047) ) / (_FoamMax - _FoamMin))));
                float3 node_486 = saturate(((((node_2858*_FoamTexture_var.rgb)*node_4111)*_FoamPower)+pow(node_4111,5.0)));
                float3 diffuseColor = saturate((node_2858+node_486)); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_6334 = 0.0;
                fixed4 finalRGBA = fixed4(finalColor * saturate(((node_486.r*0.5)+(node_6334 + ( (node_1865 - _DepthMin) * (1.0 - node_6334) ) / (_DepthMax - _DepthMin)))),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform float _Tesselation;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _WaveCount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float4 node_4873 = _Time + _TimeEditor;
                float node_3702 = (node_4873.r*_WaveSpeed);
                float2 node_4868 = (o.uv0+node_3702*float2(0.5,0.5));
                float4 _Distortion_var = tex2Dlod(_Distortion,float4(TRANSFORM_TEX(node_4868, _Distortion),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_Distortion_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_3702)*_WaveCount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color01;
            uniform float4 _Color02;
            uniform float _Depth;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _FoamPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Tesselation;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _WaveCount;
            uniform float _WaveSpread;
            uniform float _WaveWidth;
            uniform float _WaveHeight;
            uniform float _WaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4873 = _Time + _TimeEditor;
                float node_3702 = (node_4873.r*_WaveSpeed);
                float2 node_4868 = (o.uv0+node_3702*float2(0.5,0.5));
                float4 _Distortion_var = tex2Dlod(_Distortion,float4(TRANSFORM_TEX(node_4868, _Distortion),0.0,0));
                v.vertex.xyz += float3(float2(0.0,((_Distortion_var.r*(((sin(((mul(unity_ObjectToWorld, v.vertex).r+node_3702)*_WaveCount))*_WaveSpread)+_WaveWidth)*0.5+0.5))*_WaveHeight)),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_1865 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float3 node_2858 = lerp(_Color01.rgb,_Color02.rgb,node_1865);
                float4 node_6200 = _Time + _TimeEditor;
                float2 node_3938 = (i.uv0+node_6200.g*float2(0.01,0.01));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_3938, _FoamTexture));
                float node_6047 = 0.0;
                float node_4111 = (1.0 - saturate((node_6047 + ( (node_1865 - _FoamMin) * (1.0 - node_6047) ) / (_FoamMax - _FoamMin))));
                float3 node_486 = saturate(((((node_2858*_FoamTexture_var.rgb)*node_4111)*_FoamPower)+pow(node_4111,5.0)));
                float3 diffColor = saturate((node_2858+node_486));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float roughness = 0.8;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
