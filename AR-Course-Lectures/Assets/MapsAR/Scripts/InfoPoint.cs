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

    public void Awake()
    {
        //#if UNITY_EDITOR
        provider = FindObjectOfType<EditorLocationProviderLocationLog>();
        //#else
        //        provider = FindObjectOfType<FakeLocationProvider>();
        //#endif
    }

    public void Trigger(Mapbox.Examples.POILocator locator)
	{
        Debug.Log("Activated on " + name);
        fired = true;

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
        Debug.Log("Restarting provider");
        enabled = false;
        provider.paused = false;
    }
}
