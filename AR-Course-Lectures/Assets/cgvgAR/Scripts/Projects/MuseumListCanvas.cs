/* File MuseumListCanvas C# implementation of class MuseumListCanvas */



// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using UnityEngine.UI;
using System.Collections.Generic;

// global declaration end

class MuseumListCanvas : MonoBehaviour
{
    public event Action MuseumSelected;

    [SerializeField]
    protected MuseumInventory museumInventory;
    [SerializeField]
    protected GameObject museumUIListElement;


    protected void Awake()
    {
      FillMuseumList();
    }


    protected void Start()
    {
      Canvas c = GetComponent<Canvas>();
      c.enabled = false;
    }


    protected void FillMuseumList()
    {
      Transform contentHolder = GetComponentInChildren<VerticalLayoutGroup>().transform;
      for(int i= 0; i < museumInventory.Museums.Count; i++)
      {
    	GameObject museumItem = Instantiate(museumUIListElement, contentHolder);
    	MuseumUIListItem listItem = museumItem.GetComponent<MuseumUIListItem>();
    	listItem.museumIcon.sprite = museumInventory.Museums[i].museumIcon;
    	listItem.museumName.text = museumInventory.Museums[i].museumName;
    	listItem.museumDistance.text = museumInventory.Museums[i].museumDistance;
    
    	Button directionsButton = museumItem.GetComponentInChildren<Button>();
    	directionsButton.onClick.AddListener(() => 
    		{
    			gameObject.SetActive(false);
    
    			if(MuseumSelected != null)
    				MuseumSelected.Invoke();
    		});	
      }
    }


}
