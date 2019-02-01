/* File ApplicationManager C# implementation of class ApplicationManager */



// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using UnityEngine.UI;
using Vuforia;

// global declaration end

class ApplicationManager : MonoBehaviour
{
// class declaration start
public enum Mode {
	None,
	Design,
	Runtime
};
// class declaration end

    public event EventHandler<EventArgs> StartedDesignMode;
    public event EventHandler<EventArgs> StoppedDesignMode;

    protected static ApplicationManager instance;
    protected Mode mode = Mode.None;
    protected Text modeText;


    protected void Start()
    {
      Button[] buttons = transform.GetComponentsInChildren<Button>();
    
       for(int i=0; i < buttons.Length; i++)
       {
    	if(buttons[i].name == "DesignMode_Button")
    	{
    		buttons[i].onClick.AddListener(ToggleDesignMode); 
    		modeText = buttons[i].GetComponentInChildren<Text>();	
    	}
    	else if(buttons[i].name == "ScreenCapture_Button")
    	{
    		buttons[i].onClick.AddListener(() => ScreenCapture.Instance.TakeCapture()); 
    	}
    		
    	
       }
      
      PlaceHolder.ReadDesign();
      SetMode(Mode.Design);
    
      var vuforia = VuforiaARController.Instance;
      vuforia.RegisterVuforiaStartedCallback(OnVuforiaStarted);    
      vuforia.RegisterOnPauseCallback(OnPaused);
    }


    protected static void SetDesignMode(bool value)
    {
      PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();
    
      for(int i=0; i < holders.Length; i++)
      {
    	holders[i].enabled = value;
    
    	ARInteractable[] interactables = holders[i].transform.parent.GetComponentsInChildren<ARInteractable>();
    	foreach(var obj in interactables)
    	{
    		if(obj != holders[i])
    			obj.enabled = !value;
    	}
    
    	PlaceableObject[] placeables = holders[i].transform.parent.GetComponentsInChildren<PlaceableObject>();
    	foreach(var obj in placeables)
    	{
    		if(obj != holders[i])
    			obj.enabled = value;
    	}
      }
    
      if(instance.modeText != null)
    	instance.modeText.text = value ? "Stop Design" : "Start Design";
    
      if( value && instance.StartedDesignMode != null)
    	instance.StartedDesignMode(instance, EventArgs.Empty);
    
      if(!value && instance.StoppedDesignMode != null)
    	instance.StoppedDesignMode(instance,EventArgs.Empty);
    }


    protected void ToggleDesignMode()
    {
      if(mode == Mode.Design)
    	SetMode(Mode.Runtime);
      else if(mode == Mode.Runtime)
    	SetMode(Mode.Design);
    }


    protected void OnVuforiaStarted()
    {
      CameraDevice.Instance.SetFocusMode(CameraDevice.FocusMode.FOCUS_MODE_CONTINUOUSAUTO);
    }


    protected void OnPaused(bool paused)
    {
      if (!paused) // resumed
      {
    	// Set again autofocus mode when app is resumed
          	CameraDevice.Instance.SetFocusMode(CameraDevice.FocusMode.FOCUS_MODE_CONTINUOUSAUTO);    
      }
    }


    protected void Awake()
    {
      instance = this;
    
    /*
      Button[] buttons = transform.GetComponentsInChildren<Button>();
    
       for(int i=0; i < buttons.Length; i++)
       {
    	if(buttons[i].name == "DesignMode_Button")
    	{
    		buttons[i].onClick.AddListener(ToggleDesignMode); 
    		modeText = buttons[i].GetComponentInChildren<Text>();	
    	}
    	else if(buttons[i].name == "ScreenCapture_Button")
    	{
    		buttons[i].onClick.AddListener(() => ScreenCapture.Instance.TakeCapture()); 
    	}
    		
    	
       }
    */
    }




    public static void SetMode(Mode mode)
    {
      SetDesignMode(mode == Mode.Design);
      instance.mode = mode;
    }


    public static ApplicationManager Instance
    {
      get{return instance;}
    }


    public bool IsDesignMode
    {
      get{return mode == Mode.Design;}
    }


}
