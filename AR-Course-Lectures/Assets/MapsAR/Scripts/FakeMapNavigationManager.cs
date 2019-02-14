using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Mapbox.Unity.Location;
using Mapbox.Examples;

public class FakeMapNavigationManager : MonoBehaviour {

    [SerializeField] private Camera arCamera = null;
    [SerializeField] private Camera mapCamera = null;

    private static FakeMapNavigationManager instance;
    private EditorLocationProviderLocationLog provider = null;
    private POILocator poiLocator = null;
    private bool mapStarted = false;

    public static FakeMapNavigationManager Instance
    {
        get {return instance;}
    }
	// Use this for initialization
	void Start ()
	{

	    MuseumListCanvas mlc = FindObjectOfType<MuseumListCanvas>();
        mlc.MuseumSelected += delegate { StartMaps();};

        instance = this;
        if (mapCamera != null)
            mapCamera.enabled = false;

        provider = GetComponentInChildren<EditorLocationProviderLocationLog>();

        poiLocator = GetComponentInChildren<POILocator>();
        if (poiLocator != null)
            poiLocator.ReachedRouteEnd += OnRouteCompleted;


        StartCoroutine(DelayedStart(0.5f));
	}

    public void StartMaps()
    {
        if (mapStarted) return;

        mapStarted = true;

        if (arCamera != null)
            arCamera.enabled = false;

        if (mapCamera != null)
            mapCamera.enabled = true;

        if (provider != null)
            provider.paused = false;

    }

    protected void OnRouteCompleted()
    {
        if (arCamera != null)
            arCamera.enabled = true;

        if (mapCamera != null)
            mapCamera.enabled = false;

        if (provider != null)
            provider.paused = true;

        AppStateManager.State = AppStateManager.AppState.DestinationReached;
    }

    private IEnumerator DelayedStart(float delayTime)
    {
        //HACK: delaying the pasuse of the fake location provider prevents the placement of the map tiles in strange positions
        yield return new WaitForSeconds(delayTime);

        if (provider != null)
            provider.paused = true;

    }
}
