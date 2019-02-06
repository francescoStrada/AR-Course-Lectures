using System.Collections;
using System.Collections.Generic;
using UnityEngine;

 class MapActivator : ARMarker {
    protected override void OnTrackingFound()
    {
        base.OnTrackingFound();
        FakeMapNavigationManager.Instance.StartMaps();
    }

    protected override void OnTrackingLost()
    {
        base.OnTrackingLost();
    }

    // Use this for initialization
    
	
	// Update is called once per frame
	void Update () {
		
	}
}
