// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:1,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:36175,y:33029,varname:node_3138,prsc:2|custl-2807-OUT,clip-4748-A;n:type:ShaderForge.SFN_NormalVector,id:5749,x:33430,y:32834,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:866,x:33430,y:33026,varname:node_866,prsc:2;n:type:ShaderForge.SFN_Dot,id:2704,x:33614,y:32935,varname:node_2704,prsc:2,dt:1|A-5749-OUT,B-866-OUT;n:type:ShaderForge.SFN_Power,id:4818,x:33932,y:32990,varname:node_4818,prsc:2|VAL-2704-OUT,EXP-6456-OUT;n:type:ShaderForge.SFN_Slider,id:6456,x:33558,y:33162,ptovrint:False,ptlb:Strength,ptin:_Strength,varname:node_6456,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1.842003,max:20;n:type:ShaderForge.SFN_Vector2,id:122,x:33900,y:32784,varname:node_122,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Vector1,id:5833,x:33932,y:32867,varname:node_5833,prsc:2,v1:0;n:type:ShaderForge.SFN_LightAttenuation,id:7407,x:34255,y:33565,varname:node_7407,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3730,x:34791,y:32937,varname:node_3730,prsc:2|A-4845-OUT,B-5595-OUT;n:type:ShaderForge.SFN_Step,id:4845,x:34497,y:33525,varname:node_4845,prsc:2|A-673-OUT,B-7407-OUT;n:type:ShaderForge.SFN_Slider,id:673,x:34098,y:33440,ptovrint:False,ptlb:Shadow Size,ptin:_ShadowSize,varname:node_673,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:9311,x:35076,y:33136,varname:node_9311,prsc:2|A-4641-RGB,B-4211-RGB,T-3730-OUT;n:type:ShaderForge.SFN_Color,id:4211,x:34776,y:33301,ptovrint:False,ptlb:Shadow Color,ptin:_ShadowColor,varname:node_4211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9632353,c2:0.9561527,c3:0.9561527,c4:1;n:type:ShaderForge.SFN_Color,id:4641,x:35076,y:32973,ptovrint:False,ptlb:Global color,ptin:_Globalcolor,varname:node_4641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03443987,c2:0.2389416,c3:0.3602941,c4:1;n:type:ShaderForge.SFN_Posterize,id:8311,x:34355,y:33824,varname:node_8311,prsc:2|IN-4818-OUT,STPS-5363-OUT;n:type:ShaderForge.SFN_Slider,id:5363,x:34198,y:34039,ptovrint:False,ptlb:Shadow Effects,ptin:_ShadowEffects,varname:node_5363,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:5,max:5;n:type:ShaderForge.SFN_Lerp,id:8183,x:35235,y:33702,varname:node_8183,prsc:2|A-4748-RGB,B-4211-RGB,T-9587-OUT;n:type:ShaderForge.SFN_Blend,id:7196,x:35236,y:33353,varname:node_7196,prsc:2,blmd:10,clmp:True|SRC-9311-OUT,DST-1818-OUT;n:type:ShaderForge.SFN_Multiply,id:9587,x:34719,y:33823,varname:node_9587,prsc:2|A-8311-OUT,B-4845-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8234,x:33715,y:33287,ptovrint:False,ptlb:Thickness,ptin:_Thickness,varname:node_8234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4748,x:34802,y:33577,ptovrint:False,ptlb:node_451,ptin:_node_451,varname:node_4748,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5595,x:34318,y:32953,varname:node_5595,prsc:2|A-5833-OUT,B-4818-OUT,C-8234-OUT;n:type:ShaderForge.SFN_Multiply,id:1818,x:35594,y:33630,varname:node_1818,prsc:2|A-8183-OUT,B-4748-A;n:type:ShaderForge.SFN_NormalVector,id:2275,x:34413,y:32512,prsc:2,pt:True;n:type:ShaderForge.SFN_ComponentMask,id:1100,x:34859,y:32642,varname:node_1100,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5459-OUT;n:type:ShaderForge.SFN_Lerp,id:1466,x:35463,y:32620,varname:node_1466,prsc:2|A-7196-OUT,B-5443-OUT,T-2235-OUT;n:type:ShaderForge.SFN_Tex2d,id:5607,x:34875,y:32269,ptovrint:False,ptlb:node_2860,ptin:_node_2860,varname:node_5607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Dot,id:2235,x:35093,y:32653,varname:node_2235,prsc:2,dt:1|A-1100-OUT,B-9472-OUT;n:type:ShaderForge.SFN_Slider,id:9472,x:34702,y:32841,ptovrint:False,ptlb:Texture intensity,ptin:_Textureintensity,varname:node_9472,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2807,x:35568,y:33111,varname:node_2807,prsc:2|A-1466-OUT,B-7196-OUT;n:type:ShaderForge.SFN_Multiply,id:5293,x:35080,y:32498,varname:node_5293,prsc:2|A-5607-A,B-3731-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3731,x:34875,y:32498,ptovrint:False,ptlb:Alpha intensity,ptin:_Alphaintensity,varname:node_3731,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5443,x:35326,y:32443,varname:node_5443,prsc:2|A-5607-RGB,B-5293-OUT;n:type:ShaderForge.SFN_Multiply,id:5459,x:34651,y:32592,varname:node_5459,prsc:2|A-2275-OUT,B-7730-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7730,x:34309,y:32667,ptovrint:False,ptlb:Emissive height,ptin:_Emissiveheight,varname:node_7730,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:6456-673-4211-4641-5363-8234-9472-3731-7730-4748-5607;pass:END;sub:END;*/

Shader "Shader Forge/T_Enviro_Light" {
    Properties {
        _Strength ("Strength", Range(1, 20)) = 1.842003
        _ShadowSize ("Shadow Size", Range(0, 1)) = 1
        _ShadowColor ("Shadow Color", Color) = (0.9632353,0.9561527,0.9561527,1)
        _Globalcolor ("Global color", Color) = (0.03443987,0.2389416,0.3602941,1)
        _ShadowEffects ("Shadow Effects", Range(1, 5)) = 5
        _Thickness ("Thickness", Float ) = 0
        _Textureintensity ("Texture intensity", Range(0, 1)) = 0
        _Alphaintensity ("Alpha intensity", Float ) = 0
        _Emissiveheight ("Emissive height", Float ) = 0
        _node_451 ("node_451", 2D) = "white" {}
        _node_2860 ("node_2860", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest+1"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZWrite Off
            
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
            uniform float _Strength;
            uniform float _ShadowSize;
            uniform float4 _ShadowColor;
            uniform float4 _Globalcolor;
            uniform float _ShadowEffects;
            uniform float _Thickness;
            uniform sampler2D _node_451; uniform float4 _node_451_ST;
            uniform sampler2D _node_2860; uniform float4 _node_2860_ST;
            uniform float _Textureintensity;
            uniform float _Alphaintensity;
            uniform float _Emissiveheight;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _node_451_var = tex2D(_node_451,TRANSFORM_TEX(i.uv0, _node_451));
                clip(_node_451_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_4845 = step(_ShadowSize,attenuation);
                float node_4818 = pow(max(0,dot(normalDirection,lightDirection)),_Strength);
                float3 node_7196 = saturate(( (lerp(_node_451_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*_node_451_var.a) > 0.5 ? (1.0-(1.0-2.0*((lerp(_node_451_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*_node_451_var.a)-0.5))*(1.0-lerp(_Globalcolor.rgb,_ShadowColor.rgb,(node_4845*(0.0*node_4818*_Thickness))))) : (2.0*(lerp(_node_451_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*_node_451_var.a)*lerp(_Globalcolor.rgb,_ShadowColor.rgb,(node_4845*(0.0*node_4818*_Thickness)))) ));
                float4 _node_2860_var = tex2D(_node_2860,TRANSFORM_TEX(i.uv0, _node_2860));
                float3 finalColor = (lerp(node_7196,(_node_2860_var.rgb*(_node_2860_var.a*_Alphaintensity)),max(0,dot((normalDirection*_Emissiveheight).g,_Textureintensity)))*node_7196);
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
            ZWrite Off
            
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
            uniform float _Strength;
            uniform float _ShadowSize;
            uniform float4 _ShadowColor;
            uniform float4 _Globalcolor;
            uniform float _ShadowEffects;
            uniform float _Thickness;
            uniform sampler2D _node_451; uniform float4 _node_451_ST;
            uniform sampler2D _node_2860; uniform float4 _node_2860_ST;
            uniform float _Textureintensity;
            uniform float _Alphaintensity;
            uniform float _Emissiveheight;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _node_451_var = tex2D(_node_451,TRANSFORM_TEX(i.uv0, _node_451));
                clip(_node_451_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_4845 = step(_ShadowSize,attenuation);
                float node_4818 = pow(max(0,dot(normalDirection,lightDirection)),_Strength);
                float3 node_7196 = saturate(( (lerp(_node_451_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*_node_451_var.a) > 0.5 ? (1.0-(1.0-2.0*((lerp(_node_451_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*_node_451_var.a)-0.5))*(1.0-lerp(_Globalcolor.rgb,_ShadowColor.rgb,(node_4845*(0.0*node_4818*_Thickness))))) : (2.0*(lerp(_node_451_var.rgb,_ShadowColor.rgb,(floor(node_4818 * _ShadowEffects) / (_ShadowEffects - 1)*node_4845))*_node_451_var.a)*lerp(_Globalcolor.rgb,_ShadowColor.rgb,(node_4845*(0.0*node_4818*_Thickness)))) ));
                float4 _node_2860_var = tex2D(_node_2860,TRANSFORM_TEX(i.uv0, _node_2860));
                float3 finalColor = (lerp(node_7196,(_node_2860_var.rgb*(_node_2860_var.a*_Alphaintensity)),max(0,dot((normalDirection*_Emissiveheight).g,_Textureintensity)))*node_7196);
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
            uniform sampler2D _node_451; uniform float4 _node_451_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _node_451_var = tex2D(_node_451,TRANSFORM_TEX(i.uv0, _node_451));
                clip(_node_451_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
