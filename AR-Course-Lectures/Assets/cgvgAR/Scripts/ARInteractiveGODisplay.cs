/* File ARInteractiveGODisplay C# implementation of class ARInteractiveGODisplay */



// global declaration start


using UnityEngine;
using Vuforia;
using System;

// global declaration end

class ARInteractiveGODisplay : ARInteractable
{

    [SerializeField]
    protected GameObject goToActivate;
    [SerializeField]
    protected bool deactivateOnTrackingLost;


    protected override void Start()
    {
      base.Start();
      if(goToActivate != null)
    	goToActivate.SetActive(false);
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
      // add specific behaviour at destroy
    }


    protected override void OnTrackingLost(object sender,EventArgs args)
    {
      base.OnTrackingLost(sender, args);
      // add specific behaviour at target lost
     if((activateOnTrackingFound || deactivateOnTrackingLost) && goToActivate != null)
      {
    	goToActivate.SetActive(false);
      }
     
    }


    protected override void OnTrackingFound(object sender,EventArgs args)
    {
      base.OnTrackingFound(sender, args);
    
      // add specific behaviour at target found
      if(activateOnTrackingFound && goToActivate != null)
      {
    	goToActivate.SetActive(true);
      }
    }




    public override void Interact()
    {
      base.Interact();
    
      if(goToActivate != null)
      {
    	bool isActive = goToActivate.activeSelf;
    	goToActivate.SetActive(!isActive);	
      }
      
    }


}
