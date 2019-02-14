/* File Slideshow C# implementation of class Slideshow */



// global declaration start


using UnityEngine;
using System;
using System.Collections.Generic;
using UnityEngine.UI;

[System.Serializable]
public class SlideshowImageItem {
	public string name;
	public Sprite sprite;
	public float length;
}

public enum SlideshowMode {
	None,
	Hold,
	Loop
}

// global declaration end

class Slideshow : ARInteractable
{

    [SerializeField]
    protected List<SlideshowImageItem> slideshowImages = new List<SlideshowImageItem>();
    protected int itemIdx = 0;
    [SerializeField]
    protected Image slideshowImage;
    protected AudioSource audioSource;
    [SerializeField]
    protected AudioClip backgroundClip;
    protected Canvas canvas = null;

    public SlideshowMode mode = SlideshowMode.None;


    protected override void Start()
    {
      base.Start();
      
      canvas = GetComponent<Canvas>();  
      if(canvas != null)
    	canvas.enabled = false;
    
      audioSource = GetComponentInChildren<AudioSource>(true);
      if(audioSource != null && backgroundClip != null)
    	audioSource.clip = backgroundClip;
      
      //Play();
    }


    protected override void Awake()
    {
      base.Awake();
    }


    protected override void OnDestroy()
    {
      base.OnDestroy();
      // add specific behaviour at destroy
    }


    protected void ChangeImage()
    {
      if(slideshowImage != null)
      	slideshowImage.sprite = slideshowImages[itemIdx].sprite;
    
      float waitTime = slideshowImages[itemIdx].length;
    
      Debug.Log("Setting sprite at index " + itemIdx);
    
      itemIdx++;
    
      if(itemIdx >= slideshowImages.Count)
      {
    	if(mode == SlideshowMode.Loop)
    	{
    		itemIdx = 0;
    	}
    	else
    		return;
      }
    
      Invoke("ChangeImage", waitTime);
    }




    public override void Play()
    {
      base.Play();
    
      if(canvas != null)
    	canvas.enabled = true;
    
      itemIdx = 0;
      Invoke("ChangeImage",0f);
    
    
      if(audioSource != null && backgroundClip != null)
    	audioSource.Play();
    }


    public override void Pause()
    {
      base.Pause();
    
      CancelInvoke();
      
      if(canvas != null)
    	canvas.enabled = false;
    
      if(audioSource != null && backgroundClip != null)
    	audioSource.Pause();
    }


}
