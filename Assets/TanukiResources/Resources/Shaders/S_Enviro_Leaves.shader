// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|emission-712-OUT,clip-6130-A,voffset-6328-OUT;n:type:ShaderForge.SFN_Tex2d,id:6130,x:32020,y:32527,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6130,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:712,x:32305,y:32825,varname:node_712,prsc:2|A-6130-RGB,B-5561-RGB,T-6971-OUT;n:type:ShaderForge.SFN_Color,id:5561,x:32020,y:32730,ptovrint:False,ptlb:Color Degrade,ptin:_ColorDegrade,varname:node_5561,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Dot,id:6971,x:32020,y:32899,varname:node_6971,prsc:2,dt:1|A-9275-OUT,B-7068-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9275,x:31765,y:32858,varname:node_9275,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4437-OUT;n:type:ShaderForge.SFN_NormalVector,id:4437,x:31545,y:32980,prsc:2,pt:True;n:type:ShaderForge.SFN_Slider,id:7068,x:31583,y:33179,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_7068,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:6328,x:32985,y:33361,varname:node_6328,prsc:2|A-7893-OUT,B-4916-OUT;n:type:ShaderForge.SFN_RemapRange,id:7893,x:32750,y:33287,varname:node_7893,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1383-OUT;n:type:ShaderForge.SFN_Sin,id:1383,x:32553,y:33287,varname:node_1383,prsc:2|IN-1305-OUT;n:type:ShaderForge.SFN_Add,id:1305,x:32360,y:33287,varname:node_1305,prsc:2|A-7052-OUT,B-532-X;n:type:ShaderForge.SFN_FragmentPosition,id:532,x:32109,y:33425,varname:node_532,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7052,x:32109,y:33287,varname:node_7052,prsc:2|A-4755-T,B-3276-OUT;n:type:ShaderForge.SFN_Time,id:4755,x:31885,y:33287,varname:node_4755,prsc:2;n:type:ShaderForge.SFN_Slider,id:4916,x:32615,y:33505,ptovrint:False,ptlb:Wind deformation,ptin:_Winddeformation,varname:node_4916,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Slider,id:3276,x:31743,y:33449,ptovrint:False,ptlb:Wind speed,ptin:_Windspeed,varname:node_3276,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:6130-5561-7068-4916-3276;pass:END;sub:END;*/

Shader "Shader Forge/S_Enviro_Leaves" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _ColorDegrade ("Color Degrade", Color) = (0.5,0.5,0.5,1)
        _Intensity ("Intensity", Range(0, 5)) = 0
        _Winddeformation ("Wind deformation", Range(0, 0.1)) = 0
        _Windspeed ("Wind speed", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _ColorDegrade;
            uniform float _Intensity;
            uniform float _Winddeformation;
            uniform float _Windspeed;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4755 = _Time + _TimeEditor;
                float node_6328 = ((sin(((node_4755.g*_Windspeed)+mul(unity_ObjectToWorld, v.vertex).r))*2.0+-1.0)*_Winddeformation);
                v.vertex.xyz += float3(node_6328,node_6328,node_6328);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                clip(_Texture_var.a - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_Texture_var.rgb,_ColorDegrade.rgb,max(0,dot(normalDirection.g,_Intensity)));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Winddeformation;
            uniform float _Windspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_4755 = _Time + _TimeEditor;
                float node_6328 = ((sin(((node_4755.g*_Windspeed)+mul(unity_ObjectToWorld, v.vertex).r))*2.0+-1.0)*_Winddeformation);
                v.vertex.xyz += float3(node_6328,node_6328,node_6328);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                clip(_Texture_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
