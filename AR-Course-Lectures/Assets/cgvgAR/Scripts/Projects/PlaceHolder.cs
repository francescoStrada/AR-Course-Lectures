/* File PlaceHolder C# implementation of class PlaceHolder */




// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using UnityEngine.UI;
using System.IO;

// global declaration end

class PlaceHolder : ARInteractable
{
// class declaration start
public enum Orientation {
	None,
	Horizontal,
	Vertical
};

protected const float DELTA_LIFT = 0.001f;
static string DESIGN_FILENAME = "DesignData.dat";
// class declaration end


    protected Camera cam = null;
    protected MeshRenderer renderer;
    protected PlaceableInventory inventory;

    public float DELTA = 0.01f;
    public Orientation orientation;
    public float height;
    public float width;


    protected void Awake()
    {
       base.Awake();
    
       cam = FindObjectOfType<Camera>();
       renderer = GetComponent<MeshRenderer>();
    
       Collider collider = GetComponent<Collider>();
       Debug.Log("Plane size : " + collider.bounds.size);
    
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


    protected Vector3 CheckIntersection(Vector3 pos)
    {
      RaycastHit hit;
    
      Ray ray = cam.ScreenPointToRay(pos);
      Debug.Log("pos " + pos + " cam " + cam.transform.position + " Found ray " + ray.origin + " " + ray.direction);
      if (Physics.Raycast(ray, out hit)) 
    	return hit.point;
      else
    	return Vector3.zero;
    }


    protected override void OnTrackingFound(object sender,EventArgs args)
    {
      base.OnTrackingFound(sender, args);
      renderer.enabled = false;
    }


    protected void StoreOn(BinaryWriter writer)
    {
        PlaceableObject[] objects = transform.parent.GetComponentsInChildren<PlaceableObject>();
    
        writer.Write(objects.Length);
    
        for(int i=0; i < objects.Length; i++)
        {
        	GameObject go = objects[i].gameObject;
    
        	writer.Write(go.name);
    
        	writer.Write(go.transform.localPosition.x);
        	writer.Write(go.transform.localPosition.y);
        	writer.Write(go.transform.localPosition.z);
    
        	writer.Write(go.transform.localRotation.x);
        	writer.Write(go.transform.localRotation.y);
        	writer.Write(go.transform.localRotation.z);
        	writer.Write(go.transform.localRotation.w);
    
        	writer.Write(go.transform.localScale.x);
        	writer.Write(go.transform.localScale.y);
        	writer.Write(go.transform.localScale.z);
        }
    
    }


    protected bool ReadFrom(BinaryReader reader)
    {
    
        int objectNr = reader.ReadInt32();
    
        for(int i=0; i < objectNr; i++)
        {
    	// reading object name
    	string objName = reader.ReadString();
    
    	// finding corresponding inventory item
    	InventoryItem item = inventory.GetItemByName(objName);
    
    	if(item == null)
    	{
    		Debug.LogError("Item " + objName + " not found in inventory");
    		return false;
    	}
    
        	GameObject go = Instantiate(item.prefab);
    	go.name = objName;
      	go.transform.parent = transform.parent;
    	
        	go.transform.localPosition = new Vector3(reader.ReadSingle(),
                                    reader.ReadSingle(),
                                    reader.ReadSingle());
    
        	go.transform.localRotation = new Quaternion(reader.ReadSingle(),
                                    reader.ReadSingle(),
                                    reader.ReadSingle(),
                                    reader.ReadSingle());
    	
        	go.transform.localScale = new Vector3(reader.ReadSingle(),
                                    reader.ReadSingle(),
                                    reader.ReadSingle());
    
      	go.AddComponent<PlaceableObject>();
        }
    
    
        return true;
    }


    protected void CleanContents()
    {
        PlaceableObject[] objects = transform.parent.GetComponentsInChildren<PlaceableObject>();
    
        for(int i=objects.Length - 1; i >= 0; i--)
        {
        	Destroy(objects[i].gameObject);
        }
    
    }




    public void SetInventory(PlaceableInventory inventory)
    {
      this.inventory = inventory;
    }


    public override void Drag(Vector3 position,Vector3 delta)
    {
      return;
    
      Debug.Log("pos: " + position + " delta: " + delta);
    
      Vector3 start = CheckIntersection(position - delta);
      Vector3 end = CheckIntersection(position);
    
      Debug.Log(name + " start: " + start + " end: " + end);
    
    
      //if(end != Vector3.zero && start != Vector3.zero)
      //	transform.Translate(end - start, Space.World);
    }


    public virtual void AddNewElement()
    {
      Debug.Log("Ping...");
    
      GameObject plane = GameObject.CreatePrimitive(PrimitiveType.Cube);
      plane.name = "Children nr.";
    
      plane.transform.position = transform.position + DELTA_LIFT * transform.up;
      plane.transform.rotation = transform.rotation;
      plane.transform.parent = transform.parent;
      //plane.transform.localScale = new Vector3(0.1f,0.1f,0.1f);
    
      plane.AddComponent<PlaceableObject>();
    
      plane.GetComponent<Renderer>().material.color = Color.red;
    }


    public virtual void AddNewElement(GameObject prefab)
    {
      //prefab.name = "Children nr.";
    
      string cleanName = prefab.name;
      int position = cleanName.IndexOf("(Clone)");
      string objectName = cleanName.Remove(position, cleanName.Length - position);
      prefab.name = objectName;
    
    
      prefab.transform.position = transform.position + DELTA_LIFT * transform.up;
      prefab.transform.rotation = transform.rotation;
      prefab.transform.parent = transform.parent;
      //prefab.transform.localScale = new Vector3(0.1f,0.1f,0.1f);
    
      PlaceableObject placeable = prefab.AddComponent<PlaceableObject>();
    
      ARInteractable[] interactables = prefab.transform.GetComponentsInChildren<ARInteractable>();
      for(int i = 0; i < interactables.Length; i++)
      {
    	interactables[i].Initialize();
    
    	if(placeable != interactables[i])
    		interactables[i].enabled = false;
      }
    	
    }


    public static void SaveDesign()
    {
      string fileName = DESIGN_FILENAME;
      BinaryWriter bw;
    
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
    	fileName = Path.Combine(Application.persistentDataPath, fileName);
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
    	fileName = Path.Combine(Application.dataPath, fileName);
      }
    
      Debug.Log("Saving design on " + fileName);
    
       //create the file
       try {
                bw = new BinaryWriter(new FileStream(fileName, FileMode.Create));
       } 
       catch (IOException e) 
       {
       	Debug.LogError(e.Message + "\n Cannot create file.");
            return;
       }
    
       PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();
    
       bw.Write(holders.Length);
    
       for(int i = 0; i < holders.Length; i++)
       {
    	string ID = holders[i].name;
    	bw.Write(ID);
    	holders[i].StoreOn(bw);
       }
    
       bw.Close();
    }


    public static bool ReadDesign()
    {
       //reading from the file
    
      string fileName = DESIGN_FILENAME;
      BinaryReader strm;
    
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
    	fileName = Path.Combine(Application.persistentDataPath, fileName);
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
    	fileName = Path.Combine(Application.dataPath, fileName);
      }
    
    
      Debug.Log("Reading design from " + fileName);
      try {
      	strm = new BinaryReader(new FileStream(fileName, FileMode.Open));  
      } 
      catch (IOException e) 
      {
      	Debug.LogError(e.Message + "\n Cannot open file.");
           	return false;
      }
    
    
      int objNr = strm.ReadInt32();
      PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();
    
      for(int i=0; i < objNr; i++)
      {
    	string instanceID = strm.ReadString();
    
    	PlaceHolder holder = null;
    	for(int j=0; j < holders.Length; j++)
    	{
    		if(holders[j].name == instanceID)
    		{
    			holder = holders[j];
    			break;
    		}
    	}
    
    	if(holder == null)
    	{
    		Debug.LogError("Error: missing holder ID " + instanceID);
    		return false;
    	}
    
    	holder.ReadFrom(strm);
      }
    
    
        return true;
    }


    public static bool ClearDesign()
    {
       //reading from the file
    
      string fileName = DESIGN_FILENAME;
    
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
    	fileName = Path.Combine(Application.persistentDataPath, fileName);
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
    	fileName = Path.Combine(Application.dataPath, fileName);
      }
    
    
      Debug.Log("Deleting design file " + fileName);
      try {
      	File.Delete(fileName);  
      } 
      catch (Exception e) 
      {
      	Debug.Log(e.Message + "\n Cannot open file.");
      }
    
    
      PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();
    
      for(int i=0; i < holders.Length; i++)
      {
    	holders[i].CleanContents();
      }
    
    
        return true;
    }


}
