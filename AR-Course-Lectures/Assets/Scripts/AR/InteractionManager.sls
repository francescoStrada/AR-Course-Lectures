:ArrayOb.273{6:Dictionary.4369{32 18:SLSThisIcon.286331409{:String.17{8 9 "45368024"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{34 35 "InteractionManager : MonoBehaviour"}
 16.7829 2.2 21.76 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{18 19 "InteractionManager"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
:OrderedCltn.4369{16 0}
#5{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "44567000"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{5 6 "gazed"}
 3 1.88 2 21  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{5 6 "gazed"}
#4{14 15 "ARInteractable"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
#6{#4{8 9 "51845240"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{6 7 "camera"}
 2.8 1.88 2.4 30  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{6 7 "camera"}
#4{6 7 "Camera"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
:SLSProtectMethod.286331408{#4{8 9 "52325368"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "CheckInteractable"}
 1.3 0.88 6.8 30  11 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{177 331 "\[\n
  RaycastHit hit;\n
  Ray ray = camera.ScreenPointToRay(pos);\n
  if (Physics.Raycast(ray, out hit)) \n
\treturn hit.transform.GetComponent<ARInteractable>();\n
  else\n
\treturn null;\n
\]\n
"}
#4{17 18 "CheckInteractable"}
#4{14 15 "ARInteractable"}
#4{11 12 "Vector3 pos"}
#4{0 1 ""}
 0}
#7{#4{8 9 "52332473"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "CheckGaze"}
 1.3 0.88 3.6 20  12 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{491 534 "\[\n
  Vector2 centerScreenPos = new Vector2(Screen.width/2f, Screen.height/2f);\n
  ARInteractable interactable = CheckInteractable(centerScreenPos);\n
\n
  if(interactable == null)\n
  \[\n
\tCancelInvoke(\"FireInteractionOnGaze\");\n
\tgazed = null;\n
\ttimer = 0;\n
\tgazeCursor.enabled = false;\n
  \]\n
\n
  if(interactable != gazed)\n
  \[\n
\tgazeCursor.enabled = true;\n
\tCancelInvoke(\"FireInteractionOnGaze\");\n
\ttimer = 0;\n
\tgazed = interactable;\n
\tInvoke(\"FireInteractionOnGaze\", gazeInterval);\n
  \]\n
\n
  UpdateGazeCursor();\n
\]\n
"}
#4{9 10 "CheckGaze"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "51851912"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{5 6 "timer"}
 3 1.88 2 39  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{5 6 "timer"}
#4{5 6 "float"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{2 3 "0f"}
#4{0 1 ""}
}
#7{#4{8 9 "52332472"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "CheckTap"}
 1.3 0.880004 3.2 20  11 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{641 642 "\[\n
  ARInteractable interactable = null;\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
\tif (Input.touchCount > 0 && Input.touchCount < 2)\n
\t\[\n
\t\tif (Input.GetTouch(0).phase == TouchPhase.Began)\n
                \[\n
\t\t\tinteractable = CheckInteractable(Input.GetTouch(0).position);\n
\t\t\]\n
        \]\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
\tif (Input.GetMouseButtonDown(0))\n
\t\[\n
\t\tinteractable = CheckInteractable(Input.mousePosition);\n
\t\]\n
  \]\n
\n
  if(interactable != null)\n
\tinteractable.Interact();\n
\]\n
"}
#4{8 9 "CheckTap"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#7{#4{8 9 "16956160"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{21 23 "FireInteractionOnGaze"}
 1.3 0.879999 8.4 25  18 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{56 57 "\[\n
  // to be called for gaze only\n
  gazed.Interact();\n
\]\n
"}
#4{21 23 "FireInteractionOnGaze"}
#4{4 5 "void"}
#4{0 28 ""}
#4{0 1 ""}
 0}
:JLSGlobalDeclare.286331408{#4{8 9 "45308528"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{99 100 "using UnityEngine;\n
using UnityEngine.Assertions;\n
using System;\n
using Vuforia;\n
using UnityEngine.UI;"}
}
#7{#4{8 9 "16960472"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Update"}
 1.3 0.88 2.4 11  11 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{60 509 "\[\n
  if(useTap)\n
\tCheckTap();\n
  if(useGaze)\n
\tCheckGaze();  \n
\]\n
"}
#4{6 7 "Update"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#7{#4{8 9 "16958904"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 11  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{238 239 "\[\n
  Assert.IsNull(instance);\n
  instance = this;\n
\n
  camera = FindObjectOfType<Camera>();\n
  Assert.IsNotNull(camera, \"Missing camera in scene\");\n
\n
  if(gazeCursor != null)\n
  \[\n
\tgazeCursor.fillAmount = 0;\n
\tgazeCursor.enabled = false;\n
  \]\n
\t\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSPublicMember.286331409{#4{8 9 "45199728"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{6 7 "useTap"}
 1.3 1.88 2.4 1  38 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{6 7 "useTap"}
#4{4 5 "bool"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "true"}
#4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "45309552"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
#7{#4{8 9 "16956944"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{16 17 "UpdateGazeCursor"}
 1.3 0.879999 6.4 25  19 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{195 196 "\[\n
  if(gazed == null || gazeCursor == null)\n
\treturn;\n
\n
  timer += Time.deltaTime;\n
  float perc = timer/gazeInterval;\n
\n
  gazeCursor.fillAmount = perc;\n
  if(perc >=1)\n
\tgazeCursor.enabled = false;\n
\]\n
"}
#4{16 17 "UpdateGazeCursor"}
#4{4 5 "void"}
#4{0 11 ""}
#4{0 1 ""}
 0}
#9{#4{8 9 "51899520"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{10 11 "gazeCursor"}
 1.3 1.88 4 1  34 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  0 #4{10 11 "gazeCursor"}
#4{20 21 "UnityEngine.UI.Image"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#9{#4{8 9 "44919952"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{12 13 "gazeInterval"}
 1.3 1.88 4.8 1  36 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{12 13 "gazeInterval"}
#4{5 6 "float"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "3.0f"}
#4{0 1 ""}
}
#9{#4{8 9 "44854921"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{7 8 "useGaze"}
 1.3 1.88 2.8 1  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{7 8 "useGaze"}
#4{4 5 "bool"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{0 1 ""}
}
:SLSPrivateMember.286331409{#4{8 9 "44854920"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{8 9 "instance"}
 2.4 1.88 3.2 11  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{8 9 "instance"}
#4{25 26 "static InteractionManager"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @3 @110 @157 @0 #5{16 1@222 }
#5{16 3@17 @32 @71 }
#5{16 0}
#5{16 7@130 @118 @98 @165 @47 @86 @59 }
#5{16 0}
#5{16 0}
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#5{16 0}
#1{38@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @177 @0 @192 @0 @142 @0 @207 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#5{16 0}
 0}
:Float.17{0 }
#13{1 }
#13{0 }
#13{1 }
}
