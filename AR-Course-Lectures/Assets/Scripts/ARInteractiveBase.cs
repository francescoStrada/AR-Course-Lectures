/* File ARInteractiveBase C# implementation of class ARInteractiveBase */



// global declaration start


using UnityEngine;
using Vuforia;
using UnityEngine.Video;

// global declaration end

class ARInteractiveBase : DefaultTrackableEventHandler
{


    protected override void Start()
    {
      base.Start();
      
      // add specific behaviour at startup
    }


    protected override void OnTrackingFound()
    {
      base.OnTrackingFound();
    
      // add specific behaviour at target found
    }


    protected override void OnTrackingLost()
    {
      base.OnTrackingLost();
      // add specific behaviour at target lost
     
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
      // add specific behaviour at destroy
    }


}
