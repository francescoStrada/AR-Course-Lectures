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
    protected Canvas canvas = null;


    protected override void Start()
    {
      base.Start();
      videoPlayer = GetComponentInChildren<VideoPlayer>();
      if(videoPlayer != null)
      {
    	videoPlayer.isLooping = true;
      }
    	
      canvas = GetComponent<Canvas>();  
      if(canvas != null)
    	canvas.enabled = false;
    }


    protected override void OnTrackingFound(object sender,EventArgs args)
    {
      base.OnTrackingFound(sender, args);
    
      if(activateOnTrackingFound && videoPlayer != null)
      {
    	videoPlayer.Play();
      }
    }


    protected override void OnTrackingLost(object sender,EventArgs args)
    {
      base.OnTrackingLost(sender, args);
     
      if(videoPlayer != null)
      {
    	videoPlayer.Pause();
      }
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
    }


    protected override void Awake()
    {
      base.Awake();
    }


    protected void Update()
    {
      if(Input.GetKeyDown(KeyCode.P))
    	Play();
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


    public override void Play()
    {
      base.Play();
    
      if(canvas != null)
      {
    	Screen.orientation = ScreenOrientation.LandscapeLeft;
    	canvas.enabled = true;
      }
    	
      if(videoPlayer != null)
      {
    	if(!videoPlayer.isPlaying)
    		videoPlayer.Play();
      }
    }


    public override void Pause()
    {
      base.Pause();
    
      if(canvas != null)
      {
    	Screen.orientation = ScreenOrientation.Portrait;
    	canvas.enabled = false;
      }
    
      if(videoPlayer != null)
      {
    	if(!videoPlayer.isPlaying)
    		videoPlayer.Pause();
      }
    }


}
