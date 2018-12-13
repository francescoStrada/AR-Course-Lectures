/* File ARInteractiveVideo C# implementation of class ARInteractiveVideo */



// global declaration start


using UnityEngine;
using Vuforia;
using UnityEngine.Video;
using System;

// global declaration end

class ARInteractiveVideo : ARInteractable
{

    protected VideoPlayer videoPlayer;


    protected override void Start()
    {
      base.Start();
      videoPlayer = GetComponentInChildren<VideoPlayer>();
      if(videoPlayer != null)
      {
    	videoPlayer.isLooping = true;
      }  
    }


    protected override void OnTrackingFound(object sender,EventArgs args)
    {
      base.OnTrackingFound(sender, args);
    
      if(activateOnTrackingFound)
      {
    	Interact();
      }
    }


    protected override void OnTrackingLost(object sender,EventArgs args)
    {
      base.OnTrackingLost(sender, args);
     
      if(activateOnTrackingFound && videoPlayer != null)
      {
    	Interact();
      }
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
    }




    public override void Interact()
    {
      base.Interact();
      if(videoPlayer != null)
      {
    	if(!videoPlayer.isPlaying)
    		videoPlayer.Play();
    	else
    		videoPlayer.Pause();
      }
    }


}
