// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|emission-6604-OUT;n:type:ShaderForge.SFN_Tex2d,id:7609,x:32103,y:32280,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_7609,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_LightColor,id:9009,x:31683,y:32367,varname:node_9009,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:5955,x:31683,y:32512,varname:node_5955,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4123,x:31901,y:32455,varname:node_4123,prsc:2|A-9009-RGB,B-5955-OUT;n:type:ShaderForge.SFN_Multiply,id:1060,x:32103,y:32455,varname:node_1060,prsc:2|A-4123-OUT,B-4389-OUT;n:type:ShaderForge.SFN_Multiply,id:6604,x:32316,y:32455,varname:node_6604,prsc:2|A-7609-RGB,B-1060-OUT;n:type:ShaderForge.SFN_OneMinus,id:4389,x:32271,y:32648,varname:node_4389,prsc:2|IN-9039-OUT;n:type:ShaderForge.SFN_Tex2d,id:7843,x:31684,y:32665,ptovrint:False,ptlb:Sketch,ptin:_Sketch,varname:node_7843,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5494-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:5494,x:31490,y:32665,varname:node_5494,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:9039,x:31969,y:32655,varname:node_9039,prsc:2|A-7843-A,B-6150-RGB;n:type:ShaderForge.SFN_Color,id:6150,x:31684,y:32853,ptovrint:False,ptlb:Color Sketch,ptin:_ColorSketch,varname:node_6150,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1975,x:31036,y:33157,ptovrint:False,ptlb:Texture Effect,ptin:_TextureEffect,varname:node_1975,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3a5a96df060a5cf4a9cc0c59e13486b7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1721,x:31235,y:33247,varname:node_1721,prsc:2|A-1975-RGB,B-5373-RGB;n:type:ShaderForge.SFN_Add,id:9743,x:31441,y:33160,varname:node_9743,prsc:2|A-1975-RGB,B-1721-OUT;n:type:ShaderForge.SFN_Append,id:928,x:31641,y:33160,varname:node_928,prsc:2|A-9743-OUT,B-9529-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9529,x:31401,y:33310,ptovrint:False,ptlb:Gradient Ramp,ptin:_GradientRamp,varname:node_9529,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:5373,x:31036,y:33356,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_5373,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8181,x:31847,y:33158,varname:node_8181,prsc:2|A-928-OUT,B-1769-OUT;n:type:ShaderForge.SFN_Color,id:6182,x:31036,y:33557,ptovrint:False,ptlb:Color Effect,ptin:_ColorEffect,varname:node_6182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1769,x:31235,y:33417,varname:node_1769,prsc:2|A-5373-RGB,B-6182-RGB;proporder:7609-7843-6150-1975-9529-5373-6182;pass:END;sub:END;*/

Shader "Shader Forge/S_TestNew" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Sketch ("Sketch", 2D) = "white" {}
        _ColorSketch ("Color Sketch", Color) = (0.5,0.5,0.5,1)
        _TextureEffect ("Texture Effect", 2D) = "white" {}
        _GradientRamp ("Gradient Ramp", Float ) = 1
        _Noise ("Noise", 2D) = "white" {}
        _ColorEffect ("Color Effect", Color) = (0.5,0.5,0.5,1)
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Sketch; uniform float4 _Sketch_ST;
            uniform float4 _ColorSketch;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _Sketch_var = tex2D(_Sketch,TRANSFORM_TEX(i.screenPos.rg, _Sketch));
                float3 emissive = (_Diffuse_var.rgb*((_LightColor0.rgb*attenuation)*(1.0 - (_Sketch_var.a*_ColorSketch.rgb))));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Sketch; uniform float4 _Sketch_ST;
            uniform float4 _ColorSketch;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
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
