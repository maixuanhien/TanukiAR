using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class GlobalFlock : MonoBehaviour {

    [SerializeField]
    private GameObject fish;
    [SerializeField]
    private int amount;
    [SerializeField]
    private float distanceTargetPlayer = 5.0f;

    public float zoneSize = 5.0f;
    private float actualZoneSize = 5.0f;

    public List<GameObject> fishList;

    public Vector3 target;

    private Vector3 positionOrigine;

    private void Update() {
        positionOrigine = transform.position;
        if (amount != transform.childCount || actualZoneSize != zoneSize) {
            actualZoneSize = zoneSize;
            List<GameObject> childs = new List<GameObject>();
            foreach (Transform child in transform) {
                childs.Add(child.gameObject);
            }
            foreach (GameObject go in childs) {
                DestroyImmediate(go);
            }
            fishList = new List<GameObject>();
            for (int i = 0; i < amount; i++) {
                float xRandom = Random.Range(-zoneSize, zoneSize);
                float yRandom = Random.Range(-zoneSize, zoneSize);
                float zRandom = Random.Range(-zoneSize, zoneSize);
                Vector3 position = new Vector3(positionOrigine.x + xRandom, positionOrigine.y + yRandom, positionOrigine.z + zRandom);
                GameObject obj = Instantiate(fish, position, Quaternion.identity);
                obj.transform.parent = transform;
                fishList.Add(obj);
            }
        }
    }

    private void FixedUpdate() {
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (Vector3.Distance(positionOrigine, player.transform.position) < distanceTargetPlayer) {
            target = player.transform.position;
            target.y = target.y + 1.0f;
        } else {
            target = positionOrigine;
        }
    }
}
