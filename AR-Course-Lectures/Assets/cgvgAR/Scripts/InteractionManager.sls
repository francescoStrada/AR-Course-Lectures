:ArrayOb.273{6:Dictionary.4369{32 25:SLSThisIcon.286331409{:String.17{8 9 "45368024"}
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
:SLSPublicMember.286331409{#4{8 9 "48237904"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{16 17 "tapFeedbackSound"}
 1.3 1.88 6.4 1  32 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{16 17 "tapFeedbackSound"}
#4{9 10 "AudioClip"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "46524872"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{10 11 "isDragging"}
 2 1.88 4 30  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{10 11 "isDragging"}
#4{4 5 "bool"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{0 1 ""}
}
#7{#4{8 9 "44567000"}
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
#7{#4{8 9 "46528832"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{15 16 "lastTapPosition"}
 1 1.88 6 21  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{15 16 "lastTapPosition"}
#4{7 8 "Vector3"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#7{#4{8 9 "51845240"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{3 4 "cam"}
 3.4 1.88 1.2 30  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{3 7 "cam"}
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
 1  1 #4{353 354 "\[\n
  RaycastHit hit;\n
  lastTapPosition = pos;\n
\n
  Ray ray = cam.ScreenPointToRay(pos);\n
  if (Physics.Raycast(ray, out hit)) \n
  \[\n
\tTransform t = hit.transform;\n
\twhile(t != null)\n
\t\[\n
\t\tARInteractable found = t.GetComponent<ARInteractable>();\n
\t\tif(found != null && found.enabled)\n
\t\t\treturn found;\n
\n
\t\tt = t.parent;\n
\t\]\n
\n
\treturn null;\n
  \]\n
  else\n
\treturn null;\n
\]\n
"}
#4{17 18 "CheckInteractable"}
#4{14 15 "ARInteractable"}
#4{11 12 "Vector3 pos"}
#4{0 1 ""}
 0}
#8{#4{8 9 "52332473"}
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
#7{#4{8 9 "51851912"}
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
#8{#4{8 9 "52332472"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "CheckTap"}
 1.3 0.88 3.2 20  11 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{2164 2165 "\[\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
\tif (Input.touchCount > 0 && Input.touchCount < 2)\n
\t\[\n
\t\tif (Input.GetTouch(0).phase == TouchPhase.Began)\n
                \[\n
\t\t\tif(tapFeedbackAudioSource != null)\n
\t\t\t\ttapFeedbackAudioSource.Play();\n
\t\t\n
\t\t\tinteractable = CheckInteractable(Input.GetTouch(0).position);\n
\t\t\tisDragging = false;\n
\n
\t\t\]\n
\t\telse if (Input.GetTouch(0).phase == TouchPhase.Ended)\n
\t\t\[\n
  \t\t\tif(interactable != null)\n
\t\t\t\tinteractable.Interact();\n
\n
\t\t\tinteractable = null;\n
\t\t\]\n
\t\telse if (interactable != null && (Input.GetTouch(0).phase == TouchPhase.Stationary || Input.GetTouch(0).phase == TouchPhase.Moved))\n
\t\t\[\t\n
\t\t\tisDragging = true;\n
\t\t\tinteractable.Drag(Input.GetTouch(0).position, Input.GetTouch(0).deltaPosition);\n
\t\t\]\n
        \]\n
        else if(Input.touchCount == 2)\n
\t\tCheckMultitouch();\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
/*\n
\tif(Input.GetMouseButton(0))\n
\t\tDebug.Log(\"button down\");\n
\telse\n
\t\tDebug.Log(\"button up\");\n
*/\n
\n
\t// RESIZING WITH SCROLL WHEEL\n
\tif(Input.mouseScrollDelta.y != 0f)\n
\t\[\n
\t\tinteractable = CheckInteractable(Input.mousePosition);\n
\n
\t\tif(interactable != null)\n
\t\t\[\n
\t\t\t//interactable.Resize(Input.mouseScrollDelta.y);\n
\t\t\tinteractable.Rotate(Input.mouseScrollDelta.y);\n
\t\t\tinteractable = null;\n
\t\t\]\n
\n
\t\treturn;\n
\t\]\n
\n
\n
\tif (Input.GetMouseButtonDown(0))\n
\t\[\n
\t\tif(tapFeedbackAudioSource != null)\n
\t\t\t\ttapFeedbackAudioSource.Play();\n
\n
\n
\t\tinteractable = CheckInteractable(Input.mousePosition);\n
\t\tisDragging = false;\n
\n
\t\t//Debug.Log(\"GetMouseButtonDown on \" + interactable);\n
\t\]\n
\telse if (Input.GetMouseButtonUp(0))\n
\t\[\n
\t\t//Debug.Log(\"GetMouseButtonUp\");\n
\t\tif(interactable != null && !isDragging)\n
\t\t\tinteractable.Interact();\n
\t\t\t\n
\t\tinteractable = null;\n
\t\]\n
\telse if(interactable != null && Input.GetMouseButton(0))\n
\t\[\n
\t\tVector3 delta = Input.mousePosition - lastTapPosition;\n
\n
\t\t//Debug.Log(\"Mouse drag \" + delta);\n
\t\t// no movement\n
\t\tif(delta == Vector3.zero)\n
\t\t\treturn;\n
\n
\n
\t\tlastTapPosition = Input.mousePosition;\n
\t\tinteractable.Drag(Input.mousePosition, delta);\n
\t\tisDragging = true;\n
\t\]\n
  \]\n
\n
\]\n
"}
#4{8 9 "CheckTap"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#8{#4{8 9 "16956160"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{21 22 "FireInteractionOnGaze"}
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
#8{#4{8 9 "67188992"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Angle"}
 1.3 0.88 2 30  13 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{232 233 "\[\n
  Vector2 from = pos2 - pos1;\n
  Vector2 to = new Vector2(1, 0);\n
 \n
  float result = Vector2.Angle( from, to );\n
  Vector3 cross = Vector3.Cross( from, to );\n
 \n
  if (cross.z > 0) \[\n
  \tresult = 360f - result;\n
  \]\n
 \n
  return result;\n
\]\n
"}
#4{5 6 "Angle"}
#4{5 6 "float"}
#4{26 27 "Vector2 pos1, Vector2 pos2"}
#4{0 1 ""}
 0}
#7{#4{8 9 "46526192"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{12 13 "interactable"}
 1.6 1.88 4.8 39  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{12 13 "interactable"}
#4{14 15 "ARInteractable"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
#8{#4{8 9 "16960472"}
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
#8{#4{8 9 "16958904"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 11  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{385 389 "\[\n
  Assert.IsNull(instance);\n
  instance = this;\n
\n
  cam = FindObjectOfType<Camera>();\n
  Assert.IsNotNull(cam, \"Missing camera in scene\");\n
\n
  if(gazeCursor != null)\n
  \[\n
\tgazeCursor.fillAmount = 0;\n
\tgazeCursor.enabled = false;\n
  \]\n
\n
  tapFeedbackAudioSource = GetComponentInChildren<AudioSource>();\n
  if(tapFeedbackAudioSource != null)\n
\ttapFeedbackAudioSource.clip = tapFeedbackSound;\n
\t\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "45199728"}
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
#7{#4{8 9 "48254760"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{22 23 "tapFeedbackAudioSource"}
 0.3 1.88 8.8 11  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{22 23 "tapFeedbackAudioSource"}
#4{11 12 "AudioSource"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "45309552"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{196 197 "const float pinchTurnRatio = Mathf.PI / 2;\n
const float minTurnAngle = 0;\n
 \n
const float pinchRatio = 1;\n
const float minPinchDistance = 0;\n
 \n
const float panRatio = 1;\n
const float minPanDistance = 0;"}
}
#8{#4{8 9 "16956944"}
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
#6{#4{8 9 "44919952"}
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
#6{#4{8 9 "51899520"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{10 11 "gazeCursor"}
 1.3 1.88 4 1  34 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{10 11 "gazeCursor"}
#4{20 21 "UnityEngine.UI.Image"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
#6{#4{8 9 "44854921"}
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
#8{#4{8 9 "67191344"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{15 16 "CheckMultitouch"}
 1.3 0.88 6 20  13 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{1655 1656 "\[\n
  Touch touch1 = Input.touches[0];\n
  Touch touch2 = Input.touches[1];\n
 \n
  // ... if at least one of them moved ...\n
  if (touch1.phase == TouchPhase.Moved || touch2.phase == TouchPhase.Moved) \n
  \[\n
\tif(interactable == null)\n
\t\[\n
\t\tARInteractable obj1 = CheckInteractable(touch1.position);\n
\t\tARInteractable obj2 = CheckInteractable(touch2.position);\n
\t\t\n
\t\tif(obj1 == null && obj2 == null)\n
\t\t\treturn;\n
\n
\t\tif(obj1 == null || obj1 == obj2)\n
\t\t\tinteractable = obj2;\n
\t\tif(obj2 == null)\n
\t\t\tinteractable = obj1;\n
\t\tif(interactable == null)\n
\t\t\treturn;\n
\t\]\n
  \t// ... check the delta distance between them ...\n
  \tfloat pinchDistance = Vector2.Distance(touch1.position, touch2.position);\n
  \tfloat prevDistance = Vector2.Distance(touch1.position - touch1.deltaPosition,\n
  \t                                      touch2.position - touch2.deltaPosition);\n
  \t\n
  \tfloat pinchDistanceDelta = pinchDistance - prevDistance;\n
 \n
  \t// ... if it's greater than a minimum threshold, it's a pinch!\n
  \tif (Mathf.Abs(pinchDistanceDelta) > minPinchDistance) \n
 \t\[\n
  \t\tpinchDistanceDelta *= pinchRatio;\n
\t\tinteractable.Resize(pinchDistanceDelta/pinchDistance);\n
  \t\] \n
\t\n
 \n
  \t// ... or check the delta angle between them ...\n
  \tfloat turnAngle = Angle(touch1.position, touch2.position);\n
  \tfloat prevTurn = Angle(touch1.position - touch1.deltaPosition,\n
  \t                       touch2.position - touch2.deltaPosition);\n
  \tfloat turnAngleDelta = Mathf.DeltaAngle(prevTurn, turnAngle);\n
 \n
  \t// ... if it's greater than a minimum threshold, it's a turn!\n
  \tif (Mathf.Abs(turnAngleDelta) > minTurnAngle) \n
\t\[\n
  \t\tturnAngleDelta *= pinchTurnRatio;\n
\t\tinteractable.Rotate(-turnAngleDelta);\n
  \t\] \n
  \]\n
\t\n
\]\n
"}
#4{15 16 "CheckMultitouch"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
}
:CLSCSSem.1118481{ 56  51 @3 @155 @244 @0 #5{16 1@309 }
#5{16 7@47 @77 @116 @229 @62 @32 @175 }
#5{16 0}
#5{16 9@202 @190 @143 @252 @92 @131 @104 @324 @163 }
#5{16 0}
#5{16 0}
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#5{16 0}
#1{38@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @17 @0 @279 @0 @264 @0 @214 @0 @294 @0 @0 @0 }
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
