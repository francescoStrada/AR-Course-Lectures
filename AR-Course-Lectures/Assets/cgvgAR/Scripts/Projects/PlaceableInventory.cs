/* File PlaceableInventory C# implementation of class PlaceableInventory */



// global declaration start


using UnityEngine;
using System;
using System.Collections.Generic;

[System.Serializable]
public class InventoryItem
{
  public string displayname;
  public Sprite icon;
  public GameObject prefab;
}


// global declaration end

[CreateAssetMenu(fileName = "Inventory", menuName = "cgvgAR/Inventory", order = 1)]
class PlaceableInventory : ScriptableObject
{

    [SerializeField]
    protected List<InventoryItem> items = new List<InventoryItem>();


    public List<InventoryItem> Items
    {
      get {
    	return items;
      }
    }


    public InventoryItem GetItemByName(string name)
    {
      for(int i=0; i < items.Count; i++)
      {
    	if(name == items[i].prefab.name)
    		return items[i];
      }
    
      return null;
    }


}
