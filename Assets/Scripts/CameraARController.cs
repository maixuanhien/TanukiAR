using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Vuforia;

public class CameraARController : MonoBehaviour {

    private void Start() {
        VuforiaBehaviour.Instance.enabled = false;
    }
}
