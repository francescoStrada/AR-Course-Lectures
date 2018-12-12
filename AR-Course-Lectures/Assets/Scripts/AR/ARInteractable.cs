/* File ARInteractable C# implementation of class ARInteractable */



// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;

// global declaration end

class ARInteractable : MonoBehaviour
{

    protected ARMarker marker;

    public bool activateOnTrackingFound = false;


    protected void Awake()
    {
    
      Transform element = gameObject.transform;
    
      while(element != null)
      {
    	ARMarker found = element.gameObject.GetComponent<ARMarker>();
    	if(found == null)
    		element = element.parent;
    	else
    	{
    		marker = found;
    		break;
    	}	
      }
    
      Assert.IsNotNull(marker);
    
      marker.TrackingFound += OnTrackingFound;
      marker.TrackingLost += OnTrackingLost;
    }


    protected virtual void OnDestroy()
    {
      marker.TrackingFound -= OnTrackingFound;
      marker.TrackingLost -= OnTrackingLost;
    }


    protected virtual void OnTrackingLost(object sender,EventArgs args)
    {
      // add specific behaviour at target lost
     
    }


    protected virtual void OnTrackingFound(object sender,EventArgs args)
    {
      Debug.Log("Tracking found " + ((MonoBehaviour)sender).gameObject.name);
      // add specific behaviour at target found
    }


    protected virtual void Start()
    {
    }




    public virtual void OnTap()
    {
      // implement specific behaviour
    }


}
