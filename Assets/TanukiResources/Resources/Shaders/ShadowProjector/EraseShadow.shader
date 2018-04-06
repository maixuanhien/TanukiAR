Shader "Custom/Projector/EraseShadow" {
	SubShader {
		Pass {		
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			float4 vert (float4 vertex : POSITION) : SV_POSITION {
				return vertex;
			}
		
			fixed4 frag () : COLOR {
				return fixed4(1,1,1,0);
			}
			ENDCG
		}
	} 
}