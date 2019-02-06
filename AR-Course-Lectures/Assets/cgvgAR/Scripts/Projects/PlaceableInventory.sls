:ArrayOb.273{6:Dictionary.4369{16 6:SLSThisIcon.286331409{:String.17{8 9 "66521360"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{37 38 "PlaceableInventory : ScriptableObject"}
 16.2343 2.2 23.68 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{18 19 "PlaceableInventory"}
#4{16 17 "ScriptableObject"}
#4{0 13 ""}
:OrderedCltn.4369{16 0}
#5{16 1#4{83 84 "[CreateAssetMenu(fileName = \"Inventory\", menuName = \"cgvgAR/Inventory\", order = 1)]"}
}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:JLSGlobalDeclare.286331408{#4{8 9 "46573824"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{200 201 "using UnityEngine;\n
using System;\n
using System.Collections.Generic;\n
\n
[System.Serializable]\n
public class InventoryItem\n
\[\n
  public string displayname;\n
  public Sprite icon;\n
  public GameObject prefab;\n
\]\n
"}
}
:SLSPublicMethod.286331408{#4{8 9 "66882856"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "GetItemByName"}
 0.3 0.88 5.2 1  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{118 119 "\[\n
  for(int i=0; i < items.Count; i++)\n
  \[\n
\tif(name == items[i].prefab.name)\n
\t\treturn items[i];\n
  \]\n
\n
  return null;\n
\]\n
"}
#4{13 14 "GetItemByName"}
#4{13 14 "InventoryItem"}
#4{11 12 "string name"}
#4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "46627696"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{5 6 "items"}
 3 1.88 2 10  39 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{5 6 "items"}
#4{19 20 "List<InventoryItem>"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{25 26 "new List<InventoryItem>()"}
#4{16 17 "[SerializeField]"}
}
:SLSProperty.286331392{#4{8 9 "46522528"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Items"}
 1.3 0.88 2 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{30 31 "\[\n
  get \[\n
\treturn items;\n
  \]\n
\]"}
#4{5 6 "Items"}
#4{19 21 "List<InventoryItem>"}
#4{0 1 ""}
#4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "46578944"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @3 @18 @65 @0 #5{16 0}
#5{16 1@38 }
#5{16 0}
#5{16 0}
#5{16 0}
#5{16 0}
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@53 @26 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#5{16 0}
 0}
:Float.17{0 }
#12{1 }
#12{0 }
#12{1 }
}
