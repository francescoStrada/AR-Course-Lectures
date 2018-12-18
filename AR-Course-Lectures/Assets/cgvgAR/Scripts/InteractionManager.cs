/* File InteractionManager C# implementation of class InteractionManager */



// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using Vuforia;
using UnityEngine.UI;

// global declaration end

class InteractionManager : MonoBehaviour
{

    private static InteractionManager instance = null;

    protected ARInteractable gazed = null;
    protected Camera cam = null;
    protected float timer = 0f;
    protected AudioSource tapFeedbackAudioSource = null;

    public AudioClip tapFeedbackSound = null;
    public UnityEngine.UI.Image gazeCursor = null;
    public float gazeInterval = 3.0f;
    public bool useTap = true;
    public bool useGaze = false;


    protected void Awake()
    {
      Assert.IsNull(instance);
      instance = this;
    
      cam = FindObjectOfType<Camera>();
      Assert.IsNotNull(cam, "Missing camera in scene");
    
      if(gazeCursor != null)
      {
    	gazeCursor.fillAmount = 0;
    	gazeCursor.enabled = false;
      }
    
      tapFeedbackAudioSource = GetComponentInChildren<AudioSource>();
      if(tapFeedbackAudioSource != null)
    	tapFeedbackAudioSource.clip = tapFeedbackSound;
    	
    }


    protected void Update()
    {
      if(useTap)
    	CheckTap();
      if(useGaze)
    	CheckGaze();  
    }


    protected void FireInteractionOnGaze()
    {
      // to be called for gaze only
      gazed.Interact();
    }


    protected void UpdateGazeCursor()
    {
      if(gazed == null || gazeCursor == null)
    	return;
    
      timer += Time.deltaTime;
      float perc = timer/gazeInterval;
    
      gazeCursor.fillAmount = perc;
      if(perc >=1)
    	gazeCursor.enabled = false;
    }


    protected ARInteractable CheckInteractable(Vector3 pos)
    {
      RaycastHit hit;
      Ray ray = cam.ScreenPointToRay(pos);
      if (Physics.Raycast(ray, out hit)) 
    	return hit.transform.GetComponent<ARInteractable>();
      else
    	return null;
    }


    protected void CheckTap()
    {
      ARInteractable interactable = null;
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
    	if (Input.touchCount > 0 && Input.touchCount < 2)
    	{
    		if (Input.GetTouch(0).phase == TouchPhase.Began)
                    {
    			if(tapFeedbackAudioSource != null)
    				tapFeedbackAudioSource.Play();
    		
    			interactable = CheckInteractable(Input.GetTouch(0).position);
    		}
            }
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
    	if (Input.GetMouseButtonDown(0))
    	{
    		if(tapFeedbackAudioSource != null)
    				tapFeedbackAudioSource.Play();
    
    		interactable = CheckInteractable(Input.mousePosition);
    	}
      }
    
      if(interactable != null)
    	interactable.Interact();
    }


    protected void CheckGaze()
    {
      Vector2 centerScreenPos = new Vector2(Screen.width/2f, Screen.height/2f);
      ARInteractable interactable = CheckInteractable(centerScreenPos);
    
      if(interactable == null)
      {
    	CancelInvoke("FireInteractionOnGaze");
    	gazed = null;
    	timer = 0;
    	gazeCursor.enabled = false;
      }
    
      if(interactable != gazed)
      {
    	gazeCursor.enabled = true;
    	CancelInvoke("FireInteractionOnGaze");
    	timer = 0;
    	gazed = interactable;
    	Invoke("FireInteractionOnGaze", gazeInterval);
      }
    
      UpdateGazeCursor();
    }


}
