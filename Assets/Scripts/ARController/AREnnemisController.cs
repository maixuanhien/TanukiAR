using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AREnnemisController : MonoBehaviour {

    [SerializeField]
    private float rotationSpeed = 4.0f;
    [SerializeField]
    private int hp = 5;
    [SerializeField]
    private GameObject koda;
    [SerializeField]
    private GameObject flockingFish;
    [SerializeField]
    private GameObject icon;

    public bool absorbed { get; set; }

    private void Start() {
        absorbed = false;
    }

    private void Update() {
        if (PlayerPrefs.GetInt(gameObject.name) == 1) {
            icon.SetActive(true);
            GameObject go = Instantiate(flockingFish, transform.position, transform.rotation);
            go.transform.parent = transform.parent;
            koda.GetComponent<ARKodaController>().removeTarget(gameObject);
            Destroy(gameObject);
        }
        if (hp > 0) {
            transform.Rotate(Vector3.up, rotationSpeed);
        }
    }

    public void addDamage(int damage) {
        hp = hp - damage;
        if (hp <= 0) {
            absorbed = true;
        }
    }
}
