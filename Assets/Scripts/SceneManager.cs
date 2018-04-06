using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneManager : MonoBehaviour {

    public void play() {
        Application.LoadLevel("SceneAR");
    }


    public void continuePlay() {
        Application.LoadLevel("SceneAR");
    }

    public void menuPrincipal() {
        Application.LoadLevel("MenuPrincipal");
    }

    public void exit() {
        Application.Quit();
    }
}
