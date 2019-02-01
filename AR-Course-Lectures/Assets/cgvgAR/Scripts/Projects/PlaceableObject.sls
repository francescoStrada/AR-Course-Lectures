:ArrayOb.273{6:Dictionary.4369{16 15:SLSPublicMethod.286331408{:String.17{8 9 "67554264"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Resize"}
 1.3 0.88 2.4 1  15 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{409 410 "\[\n
  //Debug.Log(\"Delta = \" + delta);\n
  if(constrainScale)\n
\treturn;\n
\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
  \ttransform.localScale *= 1f + delta;\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
  \ttransform.localScale *= 1f + SCALE_FACTOR * delta;\n
  \]\n
\]\n
"}
#4{6 7 "Resize"}
#4{13 14 "override void"}
#4{11 12 "float delta"}
#4{0 1 ""}
}
:SLSThisIcon.286331409{#4{8 9 "66526328"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{32 33 "PlaceableObject : ARInteractable"}
 17.1486 2.2 20.48 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{15 16 "PlaceableObject"}
#4{14 15 "ARInteractable"}
#4{5 13 ".\\..\\"}
:OrderedCltn.4369{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:SLSProtectMethod.286331408{#4{8 9 "52325368"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "CheckIntersection"}
 1.3 0.88 6.8 30  11 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{275 534 "\[\n
  Ray ray = cam.ScreenPointToRay(pos);\n
  \n
\n
  RaycastHit[] hits = Physics.RaycastAll(ray);\n
\n
\n
  for(int i=0; i < hits.Length; i++)\n
  \[\n
\tPlaceHolder ph = hits[i].collider.GetComponent<PlaceHolder>();\n
\tif(ph != null)\n
\t\[\n
\t\treturn hits[i].point;\n
\t\]\n
  \]\n
\n
  return Vector3.zero;\n
\]\n
"}
#4{17 18 "CheckIntersection"}
#4{7 15 "Vector3"}
#4{11 12 "Vector3 pos"}
#4{0 1 ""}
 0}
:SLSProtectMember.286331409{#4{8 9 "51845240"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{3 4 "cam"}
 3.4 1.88 1.2 10  38 #4{0 1 ""}
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
:JLSFriendDeclare.286331408{#4{8 9 "46574592"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{32 33 "const float SCALE_FACTOR = 0.1f;"}
}
#7{#4{8 9 "67042160"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  10 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{100 101 "\[\n
  holder = Marker.gameObject.GetComponentInChildren<PlaceHolder>();\n
  Assert.IsNotNull(holder);\n
\]\n
"}
#4{5 6 "Start"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#7{#4{8 9 "46607664"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{1533 1534 "\[\n
   base.Awake();\n
\n
   cam = FindObjectOfType<VuforiaBehaviour>().GetComponent<Camera>();\n
\n
/*\n
   Collider collider = GetComponent<Collider>();\n
   if(collider == null)\n
   \[\n
\tCollider[] colliders = GetComponentsInChildren<Collider>();\n
\tforeach(var coll in colliders)\n
\t\[\n
\t\tAddComponent(coll)\n
\t\]\n
   \]\n
*/\n
   \n
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
#3{#4{8 9 "66649233"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{4 5 "Drag"}
 1.3 0.88 1.6 1  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{323 355 "\[\n
  //Debug.Log(\"pos: \" + position + \" delta: \" + delta);\n
\n
  Vector3 start = CheckIntersection(position - delta);\n
  Vector3 end = CheckIntersection(position);\n
\n
  //Debug.Log(name + \" start: \" + start + \" end: \" + end);\n
\n
  if(end != Vector3.zero && start != Vector3.zero)\n
  \ttransform.Translate(end - start, Space.World);\n
\]\n
"}
#4{4 5 "Drag"}
#4{13 14 "override void"}
#4{30 31 "Vector3 position,Vector3 delta"}
#4{0 1 ""}
}
#3{#4{8 9 "66881680"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{7 8 "StoreOn"}
 0.3 0.88 2.8 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "\[\n
\]\n
"}
#4{7 8 "StoreOn"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
}
#3{#4{8 9 "67992416"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Remove"}
 0.3 0.88 2.4 1  17 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{27 28 "\[\n
  Destroy(gameObject);\n
\]\n
"}
#4{6 7 "Remove"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
}
#8{#4{8 9 "46715905"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{14 18 "constrainScale"}
 1.2 1.88 5.6 19  41 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{14 18 "constrainScale"}
#4{4 5 "bool"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{16 17 "[SerializeField]"}
}
:JLSGlobalDeclare.286331408{#4{8 9 "46576384"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{99 100 "using UnityEngine;\n
using UnityEngine.Assertions;\n
using System;\n
using UnityEngine.UI;\n
using Vuforia;"}
}
#8{#4{8 9 "46715904"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{17 18 "constrainRotation"}
 0.6 1.88 6.8 19  38 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{17 18 "constrainRotation"}
#4{4 5 "bool"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{16 17 "[SerializeField]"}
}
#8{#4{8 9 "46628136"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{6 7 "holder"}
 2.8 1.88 2.4 10  41 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{6 7 "holder"}
#4{11 12 "PlaceHolder"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#3{#4{8 9 "67554265"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Rotate"}
 1.3 0.879999 2.4 1  16 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{293 294 "\[\n
  //Debug.Log(\"Delta = \" + delta);\n
  if(constrainRotation)\n
\treturn;\n
 \n
  transform.Rotate(Vector3.up * delta);\n
\n
/*\n
  transform.localScale *= 1f + SCALE_FACTOR * delta;\n
\n
\n
  Vector3 rotationDeg = Vector3.zero;\n
  rotationDeg.z = - delta;\n
  desiredRotation *= Quaternion.Euler(rotationDeg);\n
*/\n
\]\n
"}
#4{6 7 "Rotate"}
#4{13 14 "override void"}
#4{11 12 "float delta"}
#4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @15 @139 @56 @0 #6{16 0}
#6{16 4@41 @162 @147 @124 }
#6{16 0}
#6{16 3@29 @76 @64 }
#6{16 0}
#6{16 0}
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{27@100 @0 @88 @0 @0 @0 @0 @0 @0 @3 @177 @112 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#6{16 0}
 0}
:Float.17{0 }
#12{1 }
#12{0 }
#12{1 }
}
