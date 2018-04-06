using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Finish : MonoBehaviour {

    [SerializeField]
    private GameObject finishCanvas;

    private void Update() {
        int score = PlayerPrefs.GetInt("SesshoSeki") + PlayerPrefs.GetInt("Kawauso")
            + PlayerPrefs.GetInt("Itachi") + PlayerPrefs.GetInt("Bakezori")
            + PlayerPrefs.GetInt("AkaShita");
        if (score < 5) {
            if (finishCanvas.activeSelf) {
                finishCanvas.SetActive(false);
            }
        } else {
            if (!finishCanvas.activeSelf) {
                finishCanvas.SetActive(true);
            }
        }
    }
}
