/* File ARInteractiveAnimation C# implementation of class ARInteractiveAnimation */



// global declaration start


using UnityEngine;
using Vuforia;
using UnityEngine.Video;
using UnityEngine.Playables;
using System;

// global declaration end

class ARInteractiveAnimation : ARInteractable
{

    protected PlayableDirector director;


    protected override void Start()
    {
      base.Start();
      
      // add specific behaviour at startup
      director = GetComponentInChildren<PlayableDirector>(true);
    }


    protected override void OnTrackingFound(object sender,EventArgs args)
    {
      base.OnTrackingFound(sender, args);
    
      // add specific behaviour at target found
      if(activateOnTrackingFound && director != null)
      {
    	if(director.state == PlayState.Paused)
    		director.Resume();
      	else
    		director.Play();
      }
    }


    protected override void OnTrackingLost(object sender,EventArgs args)
    {
      base.OnTrackingLost(sender, args);
      // add specific behaviour at target lost
      if(activateOnTrackingFound && director != null)
    	director.Pause();
     
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
      // add specific behaviour at destroy
    }


}
