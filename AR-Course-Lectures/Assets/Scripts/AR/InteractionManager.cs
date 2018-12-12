/* File InteractionManager C# implementation of class InteractionManager */



// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using Vuforia;

// global declaration end

class InteractionManager : MonoBehaviour
{

    private static InteractionManager instance = null;

    protected ARInteractable gazed = null;

    public float gazeInterval = 3.0f;
    public bool useTap = true;
    public bool useGaze = false;


    protected void Awake()
    {
      Assert.IsNull(instance);
      instance = this;
    }


    protected void Update()
    {
    }


    protected void FireTapOnGazed()
    {
      // to be called for gaze only
      gazed.OnTap();
    }


    protected void UpdateGazeCursor(float perc)
    {
    }


}
