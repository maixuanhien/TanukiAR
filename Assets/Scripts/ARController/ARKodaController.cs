using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ARKodaController : MonoBehaviour {

    [SerializeField]
    private float rotationSpeed = 4.0f;
    [SerializeField]
    private float rateAttack = 2f;
    private float nextAttack = 0f;

    private List<GameObject> targets;

    private Animator animPlayer;
    private Vector3 localPositionOrigin;
    private Quaternion localRotationOrigin;

    [SerializeField]
    private GameObject sake;
    private float startAbsorber = 0f;

    private void Start() {
        targets = new List<GameObject>();

        animPlayer = GetComponent<Animator>();
        animPlayer.SetFloat("VerticalSpeed", 1f);

        localPositionOrigin = transform.localPosition;
        localRotationOrigin = transform.localRotation;
    }

    private void Update() {
        if (targets.Count == 0) {
            if (transform.localPosition != localPositionOrigin) {
                transform.localPosition = localPositionOrigin;
                transform.localRotation = localRotationOrigin;
            }
            transform.Rotate(Vector3.up, rotationSpeed);
            animPlayer.SetFloat("Speed", 0f);
        } else {
            if (targets[0] == null) {
                targets.Remove(targets[0]);
            } else {
                float distance = Vector3.Distance(targets[0].transform.position, transform.position);
                if (distance > 4f) {
                    Vector3 direction = targets[0].transform.position - transform.position;
                    Quaternion rotation = Quaternion.LookRotation(direction);
                    transform.rotation = rotation;
                    animPlayer.SetFloat("Speed", 1f);
                    transform.Translate(0, 0, 8f * Time.deltaTime);
                } else {
                    animPlayer.SetFloat("Speed", 0f);
                    if (!targets[0].GetComponent<AREnnemisController>().absorbed) {
                        if (Time.time > nextAttack) {
                            nextAttack = Time.time + rateAttack;
                            animPlayer.SetTrigger("InstantAttack");
                            //animPlayer.SetLayerWeight(1, 1);
                            targets[0].GetComponent<AREnnemisController>().addDamage(1);
                        }
                    } else {
                        if (!animPlayer.GetBool("IsAbsorbing")) {
                            animPlayer.SetBool("IsAbsorbing", true);
                            startAbsorber = Time.time;
                        } else {
                            if (Time.time - 1f > startAbsorber) {
                                Vector3 sakePosition = sake.transform.position;
                                sakePosition.y = sakePosition.y + 2f;
                                float dis = Vector3.Distance(sakePosition, targets[0].transform.position);
                                if (dis > 2f) {
                                    targets[0].transform.localScale = targets[0].transform.localScale / 1.05f;
                                    Vector3 direction = sakePosition - targets[0].transform.position;
                                    direction = direction.normalized;
                                    targets[0].transform.position = targets[0].transform.position + direction * Time.deltaTime;
                                } else {
                                    PlayerPrefs.SetInt(targets[0].name, 1);
                                    animPlayer.SetBool("IsAbsorbing", false);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void addTarget(GameObject target) {
        targets.Add(target);
    }

    public void removeTarget(GameObject target) {
        targets.Remove(target);
    }
}
