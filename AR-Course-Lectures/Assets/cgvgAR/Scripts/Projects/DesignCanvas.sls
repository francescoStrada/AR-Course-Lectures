:ArrayOb.273{6:Dictionary.4369{32 20:SLSProtectMember.286331409{:String.17{8 9 "46524432"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{11 12 "placeHolder"}
 1.8 1.88 4.4 10  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{11 12 "placeHolder"}
#4{11 12 "PlaceHolder"}
#4{0 1 ""}
:OrderedCltn.4369{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#3{#4{8 9 "14493832"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{12 13 "placeHolders"}
 1.6 1.88 4.8 10  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{12 13 "placeHolders"}
#4{17 18 "List<PlaceHolder>"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{23 24 "new List<PlaceHolder>()"}
#4{16 17 "[SerializeField]"}
}
:SLSProtectMethod.286331408{#4{8 9 "46607664"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{235 1409 "\[\n
/*\n
   placeHolder = plane.gameObject.GetComponent<PlaceHolder>();\n
   Assert.IsNotNull(placeHolder);\n
   placeHolder.SetInventory(inventory);\n
*/\n
  foreach(PlaceHolder holder in placeHolders)\n
  \[\n
\tholder.SetInventory(inventory);\n
  \]\n
\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "90855033"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{10 11 "ShowCanvas"}
 1.3 0.88 4 21  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{291 292 "\[\n
  if(!ApplicationManager.Instance.IsDesignMode)\n
\treturn;\n
\n
  ARMarker marker = null;\n
  if(sender != null)\n
  \tmarker = (ARMarker)sender;\n
\n
  if(marker != null)\n
\tplaceHolder = marker.GetComponentInChildren<PlaceHolder>();\n
\n
  Debug.Log(\"Showing canvas\");\n
  this.gameObject.SetActive(true);\n
 \n
\]\n
"}
#4{10 16 "ShowCanvas"}
#4{4 14 "void"}
#4{42 43 "object sender = null,EventArgs args = null"}
#4{0 1 ""}
 0}
#6{#4{8 9 "90855032"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{10 11 "HideCanvas"}
 1.3 0.88 4 21  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{70 241 "\[\n
  Debug.Log(\"Hiding canvas\");\n
  this.gameObject.SetActive(false);\n
\]\n
"}
#4{10 16 "HideCanvas"}
#4{4 14 "void"}
#4{42 43 "object sender = null,EventArgs args = null"}
#4{0 1 ""}
 0}
#6{#4{8 9 "46607665"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{1723 1724 "\[\n
  foreach(PlaceHolder holder in placeHolders)\n
  \[\n
\tARMarker marker = holder.Marker;\n
\n
   \tmarker.TrackingLost += HideCanvas;\n
   \tmarker.TrackingFound += ShowCanvas;\n
  \]\n
/*\n
  ARMarker marker = placeHolder.Marker;\n
  marker.TrackingLost += HideCanvas;\n
  marker.TrackingFound += ShowCanvas;\n
*/\n
  ApplicationManager.Instance.StartedDesignMode += ((sender, args) => designModeActive = true );\n
  ApplicationManager.Instance.StoppedDesignMode += ((sender, args) => \n
\t\t\t\t\t\t\t\[\n
\t\t\t\t\t\t\t\tdesignModeActive = false;\n
\t\t\t\t\t\t\t\tHideCanvas();\n
\t\t\t\t\t\t\t\]);\n
\n
\n
/*\n
   InputField[] fields = transform.GetComponentsInChildren<InputField>();\n
\n
\n
   for(int i=0; i < fields.Length; i++)\n
   \[\n
\tif(fields[i].name == \"Width_InputField\")\n
\t\[\n
\t\tfields[i].text = plane.transform.localScale.x.ToString();\n
\t\tfields[i].onValueChanged.AddListener((x) => \[\n
\t\t\tplane.transform.localScale = new Vector3(float.Parse(x), plane.transform.localScale.y, plane.transform.localScale.z);\n
\t\t\]); \n
\t\]\n
\tif(fields[i].name == \"Height_InputField\")\n
\t\[\n
\t\tfields[i].text = plane.transform.localScale.z.ToString();\n
\t\tfields[i].onValueChanged.AddListener((x) => plane.transform.localScale = new Vector3(plane.transform.localScale.x, plane.transform.localScale.y, float.Parse(x))); \n
\t\]\n
   \]\n
*/\n
   Button[] buttons = transform.GetComponentsInChildren<Button>();\n
\n
   for(int i=0; i < buttons.Length; i++)\n
   \[\n
\tif(buttons[i].name == \"Save_Button\")\n
\t\tbuttons[i].onClick.AddListener(() => SaveDesign()); \n
\tif(buttons[i].name == \"Clear_Button\")\n
\t\tbuttons[i].onClick.AddListener(() => ClearDesign()); \n
   \]\n
\n
   CreateIconList();\n
\n
  foreach(PlaceHolder holder in placeHolders)\n
  \[\n
\tARMarker marker = holder.Marker;\n
   \tif(marker.IsTracked())\n
\t\tShowCanvas(marker);\n
   \telse\n
\t\tHideCanvas();\n
  \]\n
\n
\]\n
"}
#4{5 6 "Start"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "66701616"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "AddNewElement"}
 1.3 0.88 5.2 11  13 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{35 36 "\[\n
  placeHolder.AddNewElement();\n
\]\n
"}
#4{13 14 "AddNewElement"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "66701617"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "AddNewElement"}
 1.3 0.88 5.2 11  15 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{50 51 "\[\n
  placeHolder.AddNewElement(Instantiate(go));\n
\]\n
"}
#4{13 14 "AddNewElement"}
#4{4 5 "void"}
#4{13 14 "GameObject go"}
#4{0 1 ""}
 0}
:SLSThisIcon.286331409{#4{8 9 "45946872"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{28 29 "DesignCanvas : MonoBehaviour"}
 17.88 2.2 17.92 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{12 13 "DesignCanvas"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
#5{16 0}
#5{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
#6{#4{8 9 "46524096"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "CreateIconList"}
 1.3 0.879999 5.6 21  13 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{1005 1028 "\[\n
  Assert.IsNotNull(inventory);\n
\n
  GridLayoutGroup group = GetComponentInChildren<GridLayoutGroup>();\n
  Assert.IsNotNull(group);\n
\n
  RectTransform groupRT = (RectTransform)group.transform;\n
  float iconSize = groupRT.rect.width / (float)iconsPerRow;\n
  float spacing = iconSize * 0.05f;\n
\n
  Debug.Log(\"Total width: \" + groupRT.rect.width + \"   IconSize: \" + iconSize + \"   Spacing: \" + spacing);\n
  group.spacing = new Vector2(spacing, spacing);\n
  \n
  iconSize = iconSize - spacing;\n
  Debug.Log(\"New icon size: \" + iconSize);\n
\n
  group.cellSize = new Vector2(iconSize, iconSize);\n
\n
  for(int i=0; i < inventory.Items.Count; i++)\n
  \[\n
\tGameObject newButton = Instantiate(buttonPrefab, group.transform);\n
\tButton button = newButton.GetComponent<Button>();\n
\tGameObject prefab = inventory.Items[i].prefab;\n
\n
\tbutton.onClick.AddListener( () => AddNewElement(prefab));\n
\t//button.onClick.AddListener( () => ClickedButton() );\n
\tImage image = newButton.GetComponent<Image>();\n
\n
\timage.sprite = inventory.Items[i].icon;\n
  \]\n
\]\n
"}
#4{14 15 "CreateIconList"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#3{#4{8 9 "14482880"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{11 12 "iconsPerRow"}
 1.8 1.88 4.4 28  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{11 12 "iconsPerRow"}
#4{3 4 "int"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{1 2 "3"}
#4{16 17 "[SerializeField]"}
}
:JLSFriendDeclare.286331408{#4{8 9 "66931384"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
#3{#4{8 9 "66725952"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{9 10 "inventory"}
 2.2 1.88 3.6 19  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{9 10 "inventory"}
#4{18 19 "PlaceableInventory"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
#3{#4{8 9 "66725953"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{12 13 "buttonPrefab"}
 1.6 1.88 4.8 28  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{12 13 "buttonPrefab"}
#4{10 19 "GameObject"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
#6{#4{8 9 "46521744"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "ClickedButton"}
 1.3 0.879999 5.2 11  24 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{29 30 "\[\n
  Debug.Log(\"PUSHED!!\");\n
\]\n
"}
#4{13 14 "ClickedButton"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:JLSGlobalDeclare.286331408{#4{8 9 "66932152"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{118 119 "using UnityEngine;\n
using UnityEngine.Assertions;\n
using System;\n
using UnityEngine.UI;\n
using System.Collections.Generic;"}
}
#3{#4{8 9 "46718984"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{16 17 "designModeActive"}
 0.799999 1.88 6.4 37  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{16 18 "designModeActive"}
#4{4 5 "bool"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{0 1 ""}
}
#3{#4{8 9 "46523992"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{5 6 "plane"}
 3 1.88 2 19  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{5 6 "plane"}
#4{10 11 "GameObject"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
#6{#4{8 9 "67204216"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{10 11 "SaveDesign"}
 1.3 0.879999 4 11  26 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{32 33 "\[\n
  PlaceHolder.SaveDesign();\n
\]\n
"}
#4{10 11 "SaveDesign"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "67204217"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{11 12 "ClearDesign"}
 1.3 0.879999 4.4 11  28 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{33 34 "\[\n
  PlaceHolder.ClearDesign();\n
\]\n
"}
#4{11 12 "ClearDesign"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
}
:CLSCSSem.1118481{ 56  51 @105 @196 @146 @0 #5{16 0}
#5{16 7@3 @154 @169 @204 @18 @219 @131 }
#5{16 0}
#5{16 10@33 @81 @57 @45 @119 @93 @184 @234 @69 @246 }
#5{16 0}
#5{16 0}
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#5{16 0}
#1{38@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#5{16 0}
 0}
:Float.17{0 }
#11{1 }
#11{0 }
#11{1 }
}
