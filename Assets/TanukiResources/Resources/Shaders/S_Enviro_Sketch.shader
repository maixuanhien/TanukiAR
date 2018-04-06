// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35891,y:32821,varname:node_3138,prsc:2|normal-4748-RGB,custl-7196-OUT;n:type:ShaderForge.SFN_Multiply,id:1217,x:33095,y:32130,varname:node_1217,prsc:2|A-5021-OUT,B-9060-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9060,x:33095,y:32300,ptovrint:False,ptlb:Size Full,ptin:_SizeFull,varname:node_9060,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:120;n:type:ShaderForge.SFN_Sin,id:9538,x:33329,y:32130,varname:node_9538,prsc:2|IN-1217-OUT;n:type:ShaderForge.SFN_Abs,id:1988,x:33498,y:32130,varname:node_1988,prsc:2|IN-9538-OUT;n:type:ShaderForge.SFN_NormalVector,id:5749,x:32902,y:32812,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:866,x:32902,y:33004,varname:node_866,prsc:2;n:type:ShaderForge.SFN_Dot,id:2704,x:33086,y:32913,varname:node_2704,prsc:2,dt:1|A-5749-OUT,B-866-OUT;n:type:ShaderForge.SFN_Smoothstep,id:7306,x:34283,y:32957,varname:node_7306,prsc:2|A-5833-OUT,B-7193-OUT,V-4818-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1125,x:33687,y:32130,varname:node_1125,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1988-OUT;n:type:ShaderForge.SFN_Step,id:7193,x:34086,y:33075,varname:node_7193,prsc:2|A-5452-OUT,B-8652-OUT;n:type:ShaderForge.SFN_Multiply,id:5452,x:33593,y:33194,varname:node_5452,prsc:2|A-8234-OUT,B-4818-OUT;n:type:ShaderForge.SFN_Power,id:4818,x:33404,y:32968,varname:node_4818,prsc:2|VAL-2704-OUT,EXP-6456-OUT;n:type:ShaderForge.SFN_Slider,id:6456,x:33030,y:33140,ptovrint:False,ptlb:Strength,ptin:_Strength,varname:node_6456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1.842003,max:20;n:type:ShaderForge.SFN_Step,id:3605,x:34487,y:32814,varname:node_3605,prsc:2|A-8652-OUT,B-7306-OUT;n:type:ShaderForge.SFN_Vector2,id:122,x:33372,y:32762,varname:node_122,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Vector1,id:5833,x:33404,y:32845,varname:node_5833,prsc:2,v1:0;n:type:ShaderForge.SFN_LightAttenuation,id:7407,x:34319,y:33538,varname:node_7407,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3730,x:34791,y:32937,varname:node_3730,prsc:2|A-3605-OUT,B-4845-OUT,C-8344-OUT;n:type:ShaderForge.SFN_Step,id:4845,x:34497,y:33525,varname:node_4845,prsc:2|A-673-OUT,B-7407-OUT;n:type:ShaderForge.SFN_Slider,id:673,x:34319,y:33429,ptovrint:False,ptlb:Shadow Size,ptin:_ShadowSize,varname:node_673,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Step,id:7613,x:34022,y:33233,varname:node_7613,prsc:2|A-5452-OUT,B-8652-OUT;n:type:ShaderForge.SFN_Smoothstep,id:2179,x:34301,y:33171,varname:node_2179,prsc:2|A-5833-OUT,B-7613-OUT,V-4818-OUT;n:type:ShaderForge.SFN_Step,id:8344,x:34487,y:32989,varname:node_8344,prsc:2|A-8652-OUT,B-2179-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9827,x:32420,y:32120,varname:node_9827,prsc:2,sctp:0;n:type:ShaderForge.SFN_Fresnel,id:9656,x:32420,y:32262,varname:node_9656,prsc:2;n:type:ShaderForge.SFN_Add,id:5021,x:32841,y:32130,varname:node_5021,prsc:2|A-9827-UVOUT,B-9656-OUT;n:type:ShaderForge.SFN_Lerp,id:9311,x:35076,y:33136,varname:node_9311,prsc:2|A-4641-RGB,B-4211-RGB,T-3730-OUT;n:type:ShaderForge.SFN_Color,id:4211,x:34776,y:33301,ptovrint:False,ptlb:Shadow Color,ptin:_ShadowColor,varname:node_4211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9632353,c2:0.9561527,c3:0.9561527,c4:1;n:type:ShaderForge.SFN_Color,id:4641,x:35076,y:32973,ptovrint:False,ptlb:Teinte,ptin:_Teinte,varname:node_4641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03443987,c2:0.2389416,c3:0.3602941,c4:1;n:type:ShaderForge.SFN_Posterize,id:8311,x:34355,y:33824,varname:node_8311,prsc:2|IN-4818-OUT,STPS-5363-OUT;n:type:ShaderForge.SFN_Slider,id:5363,x:34198,y:34039,ptovrint:False,ptlb:Shadow Effects,ptin:_ShadowEffects,varname:node_5363,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:5,max:5;n:type:ShaderForge.SFN_Lerp,id:8183,x:34972,y:33682,varname:node_8183,prsc:2|A-4748-RGB,B-4211-RGB,T-9587-OUT;n:type:ShaderForge.SFN_Blend,id:7196,x:35415,y:33410,varname:node_7196,prsc:2,blmd:10,clmp:True|SRC-9311-OUT,DST-8183-OUT;n:type:ShaderForge.SFN_Multiply,id:9587,x:34719,y:33823,varname:node_9587,prsc:2|A-8311-OUT,B-4845-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8234,x:33187,y:33265,ptovrint:False,ptlb:Thickness,ptin:_Thickness,varname:node_8234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4748,x:35010,y:33341,ptovrint:False,ptlb:Base Texture 01,ptin:_BaseTexture01,varname:node_4748,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8652,x:33743,y:32362,varname:node_8652,prsc:2|A-1125-OUT,B-7358-A;n:type:ShaderForge.SFN_Tex2d,id:7358,x:33525,y:32345,ptovrint:False,ptlb:Alpha Texture,ptin:_AlphaTexture,varname:node_7358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:9060-6456-673-4211-4641-5363-8234-4748-7358;pass:END;sub:END;*/

Shader "Shader Forge/hatching" {
    Properties {
        _SizeFull ("Size Full", Float ) = 120
        _Strength ("Strength", Range(1, 20)) = 1.842003
        _ShadowSize ("Shadow Size", Range(0, 1)) = 1
        _ShadowColor ("Shadow Color", Color) = (0.9632353,0.9561527,0.9561527,1)
        _Teinte ("Teinte", Color) = (0.03443987,0.2389416,0.3602941,1)
        _ShadowEffects ("Shadow Effects", Range(1, 5)) = 5
        _Thickness ("Thickness", Float ) = 0
        _BaseTexture01 ("Base Texture 01", 2D) = "white" {}
        _AlphaTexture ("Alpha Texture", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float _SizeFull;
            uniform float _Strength;
            uniform float _ShadowSize;
            uniform float4 _ShadowColor;
            uniform float4 _Teinte;
            uniform float _ShadowEffects;
            uniform float _Thickness;
            uniform sampler2D _BaseTexture01; uniform float4 _BaseTexture01_ST;
            uniform sampler2D _AlphaTexture; uniform float4 _AlphaTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _BaseTexture01_var = tex2D(_BaseTexture01,TRANSFORM_TEX(i.uv0, _BaseTexture01));
                float3 normalLocal = _BaseTexture01_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _AlphaTexture_var = tex2D(_AlphaTexture,TRANSFORM_TEX(i.uv0, _AlphaTexture));
                float node_8652 = (abs(sin(((i.screenPos.rg+(1.0-max(0,dot(normalDirection, viewDirection))))*_SizeFull))).r*_AlphaTexture_var.a);
                float node_5833 = 0.0;
                float node_4818 = pow(max(0,dot(normalDirection,lightDirection)),_Strength);
                float node_5452 = (_Thickness*node_4818);
                float node_4845 = step(_ShadowSize,attenuation);
                float3 finalColor = saturate(( lerp(_BaseTexture01_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845)) > 0.5 ? (1.0-(1.0-2.0*(lerp(_BaseTexture01_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))-0.5))*(1.0-lerp(_Teinte.rgb,_ShadowColor.rgb,(step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 ))*node_4845*step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 )))))) : (2.0*lerp(_BaseTexture01_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*lerp(_Teinte.rgb,_ShadowColor.rgb,(step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 ))*node_4845*step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 ))))) ));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float _SizeFull;
            uniform float _Strength;
            uniform float _ShadowSize;
            uniform float4 _ShadowColor;
            uniform float4 _Teinte;
            uniform float _ShadowEffects;
            uniform float _Thickness;
            uniform sampler2D _BaseTexture01; uniform float4 _BaseTexture01_ST;
            uniform sampler2D _AlphaTexture; uniform float4 _AlphaTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _BaseTexture01_var = tex2D(_BaseTexture01,TRANSFORM_TEX(i.uv0, _BaseTexture01));
                float3 normalLocal = _BaseTexture01_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _AlphaTexture_var = tex2D(_AlphaTexture,TRANSFORM_TEX(i.uv0, _AlphaTexture));
                float node_8652 = (abs(sin(((i.screenPos.rg+(1.0-max(0,dot(normalDirection, viewDirection))))*_SizeFull))).r*_AlphaTexture_var.a);
                float node_5833 = 0.0;
                float node_4818 = pow(max(0,dot(normalDirection,lightDirection)),_Strength);
                float node_5452 = (_Thickness*node_4818);
                float node_4845 = step(_ShadowSize,attenuation);
                float3 finalColor = saturate(( lerp(_BaseTexture01_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845)) > 0.5 ? (1.0-(1.0-2.0*(lerp(_BaseTexture01_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))-0.5))*(1.0-lerp(_Teinte.rgb,_ShadowColor.rgb,(step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 ))*node_4845*step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 )))))) : (2.0*lerp(_BaseTexture01_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*lerp(_Teinte.rgb,_ShadowColor.rgb,(step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 ))*node_4845*step(node_8652,smoothstep( node_5833, step(node_5452,node_8652), node_4818 ))))) ));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
