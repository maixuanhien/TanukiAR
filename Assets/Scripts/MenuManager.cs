using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuManager : MonoBehaviour {

    [SerializeField]
    private GameObject playBtn;
    [SerializeField]
    private GameObject continueBtn;
    [SerializeField]
    private GameObject menuCanvas;
    [SerializeField]
    private GameObject infosCanvas;
    [SerializeField]
    private GameObject resetCanvas;

    private void Start() {
        if (PlayerPrefs.GetInt("play") == 1) {
            if (playBtn.activeSelf) {
                playBtn.SetActive(false);
            }
            if (!continueBtn.activeSelf) {
                continueBtn.SetActive(true);
            }
        }
    }

    //========== Menu Canvas ==========

    public void play() {
        //if (playBtn.activeSelf) {
        //    playBtn.SetActive(false);
        //}
        //if (!replayBtn.activeSelf) {
        //    replayBtn.SetActive(true);
        //}
        PlayerPrefs.SetInt("play", 1);
    }

    public void infos() {
        if (menuCanvas.activeSelf) {
            menuCanvas.SetActive(false);
        }
        if (!infosCanvas.activeSelf) {
            infosCanvas.SetActive(true);
        }
    }

    public void reset() {
        if (menuCanvas.activeSelf) {
            menuCanvas.SetActive(false);
        }
        if (!resetCanvas.activeSelf) {
            resetCanvas.SetActive(true);
        }
    }

    //========== Infos Canvas ==========

    public void back() {
        if (infosCanvas.activeSelf) {
            infosCanvas.SetActive(false);
        }
        if (!menuCanvas.activeSelf) {
            menuCanvas.SetActive(true);
        }
    }

    //========== Reset Canvas ==========

    public void yes() {
        if (continueBtn.activeSelf) {
            continueBtn.SetActive(false);
        }
        if (!playBtn.activeSelf) {
            playBtn.SetActive(true);
        }
        PlayerPrefs.SetInt("play", 0);
        PlayerPrefs.SetInt("SesshoSeki", 0);
        PlayerPrefs.SetInt("Kawauso", 0);
        PlayerPrefs.SetInt("Itachi", 0);
        PlayerPrefs.SetInt("Bakezori", 0);
        PlayerPrefs.SetInt("AkaShita", 0);
        PlayerPrefs.SetInt("test", 0);
        if (resetCanvas.activeSelf) {
            resetCanvas.SetActive(false);
        }
        if (!menuCanvas.activeSelf) {
            menuCanvas.SetActive(true);
        }
    }

    public void no() {
        if (resetCanvas.activeSelf) {
            resetCanvas.SetActive(false);
        }
        if (!menuCanvas.activeSelf) {
            menuCanvas.SetActive(true);
        }
    }
}
