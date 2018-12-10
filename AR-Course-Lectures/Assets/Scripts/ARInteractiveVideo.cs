/* File ARInteractiveVideo C# implementation of class ARInteractiveVideo */



// global declaration start


using UnityEngine;
using Vuforia;
using UnityEngine.Video;

// global declaration end

class ARInteractiveVideo : DefaultTrackableEventHandler
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


    protected override void OnTrackingFound()
    {
      base.OnTrackingFound();
    
      if(videoPlayer != null)
      {
    	videoPlayer.Play();
      }
    }


    protected override void OnTrackingLost()
    {
      base.OnTrackingLost();
     
      if(videoPlayer != null)
      {
    	videoPlayer.Pause();
      }
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
    }


}
