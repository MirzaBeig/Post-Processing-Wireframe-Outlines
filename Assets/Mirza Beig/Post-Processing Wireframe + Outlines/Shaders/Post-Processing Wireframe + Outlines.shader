Shader "Mirza Beig/Post-Processing Wireframe + Outlines"
{
	Properties
	{
		[HideInInspector]
		_MainTex("Texture", 2D) = "white" {}

		[Space(5)]

		[HDR] _Colour("Colour", Color) = (0.0, 0.0, 0.0, 0.0)

		[Space(5)]
		
        _LineWidth("Line Width", Range(0.0, 32.0)) = 4
        _EdgeThreshold("Edge Threshold", Range(0.0, 0.0002)) = 0.0

		[Space(5)]

		_Blend1("Blend: Colour -> Depth", Range(0.0, 1.0)) = 1.0
		_Blend2("Blend: Previous -> Outlines", Range(0.0, 1.0)) = 1.0
		_Blend3("Blend: Previous -> Final", Range(0.0, 1.0)) = 1.0
	}

		SubShader
		{
			// No culling or depth.

			Cull Off ZWrite Off ZTest Always

			Pass
			{
				CGPROGRAM

				#pragma vertex vert
				#pragma fragment frag

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

				v2f vert(appdata v)
				{
					v2f o;

					o.vertex = UnityObjectToClipPos(v.vertex);
					o.uv = v.uv;

					return o;
				}

				sampler2D _MainTex;

				float4 _Colour;

				float _LineWidth;
				float _EdgeThreshold;

				sampler2D _CameraDepthTexture;

				float _Blend1;
				float _Blend2;
				float _Blend3;

				float4 AD(float2 uv)
				{
					float4 c = 0.0;
					const int Q = 9;

					float2 s = _LineWidth * ((1.0 / _ScreenParams.xy) / Q);

					for (int y = -Q + 1; y < Q; y++)
					{
						for (int x = -Q + 1; x < Q; x++)
						{
							c += tex2D(_CameraDepthTexture, float4(uv + (float2(x, y) * s), 0.0, 0.0));
						}
					}

					return c / ((Q * 2 - 1) * (Q * 2 - 1));
				}

				float4 frag(v2f i) : SV_Target
				{
					float d = Linear01Depth(tex2D(_CameraDepthTexture, i.uv));
					float ad = Linear01Depth(AD(i.uv));

					float dt = d > ad - _EdgeThreshold;

					float3 c = 1.0, t = tex2D(_MainTex, i.uv);

					c = lerp(t, d, _Blend1);
					c = lerp(c, dt, _Blend2);

					c = lerp(c, lerp(_Colour.rgb, t, dt), _Blend3);

					return float4(c, 1.0);
				}

				ENDCG
			}
		}
}