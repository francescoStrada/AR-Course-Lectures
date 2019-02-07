/* File Subtitles C# implementation of class Subtitles */

/*		Copyright (c) CGVG@POLITO			  */
/*		  All Rights Reserved			  */
/*							  */
/*  THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF CGVG   */
/*  research group  www.polito.it/cgvg                    */
/*  The copyright notice above does not evidence any      */
/*  actual or intended publication of such source code.   */


// global declaration start


using UnityEngine;
using System;
using System.Collections.Generic;
using UnityEngine.UI;

[System.Serializable]
public class SubtitleItem {
	public string name;
	public string text;
	public float length;
}

public enum SubtitlesMode {
	None,
	Hold,
	Loop
}

// global declaration end

class Subtitles : ARInteractable
{

    [SerializeField]
    protected List<SubtitleItem> subtitles = new List<SubtitleItem>();
    protected int itemIdx = 0;
    protected Text text;

    public SubtitlesMode mode = SubtitlesMode.None;


    protected override void OnTrackingLost(object sender,EventArgs args)
    {
      base.OnTrackingLost(sender, args);
      // add specific behaviour at target lost
      if(text != null)
      {
    	Pause();
      }
    
    }


    protected override void OnTrackingFound(object sender,EventArgs args)
    {
      base.OnTrackingFound(sender, args);
    
      // add specific behaviour at target found
      if(activateOnTrackingFound && text != null && !isPlaying)
      {
    	Play();
      }
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
      // add specific behaviour at destroy
    }


    protected override void Start()
    {
      base.Start();
      
      // add specific behaviour at startup
      text = GetComponentInChildren<Text>(true);
    
      //Play();
    }


    protected void ChangeSubtitle()
    {
      if(text != null)
      	text.text = subtitles[itemIdx].text;
    
      float waitTime = subtitles[itemIdx].length;
    
      Debug.Log("Setting subtitle to " + subtitles[itemIdx].text);
    
      itemIdx++;
    
      if(itemIdx >= subtitles.Count)
      {
    	if(mode == SubtitlesMode.Loop)
    	{
    		itemIdx = 0;
    	}
    	else
    		return;
      }
    
      Invoke("ChangeSubtitle", waitTime);
    }


    protected override void Awake()
    {
      base.Awake();
    }




    public override void Interact()
    {
      base.Interact();
    
      if(text != null)
      {
    	if(!isPlaying)
    		Play();
    	else
    		Pause();
      }
    }


    public void Play()
    {
      isPlaying = true;
      itemIdx = 0;
      Invoke("ChangeSubtitle",0f);
    }


    public void Pause()
    {
      isPlaying = false;
      CancelInvoke();
    }


    public bool isPlaying
    {
      protected set; get;
    }


}
