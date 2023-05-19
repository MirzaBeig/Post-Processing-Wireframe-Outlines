using UnityEngine;

[ExecuteAlways]
public class SetCameraDepthTextureMode : MonoBehaviour
{
    new Camera camera;
    public DepthTextureMode mode = DepthTextureMode.DepthNormals;

    void Start()
    {
        camera = GetComponent<Camera>();
    }

    void Update()
    {
        camera.depthTextureMode = mode;
    }
}
