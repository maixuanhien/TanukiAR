using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flock : MonoBehaviour {

    public float speed;
    public float rotationSpeed = 4.0f;
    public float neighbourDistance = 3.0f;

    public bool turning = false;

    GlobalFlock global;
    private float speedOrigine;

    void Start() {
        speedOrigine = speed;
        speed = Random.Range(1.0f, speedOrigine);
        global = transform.parent.GetComponent<GlobalFlock>();
    }

    void Update() {
        if (Vector3.Distance(transform.position, global.target) >= global.zoneSize) {
            turning = true;
        } else {
            turning = false;
        }
        if (turning) {
            Vector3 direction = global.target - transform.position;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(direction), rotationSpeed * Time.deltaTime);
            speed = Random.Range(1.0f, speedOrigine);
        } else {
            if (Random.Range(0, 5) < 1) {
                applyRules();
            }
        }
        transform.Translate(0, 0, Time.deltaTime * speed);
    }

    void applyRules() {
        List<GameObject> fishList = new List<GameObject>();
        foreach(Transform child in transform.parent) {
            fishList.Add(child.gameObject);
        }
        Vector3 targetPos = global.target;

        Vector3 vcentre = Vector3.zero;
        Vector3 vavoid = Vector3.zero;

        float distance;
        float groupSpeed = 0.1f;
        int groupSize = 0;

        foreach (GameObject fish in fishList) {
            if (fish != this.gameObject) {
                distance = Vector3.Distance(fish.transform.position, this.transform.position);
                if (distance < neighbourDistance) {
                    vcentre = vcentre + fish.transform.position;
                    groupSize++;
                    if (distance < 2.0f) {
                        vavoid = vavoid + (this.transform.position - fish.transform.position);
                    }
                    Flock anotherFlock = fish.GetComponent<Flock>();
                    groupSpeed = groupSpeed + anotherFlock.speed;
                }
            }
        }

        if (groupSize > 0) {
            vcentre = vcentre / groupSize + (targetPos - this.transform.position);
            speed = groupSpeed / groupSize;

            Vector3 direction = (vcentre + vavoid) - transform.position;
            if (direction != Vector3.zero) {
                transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(direction), rotationSpeed * Time.deltaTime);
            }
        }
    }
}
