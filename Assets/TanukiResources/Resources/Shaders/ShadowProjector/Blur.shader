Shader "Custom/Projector/Blur"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_TexelSize;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}
			fixed4 boxBlur(sampler2D tex, float2 uv, float4 size) {
				fixed4 t = 	tex2D(tex, uv 	+ float2(-size.x, size.y)) 	+ tex2D(tex, uv  + float2(0, size.y)) 	+ tex2D(tex, uv + float2(size.x, size.y)) +
							tex2D(tex, uv 	+ float2(-size.x, 0)) 		+ tex2D(tex, uv  + float2(0, 0)) 		+ tex2D(tex, uv + float2(size.x, 0)) +
							tex2D(tex, uv 	+ float2(-size.x, -size.y)) + tex2D(tex, uv  + float2(0, -size.y)) 	+ tex2D(tex, uv + float2(size.x, -size.y));
				return t / 9;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = boxBlur(_MainTex, i.uv, _MainTex_TexelSize);
				return col;
			}
			ENDCG
		}
	}
}
