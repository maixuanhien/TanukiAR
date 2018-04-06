using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioController : MonoBehaviour {

    private AudioSource audioSource;

    private static bool created = false;

    private void Awake() {
        if (!created) {
            DontDestroyOnLoad(gameObject);
            created = true;
        }
    }

    private void Start() {
        audioSource = GetComponent<AudioSource>();
        audioSource.Play();
    }
}
