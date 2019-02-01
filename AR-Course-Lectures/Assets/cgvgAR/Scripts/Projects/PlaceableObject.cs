/* File PlaceableObject C# implementation of class PlaceableObject */




// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using UnityEngine.UI;
using Vuforia;

// global declaration end

class PlaceableObject : ARInteractable
{
// class declaration start
const float SCALE_FACTOR = 0.1f;
// class declaration end


    protected Camera cam = null;
    protected PlaceHolder holder;
    [SerializeField]
    protected bool constrainRotation = false;
    [SerializeField]
    protected bool constrainScale = false;


    protected Vector3 CheckIntersection(Vector3 pos)
    {
      Ray ray = cam.ScreenPointToRay(pos);
      
    
      RaycastHit[] hits = Physics.RaycastAll(ray);
    
    
      for(int i=0; i < hits.Length; i++)
      {
    	PlaceHolder ph = hits[i].collider.GetComponent<PlaceHolder>();
    	if(ph != null)
    	{
    		return hits[i].point;
    	}
      }
    
      return Vector3.zero;
    }


    protected void Awake()
    {
       base.Awake();
    
       cam = FindObjectOfType<VuforiaBehaviour>().GetComponent<Camera>();
    
    /*
       Collider collider = GetComponent<Collider>();
       if(collider == null)
       {
    	Collider[] colliders = GetComponentsInChildren<Collider>();
    	foreach(var coll in colliders)
    	{
    		AddComponent(coll)
    	}
       }
    */
       
    
    /*
       InputField[] fields = transform.parent.GetComponentsInChildren<InputField>();
    
    
       for(int i=0; i < fields.Length; i++)
       {
    	if(fields[i].name == "Width_InputField")
    	{
    		fields[i].text = transform.localScale.x.ToString();
    		fields[i].onValueChanged.AddListener((x) => transform.localScale += new Vector3(float.Parse(x), transform.localScale.y, transform.localScale.z)); 
    	}
    	if(fields[i].name == "Height_InputField")
    	{
    		fields[i].text = transform.localScale.z.ToString();
    		fields[i].onValueChanged.AddListener((x) => transform.localScale += new Vector3(transform.localScale.x, transform.localScale.y, float.Parse(x))); 
    	}
       }
    */
    
    /*
       for(int i=0; i < buttons.Length; i++)
       {
    	if(buttons[i].name == "Width_minus")
    		buttons[i].onClick.AddListener(() => transform.localScale += new Vector3(-DELTA, 0f, 0f)); 
    	if(buttons[i].name == "Width_plus")
    		buttons[i].onClick.AddListener(() => transform.localScale += new Vector3(DELTA, 0f, 0f)); 
    	if(buttons[i].name == "Height_minus")
    		buttons[i].onClick.AddListener(() => transform.localScale += new Vector3(0f, 0f, -DELTA)); 
    	if(buttons[i].name == "Height_plus")
    		buttons[i].onClick.AddListener(() => transform.localScale += new Vector3(0f, 0f, DELTA)); 
       }
    */
    }


    protected void Start()
    {
      holder = Marker.gameObject.GetComponentInChildren<PlaceHolder>();
      Assert.IsNotNull(holder);
    }




    public void StoreOn()
    {
    }


    public override void Drag(Vector3 position,Vector3 delta)
    {
      //Debug.Log("pos: " + position + " delta: " + delta);
    
      Vector3 start = CheckIntersection(position - delta);
      Vector3 end = CheckIntersection(position);
    
      //Debug.Log(name + " start: " + start + " end: " + end);
    
      if(end != Vector3.zero && start != Vector3.zero)
      	transform.Translate(end - start, Space.World);
    }


    public override void Resize(float delta)
    {
      //Debug.Log("Delta = " + delta);
      if(constrainScale)
    	return;
    
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
      	transform.localScale *= 1f + delta;
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
      	transform.localScale *= 1f + SCALE_FACTOR * delta;
      }
    }


    public override void Rotate(float delta)
    {
      //Debug.Log("Delta = " + delta);
      if(constrainRotation)
    	return;
     
      transform.Rotate(Vector3.up * delta);
    
    /*
      transform.localScale *= 1f + SCALE_FACTOR * delta;
    
    
      Vector3 rotationDeg = Vector3.zero;
      rotationDeg.z = - delta;
      desiredRotation *= Quaternion.Euler(rotationDeg);
    */
    }


    public void Remove()
    {
      Destroy(gameObject);
    }


}
