using System;
using UnityEngine;
using Mapbox.Unity.Location;

public class InfoPoint: MonoBehaviour
{
    //#if UNITY_EDITOR
    EditorLocationProviderLocationLog provider = null;
//#else
//    FakeLocationProvider provider = null;
//#endif

    public bool fired { protected set; get; }

    [SerializeField]private float pauseTime = 3f;
    private ARInteractable[] interactables;

    public void Awake()
    {
        //#if UNITY_EDITOR
        provider = FindObjectOfType<EditorLocationProviderLocationLog>();
        //#else
        //        provider = FindObjectOfType<FakeLocationProvider>();
        //#endif

        interactables = GetComponentsInChildren<ARInteractable>();
    }

    public void Trigger(Mapbox.Examples.POILocator locator)
	{
        Debug.Log("Activated on " + name);
        fired = true;

        if(interactables != null)
            foreach (var interactable in interactables)
            {
                interactable.Play();
            }

        provider.paused = true;
        Invoke("RestartProvider", pauseTime);
    }

    public void Terminate()
    {
        provider.paused = true;
        fired = true;
    }

    protected void RestartProvider()
    {
        if (interactables != null)
            foreach (var interactable in interactables)
            {
                interactable.Pause();
                interactable.gameObject.SetActive(false);
            }

        Debug.Log("Restarting provider");
        enabled = false;
        provider.paused = false;
    }
}
