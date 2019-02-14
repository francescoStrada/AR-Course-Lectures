/* File AppStateManager C# implementation of class AppStateManager */



// global declaration start


using UnityEngine;
using System;
using System.Collections.Generic;
using UnityEngine.UI;
using Vuforia;
//using Mapbox.Unity.Map;




// global declaration end

class AppStateManager : MonoBehaviour
{
// class declaration start
public enum AppState {
	None,
	MarkerDetection,
	MuseumSelection,
	Navigation,
	DestinationReached
}

protected static AppStateManager instance = null;
// class declaration end


    protected VuforiaBehaviour vuforia;
    protected Transform mapManager;
    protected Camera mapCamera;
    protected Camera arCamera;
    protected AppState state =  AppState.None;
    protected Transform museumDestinationCanvas = null;
    protected ARInteractiveAnimation[] interactiveAnimations = null;


    protected void Awake()
    {
       instance = this;
    
       vuforia = FindObjectOfType<VuforiaBehaviour>();
       arCamera = vuforia.GetComponentInChildren<Camera>();
    
       //mapManager = FindObjectOfType<AbstractMap>().transform.parent;
       //mapCamera = mapManager.GetComponentInChildren<Camera>();
    
       museumDestinationCanvas = FindObjectOfType<MuseumListCanvas>().transform;
       //museumDestinationCanvas.gameObject.SetActive(false);
    
      interactiveAnimations = FindObjectsOfType<ARInteractiveAnimation>();
      for(int i=0; i < interactiveAnimations.Length; i++)
      {
    	interactiveAnimations[i].AnimationStopped += OnCharacterAnimationStopped;
      }
    }


    protected void SetState(AppState newState)
    {
      switch(newState)
      {
    	case AppState.MarkerDetection:
    	break;
    
    	case AppState.MuseumSelection:
    	museumDestinationCanvas.gameObject.GetComponent<Canvas>().enabled = true;
    	break;
    
    	case AppState.Navigation:
    	break;
    
    	case AppState.DestinationReached:
    	break;
    
    	case AppState.None:
    	default:
    	break; 
      }
    }


    protected void OnCharacterAnimationStopped()
    {
      for(int i=0; i <interactiveAnimations.Length; i++)
      {
    	interactiveAnimations[i].AnimationStopped -= OnCharacterAnimationStopped;
      }
    
      SetState(AppState.MuseumSelection);
    
    }




    public static AppState State
    {
          set {
        	instance.SetState(value);
          } 
        
          get {
        	return instance.state;
          }
        }


}
