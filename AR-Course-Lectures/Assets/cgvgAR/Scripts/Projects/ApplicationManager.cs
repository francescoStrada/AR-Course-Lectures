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


    protected static ApplicationManager instance;
    protected Mode mode = Mode.None;


    protected void Start()
    {
      PlaceHolder.ReadDesign();
      SetMode(Mode.Design);
    }


    protected void Awake()
    {
      instance = this;
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
    }




    public static void SetMode(Mode mode)
    {
      SetDesignMode(mode == Mode.Design);
      instance.mode = mode;
    }


}
