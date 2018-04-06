Shader "Custom/Projector/Mask" {
	SubShader {
		Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			float4 vert (float4 vertex : POSITION) : SV_POSITION {
				return UnityObjectToClipPos(vertex);
			}
			
			fixed4 frag () : COLOR {
				return fixed4(0,0,0,0);
			}
			ENDCG
		}
	}
}