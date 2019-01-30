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
// class declaration start
const float pinchTurnRatio = Mathf.PI / 2;
const float minTurnAngle = 0;
 
const float pinchRatio = 1;
const float minPinchDistance = 0;
 
const float panRatio = 1;
const float minPanDistance = 0;
// class declaration end


    private static InteractionManager instance = null;

    protected ARInteractable gazed = null;
    protected Camera cam = null;
    protected float timer = 0f;
    protected AudioSource tapFeedbackAudioSource = null;
    protected Vector3 lastTapPosition;
    protected bool isDragging = false;
    protected ARInteractable interactable = null;

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
      lastTapPosition = pos;
    
      Ray ray = cam.ScreenPointToRay(pos);
      if (Physics.Raycast(ray, out hit)) 
      {
    	Transform t = hit.transform;
    	while(t != null)
    	{
    		ARInteractable found = t.GetComponent<ARInteractable>();
    		if(found != null && found.enabled)
    			return found;
    
    		t = t.parent;
    	}
    
    	return null;
      }
      else
    	return null;
    }


    protected void CheckTap()
    {
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
    	if (Input.touchCount > 0 && Input.touchCount < 2)
    	{
    		if (Input.GetTouch(0).phase == TouchPhase.Began)
                    {
    			if(tapFeedbackAudioSource != null)
    				tapFeedbackAudioSource.Play();
    		
    			interactable = CheckInteractable(Input.GetTouch(0).position);
    			isDragging = false;
    
    		}
    		else if (Input.GetTouch(0).phase == TouchPhase.Ended)
    		{
      			if(interactable != null)
    				interactable.Interact();
    
    			interactable = null;
    		}
    		else if (interactable != null && (Input.GetTouch(0).phase == TouchPhase.Stationary || Input.GetTouch(0).phase == TouchPhase.Moved))
    		{	
    			isDragging = true;
    			interactable.Drag(Input.GetTouch(0).position, Input.GetTouch(0).deltaPosition);
    		}
            }
            else if(Input.touchCount == 2)
    		CheckMultitouch();
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
    /*
    	if(Input.GetMouseButton(0))
    		Debug.Log("button down");
    	else
    		Debug.Log("button up");
    */
    
    	// RESIZING WITH SCROLL WHEEL
    	if(Input.mouseScrollDelta.y != 0f)
    	{
    		interactable = CheckInteractable(Input.mousePosition);
    
    		if(interactable != null)
    		{
    			//interactable.Resize(Input.mouseScrollDelta.y);
    			interactable.Rotate(Input.mouseScrollDelta.y);
    			interactable = null;
    		}
    
    		return;
    	}
    
    
    	if (Input.GetMouseButtonDown(0))
    	{
    		if(tapFeedbackAudioSource != null)
    				tapFeedbackAudioSource.Play();
    
    
    		interactable = CheckInteractable(Input.mousePosition);
    		isDragging = false;
    
    		//Debug.Log("GetMouseButtonDown on " + interactable);
    	}
    	else if (Input.GetMouseButtonUp(0))
    	{
    		//Debug.Log("GetMouseButtonUp");
    		if(interactable != null && !isDragging)
    			interactable.Interact();
    			
    		interactable = null;
    	}
    	else if(interactable != null && Input.GetMouseButton(0))
    	{
    		Vector3 delta = Input.mousePosition - lastTapPosition;
    
    		//Debug.Log("Mouse drag " + delta);
    		// no movement
    		if(delta == Vector3.zero)
    			return;
    
    
    		lastTapPosition = Input.mousePosition;
    		interactable.Drag(Input.mousePosition, delta);
    		isDragging = true;
    	}
      }
    
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


    protected void CheckMultitouch()
    {
      Touch touch1 = Input.touches[0];
      Touch touch2 = Input.touches[1];
     
      // ... if at least one of them moved ...
      if (touch1.phase == TouchPhase.Moved || touch2.phase == TouchPhase.Moved) 
      {
    	if(interactable == null)
    	{
    		ARInteractable obj1 = CheckInteractable(touch1.position);
    		ARInteractable obj2 = CheckInteractable(touch2.position);
    		
    		if(obj1 == null && obj2 == null)
    			return;
    
    		if(obj1 == null || obj1 == obj2)
    			interactable = obj2;
    		if(obj2 == null)
    			interactable = obj1;
    		if(interactable == null)
    			return;
    	}
      	// ... check the delta distance between them ...
      	float pinchDistance = Vector2.Distance(touch1.position, touch2.position);
      	float prevDistance = Vector2.Distance(touch1.position - touch1.deltaPosition,
      	                                      touch2.position - touch2.deltaPosition);
      	
      	float pinchDistanceDelta = pinchDistance - prevDistance;
     
      	// ... if it's greater than a minimum threshold, it's a pinch!
      	if (Mathf.Abs(pinchDistanceDelta) > minPinchDistance) 
     	{
      		pinchDistanceDelta *= pinchRatio;
    		interactable.Resize(pinchDistanceDelta/pinchDistance);
      	} 
    	
     
      	// ... or check the delta angle between them ...
      	float turnAngle = Angle(touch1.position, touch2.position);
      	float prevTurn = Angle(touch1.position - touch1.deltaPosition,
      	                       touch2.position - touch2.deltaPosition);
      	float turnAngleDelta = Mathf.DeltaAngle(prevTurn, turnAngle);
     
      	// ... if it's greater than a minimum threshold, it's a turn!
      	if (Mathf.Abs(turnAngleDelta) > minTurnAngle) 
    	{
      		turnAngleDelta *= pinchTurnRatio;
    		interactable.Rotate(-turnAngleDelta);
      	} 
      }
    	
    }


    protected float Angle(Vector2 pos1, Vector2 pos2)
    {
      Vector2 from = pos2 - pos1;
      Vector2 to = new Vector2(1, 0);
     
      float result = Vector2.Angle( from, to );
      Vector3 cross = Vector3.Cross( from, to );
     
      if (cross.z > 0) {
      	result = 360f - result;
      }
     
      return result;
    }


}
