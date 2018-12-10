/* File ARInteractiveAnimation C# implementation of class ARInteractiveAnimation */



// global declaration start


using UnityEngine;
using Vuforia;
using UnityEngine.Video;
using UnityEngine.Playables;

// global declaration end

class ARInteractiveAnimation : DefaultTrackableEventHandler
{

    protected PlayableDirector director;


    protected override void Start()
    {
      base.Start();
      
      // add specific behaviour at startup
      director = GetComponentInChildren<PlayableDirector>(true);
    }


    protected override void OnTrackingFound()
    {
      base.OnTrackingFound();
    
      // add specific behaviour at target found
      if(director != null)
      {
    	if(director.state == PlayState.Paused)
    		director.Resume();
      	else
    		director.Play();
      }
    }


    protected override void OnTrackingLost()
    {
      base.OnTrackingLost();
      // add specific behaviour at target lost
      if(director != null)
    	director.Pause();
     
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
      // add specific behaviour at destroy
    }


}
