using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;

[ExecuteInEditMode]
[RequireComponent (typeof (Projector))]
[RequireComponent (typeof (Camera))]
public class ShadowProjector : MonoBehaviour {

	[Header ("Projector")]
	[Range (0.1f, 50)]
	public float farClip = 20;
	private float currentFarClip;
	[Range (0.1f, 2)]
	public float aspectRatio = 0.75f;
	[Range (0.1f, 3)]
	public float size = 1.1f;
	[Range (0.1f, 2)]
	public float imageResolution = 1;
	public bool isDislayingTexture = true;

	[Header ("Shadow")]
	public Color shadowColor = Color.black;

	[Header ("Blur")]
	[Range (0, 20)]
	public int iterations;
	[Range (0, 3)]
	public int downRes;

	private Material eraseBorder;
	private Material blurMat;

	private Camera shadowCamera;
	private RenderTexture cameraTexture;
	private Projector projector;
	private Material projMaterial;

	private LayerMask playerLayerMask;
	private LayerMask groundLayerMask;

	private int imageWidth;
	private int imageHeight;

	private const RenderTextureFormat format = RenderTextureFormat.R8;
	private const int depth = 0;

	void Start () {
		Init ();
	}

	void Init () {
		eraseBorder = new Material (Shader.Find ("Custom/Projector/EraseShadow"));
		blurMat = new Material (Shader.Find ("Custom/Projector/Blur"));
		projMaterial = new Material (Shader.Find ("Custom/Projector/ProjectorShadow"));

		playerLayerMask = LayerMask.GetMask ("PlayerShadow");
		groundLayerMask = LayerMask.GetMask ("Ground");

		InitProjector ();

		imageWidth = (int)(256 * imageResolution * size * aspectRatio);
		imageHeight = (int)(256 * imageResolution * size);

		InitCamera ();

		cameraTexture = new RenderTexture (imageWidth, imageHeight, depth, format);
		cameraTexture.wrapMode = TextureWrapMode.Clamp;
	}

	void InitProjector () {
		projector = transform.GetComponent<Projector> ();
		projector.material = projMaterial;
		projector.aspectRatio = aspectRatio;
		projector.orthographic = true;
		projector.orthographicSize = size;
		projector.farClipPlane = farClip;
		projector.nearClipPlane = 0;
		projector.ignoreLayers = playerLayerMask;
	}

	void InitCamera () {
		shadowCamera = transform.GetComponent<Camera> ();
		shadowCamera.clearFlags = CameraClearFlags.Color;
		shadowCamera.backgroundColor = Color.white;
		shadowCamera.cullingMask = playerLayerMask;
		shadowCamera.orthographic = projector.orthographic;
		shadowCamera.orthographicSize = projector.orthographicSize;
		shadowCamera.fieldOfView = projector.fieldOfView;
		shadowCamera.aspect = projector.aspectRatio;
		shadowCamera.nearClipPlane = projector.nearClipPlane - 2.5f;
		shadowCamera.farClipPlane = projector.farClipPlane;

		shadowCamera.targetTexture = new RenderTexture (imageWidth, imageHeight, depth, format);
		shadowCamera.targetTexture.wrapMode = TextureWrapMode.Clamp;

		shadowCamera.SetReplacementShader (Shader.Find ("Custom/Projector/Mask"), null);
	}

	void Update () {
		if (!Application.isPlaying && (imageWidth != (int)(256 * imageResolution * size * aspectRatio)))
			Init ();

		RaycastHit hit;
		if (Physics.Raycast (transform.position, Vector3.down, out hit, farClip, groundLayerMask)) {
			currentFarClip = (transform.position.y - hit.point.y) + 2;
			projector.farClipPlane = shadowCamera.farClipPlane = currentFarClip;
			projMaterial.SetFloat ("_Offset", (currentFarClip - 2) / farClip);
		}
	}

	void OnPostRender () {
		Graphics.Blit (shadowCamera.targetTexture, cameraTexture);

		BlurTexture (cameraTexture);
		RemoveBorder (cameraTexture);

		projMaterial.SetTexture ("_ShadowTex", cameraTexture);
		projMaterial.SetColor ("_ShadowColor", shadowColor);
	}

	void BlurTexture (RenderTexture src) {
		int width = imageWidth >> downRes;
		int height = imageHeight >> downRes;

		RenderTexture rt1 = RenderTexture.GetTemporary (width, height, depth, format);
		Graphics.Blit (src, rt1);

		for (int i = 0; i < iterations; i++) {
			RenderTexture rt2 = RenderTexture.GetTemporary (width, height, depth, format);
			Graphics.Blit (rt1, rt2, blurMat);
			RenderTexture.ReleaseTemporary (rt1);
			rt1 = rt2;
		}

		Graphics.Blit (rt1, src);
	}

	void RemoveBorder (RenderTexture src) {
		Graphics.SetRenderTarget (src);

		float epsilonX = 1.0f / imageWidth;
		float epsilonY = 1.0f / imageHeight;

		float x = 1.0f - epsilonX;
		float y = 1.0f - epsilonY;

		eraseBorder.SetPass (0);
		GL.Begin (GL.LINES);
		GL.Vertex3 (-x, -y, 0);
		GL.Vertex3 (x + epsilonX, -y, 0);

		GL.Vertex3 (-x, y, 0);
		GL.Vertex3 (x + epsilonX, y, 0);

		GL.Vertex3 (-x, -y, 0);
		GL.Vertex3 (-x, y + epsilonY, 0);

		GL.Vertex3 (x, -y, 0);
		GL.Vertex3 (x, y + epsilonY, 0);
		GL.End ();
	}

	private void OnGUI () {
		if (isDislayingTexture)
			GUI.DrawTexture (new Rect (0, 0, imageWidth / imageResolution / size * 1.5f, imageHeight / imageResolution / size * 1.5f), cameraTexture, ScaleMode.ScaleToFit, false);
	}

}