using UnityEngine;
using Vuforia;

public class KodaTrackableEventHandler : MonoBehaviour, ITrackableEventHandler {

    [SerializeField]
    private GameObject koda;

    protected TrackableBehaviour mTrackableBehaviour;

    protected virtual void Start() {
        mTrackableBehaviour = GetComponent<TrackableBehaviour>();
        if (mTrackableBehaviour)
            mTrackableBehaviour.RegisterTrackableEventHandler(this);
    }

    public void OnTrackableStateChanged(
        TrackableBehaviour.Status previousStatus,
        TrackableBehaviour.Status newStatus) {
        if (newStatus == TrackableBehaviour.Status.DETECTED ||
            newStatus == TrackableBehaviour.Status.TRACKED ||
            newStatus == TrackableBehaviour.Status.EXTENDED_TRACKED) {
            Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " found");

            //koda.GetComponent<ARKodaController>().active = true;

            OnTrackingFound();
        } else if (previousStatus == TrackableBehaviour.Status.TRACKED &&
                   newStatus == TrackableBehaviour.Status.NOT_FOUND) {
            Debug.Log("Trackable " + mTrackableBehaviour.TrackableName + " lost");

            //koda.GetComponent<ARKodaController>().active = false;

            OnTrackingLost();
        } else {
            OnTrackingLost();
        }
    }

    protected virtual void OnTrackingFound() {
        var rendererComponents = GetComponentsInChildren<Renderer>(true);
        var colliderComponents = GetComponentsInChildren<Collider>(true);
        var canvasComponents = GetComponentsInChildren<Canvas>(true);

        // Enable rendering:
        foreach (var component in rendererComponents)
            component.enabled = true;

        // Enable colliders:
        foreach (var component in colliderComponents)
            component.enabled = true;

        // Enable canvas':
        foreach (var component in canvasComponents)
            component.enabled = true;
    }

    protected virtual void OnTrackingLost() {
        var rendererComponents = GetComponentsInChildren<Renderer>(true);
        var colliderComponents = GetComponentsInChildren<Collider>(true);
        var canvasComponents = GetComponentsInChildren<Canvas>(true);

        // Disable rendering:
        foreach (var component in rendererComponents)
            component.enabled = false;

        // Disable colliders:
        foreach (var component in colliderComponents)
            component.enabled = false;

        // Disable canvas':
        foreach (var component in canvasComponents)
            component.enabled = false;
    }
}
