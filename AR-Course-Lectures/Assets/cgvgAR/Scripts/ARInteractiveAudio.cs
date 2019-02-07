/* File ARInteractiveAudio C# implementation of class ARInteractiveAudio */



// global declaration start


using UnityEngine;
using Vuforia;
using UnityEngine.Video;
using System;

// global declaration end

class ARInteractiveAudio : ARInteractable
{

    protected AudioSource audioSource;


    protected override void Start()
    {
      base.Start();
      
      // add specific behaviour at startup
      audioSource = GetComponentInChildren<AudioSource>(true);
    }


    protected override void OnTrackingFound(object sender,EventArgs args)
    {
      base.OnTrackingFound(sender, args);
    
      // add specific behaviour at target found
      if(activateOnTrackingFound && audioSource != null)
      {
    	audioSource.Play();
      }
    }


    protected override void OnTrackingLost(object sender,EventArgs args)
    {
      base.OnTrackingLost(sender, args);
      // add specific behaviour at target lost
      if(audioSource != null)
      {
    	audioSource.Pause();
      }
    
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
      // add specific behaviour at destroy
    }


    protected override void Awake()
    {
      base.Awake();
    }




    public override void Interact()
    {
      base.Interact();
    
      if(audioSource != null)
      {
    	if(!audioSource.isPlaying)
    		audioSource.Play();
    	else
    		audioSource.Pause();
      }
    }


}
