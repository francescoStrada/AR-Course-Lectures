/* File MuseumInventory C# implementation of class MuseumInventory */



// global declaration start


using UnityEngine;
using System;
using System.Collections.Generic;

[System.Serializable]
public class MuseumInventoryItem
{
  public string museumName;
  public string museumDistance;
  public Sprite museumIcon;
}

// global declaration end

[CreateAssetMenu(fileName = "MuseumInventory", menuName = "cgvgAR/MuseumInventory", order = 1)]
class MuseumInventory : ScriptableObject
{

    [SerializeField]
    protected List<MuseumInventoryItem> museums = new List<MuseumInventoryItem>();


    public List<MuseumInventoryItem> Museums
    {
      get {
    	return museums;
      }
    }


}
