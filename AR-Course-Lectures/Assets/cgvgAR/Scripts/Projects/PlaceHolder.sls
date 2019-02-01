:ArrayOb.273{6:Dictionary.4369{32 23:SLSProtectMethod.286331408{:String.17{8 9 "90855032"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{15 16 "OnTrackingFound"}
 1.3 0.88 6 21  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{70 241 "\[\n
  base.OnTrackingFound(sender, args);\n
  renderer.enabled = false;\n
\]\n
"}
#4{15 16 "OnTrackingFound"}
#4{13 14 "override void"}
#4{28 29 "object sender,EventArgs args"}
#4{0 1 ""}
 0}
#3{#4{8 9 "46607664"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{1434 1435 "\[\n
   base.Awake();\n
\n
   cam = FindObjectOfType<Camera>();\n
   renderer = GetComponent<MeshRenderer>();\n
\n
   Collider collider = GetComponent<Collider>();\n
   Debug.Log(\"Plane size : \" + collider.bounds.size);\n
\n
/*\n
   InputField[] fields = transform.parent.GetComponentsInChildren<InputField>();\n
\n
\n
   for(int i=0; i < fields.Length; i++)\n
   \[\n
\tif(fields[i].name == \"Width_InputField\")\n
\t\[\n
\t\tfields[i].text = transform.localScale.x.ToString();\n
\t\tfields[i].onValueChanged.AddListener((x) => transform.localScale += new Vector3(float.Parse(x), transform.localScale.y, transform.localScale.z)); \n
\t\]\n
\tif(fields[i].name == \"Height_InputField\")\n
\t\[\n
\t\tfields[i].text = transform.localScale.z.ToString();\n
\t\tfields[i].onValueChanged.AddListener((x) => transform.localScale += new Vector3(transform.localScale.x, transform.localScale.y, float.Parse(x))); \n
\t\]\n
   \]\n
*/\n
\n
/*\n
   for(int i=0; i < buttons.Length; i++)\n
   \[\n
\tif(buttons[i].name == \"Width_minus\")\n
\t\tbuttons[i].onClick.AddListener(() => transform.localScale += new Vector3(-DELTA, 0f, 0f)); \n
\tif(buttons[i].name == \"Width_plus\")\n
\t\tbuttons[i].onClick.AddListener(() => transform.localScale += new Vector3(DELTA, 0f, 0f)); \n
\tif(buttons[i].name == \"Height_minus\")\n
\t\tbuttons[i].onClick.AddListener(() => transform.localScale += new Vector3(0f, 0f, -DELTA)); \n
\tif(buttons[i].name == \"Height_plus\")\n
\t\tbuttons[i].onClick.AddListener(() => transform.localScale += new Vector3(0f, 0f, DELTA)); \n
   \]\n
*/\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSPublicMember.286331409{#4{8 9 "46607224"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{6 7 "height"}
 1.3 1.88 2.4 1  38 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{6 7 "height"}
#4{5 6 "float"}
#4{0 1 ""}
:OrderedCltn.4369{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
:SLSPublicMethod.286331408{#4{9 10 "118979870"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{10 11 "ReadDesign"}
 1.3 0.879999 4 1  27 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{1177 1232 "\[\n
   //reading from the file\n
\n
  string fileName = DESIGN_FILENAME;\n
  BinaryReader strm;\n
\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
\tfileName = Path.Combine(Application.persistentDataPath, fileName);\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
\tfileName = Path.Combine(Application.dataPath, fileName);\n
  \]\n
\n
\n
  Debug.Log(\"Reading design from \" + fileName);\n
  try \[\n
  \tstrm = new BinaryReader(new FileStream(fileName, FileMode.Open));  \n
  \] \n
  catch (Exception e) \n
  \[\n
  \tDebug.LogError(e.Message + \"\\n Cannot open file.\");\n
       \treturn false;\n
  \]\n
\n
\n
  int objNr = strm.ReadInt32();\n
  PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();\n
\n
  for(int i=0; i < objNr; i++)\n
  \[\n
\tstring instanceID = strm.ReadString();\n
\n
\tPlaceHolder holder = null;\n
\tfor(int j=0; j < holders.Length; j++)\n
\t\[\n
\t\tif(holders[j].name == instanceID)\n
\t\t\[\n
\t\t\tholder = holders[j];\n
\t\t\tbreak;\n
\t\t\]\n
\t\]\n
\n
\tif(holder == null)\n
\t\[\n
\t\tDebug.LogError(\"Error: missing holder ID \" + instanceID);\n
\t\treturn false;\n
\t\]\n
\n
\tholder.ReadFrom(strm);\n
  \]\n
\n
\n
    return true;\n
\]"}
#4{10 11 "ReadDesign"}
#4{11 18 "static bool"}
#4{0 20 ""}
#4{0 1 ""}
}
#7{#4{9 10 "118979871"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{11 12 "ClearDesign"}
 1.3 0.879999 4.4 1  28 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{773 1232 "\[\n
   //reading from the file\n
\n
  string fileName = DESIGN_FILENAME;\n
\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
\tfileName = Path.Combine(Application.persistentDataPath, fileName);\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
\tfileName = Path.Combine(Application.dataPath, fileName);\n
  \]\n
\n
\n
  Debug.Log(\"Deleting design file \" + fileName);\n
  try \[\n
  \tFile.Delete(fileName);  \n
  \] \n
  catch (Exception e) \n
  \[\n
  \tDebug.Log(e.Message + \"\\n Cannot open file.\");\n
  \]\n
\n
\n
  PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();\n
\n
  for(int i=0; i < holders.Length; i++)\n
  \[\n
\tholders[i].CleanContents();\n
  \]\n
\n
\n
    return true;\n
\]"}
#4{11 12 "ClearDesign"}
#4{11 18 "static bool"}
#4{0 20 ""}
#4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "51845240"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{3 4 "cam"}
 3.4 1.88 1.2 30  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{3 7 "cam"}
#4{6 7 "Camera"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
#3{#4{8 9 "52325368"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "CheckIntersection"}
 1.3 0.88 6.8 30  11 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{261 331 "\[\n
  RaycastHit hit;\n
\n
  Ray ray = cam.ScreenPointToRay(pos);\n
  Debug.Log(\"pos \" + pos + \" cam \" + cam.transform.position + \" Found ray \" + ray.origin + \" \" + ray.direction);\n
  if (Physics.Raycast(ray, out hit)) \n
\treturn hit.point;\n
  else\n
\treturn Vector3.zero;\n
\]\n
"}
#4{17 18 "CheckIntersection"}
#4{7 15 "Vector3"}
#4{11 12 "Vector3 pos"}
#4{0 1 ""}
 0}
#3{#4{9 10 "118979869"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "ReadFrom"}
 1.3 0.879999 3.2 10  25 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{1109 1110 "\[\n
\n
    int objectNr = reader.ReadInt32();\n
\n
    for(int i=0; i < objectNr; i++)\n
    \[\n
\t// reading object name\n
\tstring objName = reader.ReadString();\n
\n
\t// finding corresponding inventory item\n
\tInventoryItem item = inventory.GetItemByName(objName);\n
\n
\tif(item == null)\n
\t\[\n
\t\tDebug.LogError(\"Item \" + objName + \" not found in inventory\");\n
\t\treturn false;\n
\t\]\n
\n
    \tGameObject go = Instantiate(item.prefab);\n
\tgo.name = objName;\n
  \tgo.transform.parent = transform.parent;\n
\t\n
    \tgo.transform.localPosition = new Vector3(reader.ReadSingle(),\n
                                reader.ReadSingle(),\n
                                reader.ReadSingle());\n
\n
    \tgo.transform.localRotation = new Quaternion(reader.ReadSingle(),\n
                                reader.ReadSingle(),\n
                                reader.ReadSingle(),\n
                                reader.ReadSingle());\n
\t\n
    \tgo.transform.localScale = new Vector3(reader.ReadSingle(),\n
                                reader.ReadSingle(),\n
                                reader.ReadSingle());\n
\n
  \tgo.AddComponent<PlaceableObject>();\n
    \]\n
\n
\n
    return true;\n
\]"}
#4{8 9 "ReadFrom"}
#4{4 5 "bool"}
#4{19 20 "BinaryReader reader"}
#4{0 1 ""}
 0}
:JLSFriendDeclare.286331408{#4{8 9 "46316936"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{152 153 "public enum Orientation \[\n
\tNone,\n
\tHorizontal,\n
\tVertical\n
\];\n
\n
protected const float DELTA_LIFT = 0.001f;\n
static string DESIGN_FILENAME = \"DesignData.dat\";"}
}
#8{#4{8 9 "66725952"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{9 10 "inventory"}
 2.2 1.88 3.6 11  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{9 10 "inventory"}
#4{18 19 "PlaceableInventory"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 17 ""}
}
#7{#4{8 9 "66649233"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{4 5 "Drag"}
 1.3 0.88 1.6 1  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{335 355 "\[\n
  return;\n
\n
  Debug.Log(\"pos: \" + position + \" delta: \" + delta);\n
\n
  Vector3 start = CheckIntersection(position - delta);\n
  Vector3 end = CheckIntersection(position);\n
\n
  Debug.Log(name + \" start: \" + start + \" end: \" + end);\n
\n
\n
  //if(end != Vector3.zero && start != Vector3.zero)\n
  //\ttransform.Translate(end - start, Space.World);\n
\]\n
"}
#4{4 5 "Drag"}
#4{13 14 "override void"}
#4{30 31 "Vector3 position,Vector3 delta"}
#4{0 1 ""}
}
#7{#4{8 9 "46524488"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{12 13 "SetInventory"}
 0.3 0.88 4.8 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{34 35 "\[\n
  this.inventory = inventory;\n
\]\n
"}
#4{12 13 "SetInventory"}
#4{4 5 "void"}
#4{28 29 "PlaceableInventory inventory"}
#4{0 1 ""}
}
#8{#4{8 9 "46728512"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{8 9 "renderer"}
 2.4 1.88 3.2 20  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{8 9 "renderer"}
#4{12 13 "MeshRenderer"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
:SLSThisIcon.286331409{#4{8 9 "46311904"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{28 29 "PlaceHolder : ARInteractable"}
 17.88 2.2 17.92 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{11 12 "PlaceHolder"}
#4{14 15 "ARInteractable"}
#4{5 13 ".\\..\\"}
#6{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:JLSGlobalDeclare.286331408{#4{8 9 "46312456"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{101 102 "using UnityEngine;\n
using UnityEngine.Assertions;\n
using System;\n
using UnityEngine.UI;\n
using System.IO;"}
}
#5{#4{8 9 "46522672"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{5 6 "DELTA"}
 1.3 1.88 2 1  34 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{5 6 "DELTA"}
#4{5 6 "float"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{5 6 "0.01f"}
#4{0 1 ""}
}
#5{#4{8 9 "46484880"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{5 6 "width"}
 1.3 1.88 2 1  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{5 6 "width"}
#4{5 6 "float"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#5{#4{8 9 "46585888"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{11 12 "orientation"}
 1.3 1.88 4.4 1  36 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{11 12 "orientation"}
#4{11 12 "Orientation"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#7{#4{9 10 "118978238"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{10 11 "SaveDesign"}
 1.3 0.879999 4 1  26 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{935 944 "\[\n
  string fileName = DESIGN_FILENAME;\n
  BinaryWriter bw;\n
\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
\tfileName = Path.Combine(Application.persistentDataPath, fileName);\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
\tfileName = Path.Combine(Application.dataPath, fileName);\n
  \]\n
\n
  Debug.Log(\"Saving design on \" + fileName);\n
\n
   //create the file\n
   try \[\n
            bw = new BinaryWriter(new FileStream(fileName, FileMode.Create));\n
   \] \n
   catch (IOException e) \n
   \[\n
   \tDebug.LogError(e.Message + \"\\n Cannot create file.\");\n
        return;\n
   \]\n
\n
   PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();\n
\n
   bw.Write(holders.Length);\n
\n
   for(int i = 0; i < holders.Length; i++)\n
   \[\n
\tstring ID = holders[i].name;\n
\tbw.Write(ID);\n
\tholders[i].StoreOn(bw);\n
   \]\n
\n
   bw.Close();\n
\]"}
#4{10 16 "SaveDesign"}
#4{11 12 "static void"}
#4{0 41 ""}
#4{0 1 ""}
}
#3{#4{9 10 "118978239"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "CleanContents"}
 1.3 0.879999 5.2 10  27 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{194 745 "\[\n
    PlaceableObject[] objects = transform.parent.GetComponentsInChildren<PlaceableObject>();\n
\n
    for(int i=objects.Length - 1; i >= 0; i--)\n
    \[\n
    \tDestroy(objects[i].gameObject);\n
    \]\n
\n
\]"}
#4{13 14 "CleanContents"}
#4{4 5 "void"}
#4{0 41 ""}
#4{0 1 ""}
 0}
#7{#4{8 9 "66725184"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "AddNewElement"}
 1.3 0.88 5.2 1  12 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{467 469 "\[\n
  Debug.Log(\"Ping...\");\n
\n
  GameObject plane = GameObject.CreatePrimitive(PrimitiveType.Cube);\n
  plane.name = \"Children nr.\";\n
\n
  plane.transform.position = transform.position + DELTA_LIFT * transform.up;\n
  plane.transform.rotation = transform.rotation;\n
  plane.transform.parent = transform.parent;\n
  //plane.transform.localScale = new Vector3(0.1f,0.1f,0.1f);\n
\n
  plane.AddComponent<PlaceableObject>();\n
\n
  plane.GetComponent<Renderer>().material.color = Color.red;\n
\]\n
"}
#4{13 14 "AddNewElement"}
#4{12 13 "virtual void"}
#4{0 1 ""}
#4{0 1 ""}
}
#7{#4{8 9 "66725185"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "AddNewElement"}
 1.3 0.88 5.2 1  13 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{760 798 "\[\n
  string cleanName = prefab.name;\n
  int position = cleanName.IndexOf(\"(Clone)\");\n
  string objectName = cleanName.Remove(position, cleanName.Length - position);\n
  prefab.name = objectName;\n
\n
\n
  prefab.transform.position = transform.position + DELTA_LIFT * transform.up;\n
  prefab.transform.rotation = transform.rotation;\n
  prefab.transform.parent = transform.parent;\n
  //prefab.transform.localScale = new Vector3(0.1f,0.1f,0.1f);\n
\n
  PlaceableObject placeable = prefab.GetComponent<PlaceableObject>();\n
\n
  ARInteractable[] interactables = prefab.transform.GetComponentsInChildren<ARInteractable>();\n
  for(int i = 0; i < interactables.Length; i++)\n
  \[\n
\tinteractables[i].Initialize();\n
\n
\tif(placeable != interactables[i])\n
\t\tinteractables[i].enabled = false;\n
  \]\n
\t\n
\]\n
"}
#4{13 14 "AddNewElement"}
#4{12 13 "virtual void"}
#4{17 18 "GameObject prefab"}
#4{0 1 ""}
}
#3{#4{9 10 "118978237"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{7 8 "StoreOn"}
 1.3 0.879999 2.8 10  23 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{744 745 "\[\n
    PlaceableObject[] objects = transform.parent.GetComponentsInChildren<PlaceableObject>();\n
\n
    writer.Write(objects.Length);\n
\n
    for(int i=0; i < objects.Length; i++)\n
    \[\n
    \tGameObject go = objects[i].gameObject;\n
\n
    \twriter.Write(go.name);\n
\n
    \twriter.Write(go.transform.localPosition.x);\n
    \twriter.Write(go.transform.localPosition.y);\n
    \twriter.Write(go.transform.localPosition.z);\n
\n
    \twriter.Write(go.transform.localRotation.x);\n
    \twriter.Write(go.transform.localRotation.y);\n
    \twriter.Write(go.transform.localRotation.z);\n
    \twriter.Write(go.transform.localRotation.w);\n
\n
    \twriter.Write(go.transform.localScale.x);\n
    \twriter.Write(go.transform.localScale.y);\n
    \twriter.Write(go.transform.localScale.z);\n
    \]\n
\n
\]"}
#4{7 8 "StoreOn"}
#4{4 5 "void"}
#4{19 41 "BinaryWriter writer"}
#4{0 1 ""}
 0}
}
:CLSCSSem.1118481{ 56  51 @167 @181 @105 @0 #6{16 0}
#6{16 3@66 @152 @113 }
#6{16 0}
#6{16 6@15 @81 @3 @282 @93 @246 }
#6{16 0}
#6{16 0}
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#6{16 0}
#1{38@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @189 @0 @219 @0 @27 @0 @204 @0 @0 @0 }
#1{27@140 @0 @128 @0 @0 @0 @258 @270 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @234 @42 @54 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#6{16 0}
 0}
:Float.17{0 }
#13{1 }
#13{0 }
#13{1 }
}
