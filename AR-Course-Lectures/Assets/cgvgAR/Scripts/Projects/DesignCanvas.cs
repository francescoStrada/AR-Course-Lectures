/* File DesignCanvas C# implementation of class DesignCanvas */



// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using UnityEngine.UI;
using System.Collections.Generic;

// global declaration end

class DesignCanvas : MonoBehaviour
{

    protected PlaceHolder placeHolder;
    [SerializeField]
    protected PlaceableInventory inventory;
    [SerializeField]
    protected GameObject buttonPrefab;
    protected bool designModeActive = false;
    [SerializeField]
    protected List<PlaceHolder> placeHolders = new List<PlaceHolder>();
    protected GameObject plane = null;
    [SerializeField]
    protected int iconsPerRow = 3;


    protected void Awake()
    {
    /*
       placeHolder = plane.gameObject.GetComponent<PlaceHolder>();
       Assert.IsNotNull(placeHolder);
       placeHolder.SetInventory(inventory);
    */
      foreach(PlaceHolder holder in placeHolders)
      {
    	holder.SetInventory(inventory);
      }
    
    }


    protected void AddNewElement()
    {
      placeHolder.AddNewElement();
    }


    protected void HideCanvas(object sender = null,EventArgs args = null)
    {
      Debug.Log("Hiding canvas");
      this.gameObject.SetActive(false);
    }


    protected void ShowCanvas(object sender = null,EventArgs args = null)
    {
      if(!ApplicationManager.Instance.IsDesignMode)
    	return;
    
      ARMarker marker = null;
      if(sender != null)
      	marker = (ARMarker)sender;
    
      if(marker != null)
    	placeHolder = marker.GetComponentInChildren<PlaceHolder>();
    
      Debug.Log("Showing canvas");
      this.gameObject.SetActive(true);
     
    }


    protected void CreateIconList()
    {
      Assert.IsNotNull(inventory);
    
      GridLayoutGroup group = GetComponentInChildren<GridLayoutGroup>();
      Assert.IsNotNull(group);
    
      RectTransform groupRT = (RectTransform)group.transform;
      float iconSize = groupRT.rect.width / (float)iconsPerRow;
      float spacing = iconSize * 0.05f;
    
      Debug.Log("Total width: " + groupRT.rect.width + "   IconSize: " + iconSize + "   Spacing: " + spacing);
      group.spacing = new Vector2(spacing, spacing);
      
      iconSize = iconSize - spacing;
      Debug.Log("New icon size: " + iconSize);
    
      group.cellSize = new Vector2(iconSize, iconSize);
    
      for(int i=0; i < inventory.Items.Count; i++)
      {
    	GameObject newButton = Instantiate(buttonPrefab, group.transform);
    	Button button = newButton.GetComponent<Button>();
    	GameObject prefab = inventory.Items[i].prefab;
    
    	button.onClick.AddListener( () => AddNewElement(prefab));
    	//button.onClick.AddListener( () => ClickedButton() );
    	Image image = newButton.GetComponent<Image>();
    
    	image.sprite = inventory.Items[i].icon;
      }
    }


    protected void AddNewElement(GameObject go)
    {
      placeHolder.AddNewElement(Instantiate(go));
    }


    protected void ClickedButton()
    {
      Debug.Log("PUSHED!!");
    }


    protected void SaveDesign()
    {
      PlaceHolder.SaveDesign();
    }


    protected void Start()
    {
      foreach(PlaceHolder holder in placeHolders)
      {
    	ARMarker marker = holder.Marker;
    
       	marker.TrackingLost += HideCanvas;
       	marker.TrackingFound += ShowCanvas;
      }
    /*
      ARMarker marker = placeHolder.Marker;
      marker.TrackingLost += HideCanvas;
      marker.TrackingFound += ShowCanvas;
    */
      ApplicationManager.Instance.StartedDesignMode += ((sender, args) => designModeActive = true );
      ApplicationManager.Instance.StoppedDesignMode += ((sender, args) => 
    							{
    								designModeActive = false;
    								HideCanvas();
    							});
    
    
    /*
       InputField[] fields = transform.GetComponentsInChildren<InputField>();
    
    
       for(int i=0; i < fields.Length; i++)
       {
    	if(fields[i].name == "Width_InputField")
    	{
    		fields[i].text = plane.transform.localScale.x.ToString();
    		fields[i].onValueChanged.AddListener((x) => {
    			plane.transform.localScale = new Vector3(float.Parse(x), plane.transform.localScale.y, plane.transform.localScale.z);
    		}); 
    	}
    	if(fields[i].name == "Height_InputField")
    	{
    		fields[i].text = plane.transform.localScale.z.ToString();
    		fields[i].onValueChanged.AddListener((x) => plane.transform.localScale = new Vector3(plane.transform.localScale.x, plane.transform.localScale.y, float.Parse(x))); 
    	}
       }
    */
       Button[] buttons = transform.GetComponentsInChildren<Button>();
    
       for(int i=0; i < buttons.Length; i++)
       {
    	if(buttons[i].name == "Save_Button")
    		buttons[i].onClick.AddListener(() => SaveDesign()); 
    	if(buttons[i].name == "Clear_Button")
    		buttons[i].onClick.AddListener(() => ClearDesign()); 
       }
    
       CreateIconList();
    
      foreach(PlaceHolder holder in placeHolders)
      {
    	ARMarker marker = holder.Marker;
       	if(marker.IsTracked())
    		ShowCanvas(marker);
       	else
    		HideCanvas();
      }
    
    }


    protected void ClearDesign()
    {
      PlaceHolder.ClearDesign();
    }


}
