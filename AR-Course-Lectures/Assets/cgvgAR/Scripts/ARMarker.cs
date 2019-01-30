/* File ARMarker C# implementation of class ARMarker */



// global declaration start


using UnityEngine;
using UnityEditor;
using UnityEngine.Assertions;
using System;
using Vuforia;

// global declaration end

class ARMarker : DefaultTrackableEventHandler
{
    public event EventHandler<EventArgs> TrackingFound;
    public event EventHandler<EventArgs> TrackingLost;

    protected bool tracked = false;


    protected override void OnTrackingLost()
    {
      base.OnTrackingLost();
      tracked = false;
    
      if(TrackingLost != null)
    	TrackingLost(this, EventArgs.Empty);
      // add specific behaviour at target lost
     
    }


    protected override void OnTrackingFound()
    {
      base.OnTrackingFound();
      tracked = true;
    
      if(TrackingFound != null)
    	TrackingFound(this, EventArgs.Empty);
    
      // add specific behaviour at target found
    }




    public bool IsTracked()
    {
      return tracked;
    }


}
