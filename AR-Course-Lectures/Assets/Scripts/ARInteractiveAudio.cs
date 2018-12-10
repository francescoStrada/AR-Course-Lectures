/* File ARInteractiveAudio C# implementation of class ARInteractiveAudio */



// global declaration start


using UnityEngine;
using Vuforia;
using UnityEngine.Video;

// global declaration end

class ARInteractiveAudio : DefaultTrackableEventHandler
{

    protected AudioSource audioSource;


    protected override void Start()
    {
      base.Start();
      
      // add specific behaviour at startup
      audioSource = GetComponentInChildren<AudioSource>(true);
    }


    protected override void OnTrackingFound()
    {
      base.OnTrackingFound();
    
      // add specific behaviour at target found
      if(audioSource != null)
      {
    	audioSource.Play();
      }
    }


    protected override void OnTrackingLost()
    {
      base.OnTrackingLost();
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


}
