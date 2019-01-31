:ArrayOb.273{6:Dictionary.4369{16 11:SLSProtectMethod.286331408{:String.17{8 9 "67205784"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{56 57 "\[\n
  PlaceHolder.ReadDesign();\n
  SetMode(Mode.Design);\n
\]\n
"}
#4{5 6 "Start"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSThisIcon.286331409{#4{8 9 "66524120"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{34 35 "ApplicationManager : MonoBehaviour"}
 16.7829 2.2 21.76 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{18 19 "ApplicationManager"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
:OrderedCltn.4369{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "67252016"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{8 9 "instance"}
 2.4 1.88 3.2 10  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{8 9 "instance"}
#4{25 26 "static ApplicationManager"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "46577152"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{46 47 "public enum Mode \[\n
\tNone,\n
\tDesign,\n
\tRuntime\n
\];"}
}
:JLSGlobalDeclare.286331408{#4{8 9 "46578432"}
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
#3{#4{8 9 "46630344"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "SetDesignMode"}
 1.3 0.88 5.2 10  15 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{628 629 "\[\n
  PlaceHolder[] holders = FindObjectsOfType<PlaceHolder>();\n
\n
  for(int i=0; i < holders.Length; i++)\n
  \[\n
\tholders[i].enabled = value;\n
\n
\tARInteractable[] interactables = holders[i].transform.parent.GetComponentsInChildren<ARInteractable>();\n
\tforeach(var obj in interactables)\n
\t\[\n
\t\tif(obj != holders[i])\n
\t\t\tobj.enabled = !value;\n
\t\]\n
\n
\tPlaceableObject[] placeables = holders[i].transform.parent.GetComponentsInChildren<PlaceableObject>();\n
\tforeach(var obj in placeables)\n
\t\[\n
\t\tif(obj != holders[i])\n
\t\t\tobj.enabled = value;\n
\t\]\n
  \]\n
\n
  if(instance.modeText != null)\n
\tinstance.modeText.text = value ? \"Stop Design\" : \"Start Design\";\n
\]\n
"}
#4{13 14 "SetDesignMode"}
#4{11 12 "static void"}
#4{10 11 "bool value"}
#4{0 1 ""}
 0}
:SLSPublicMethod.286331408{#4{8 9 "46629168"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{7 8 "SetMode"}
 1.3 0.88 2.8 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{66 126 "\[\n
  SetDesignMode(mode == Mode.Design);\n
  instance.mode = mode;\n
\]\n
"}
#4{7 8 "SetMode"}
#4{11 12 "static void"}
#4{9 10 "Mode mode"}
#4{0 1 ""}
}
#3{#4{8 9 "46629952"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{310 320 "\[\n
  instance = this;\n
\n
  Button[] buttons = transform.GetComponentsInChildren<Button>();\n
\n
   for(int i=0; i < buttons.Length; i++)\n
   \[\n
\tif(buttons[i].name == \"DesignMode_Button\")\n
\t\[\n
\t\tbuttons[i].onClick.AddListener(ToggleDesignMode); \n
\t\tmodeText = buttons[i].GetComponentInChildren<Text>();\n
\t\t\t\n
\t\]\n
\t\t\n
\t\n
   \]\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#7{#4{8 9 "67253776"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{4 5 "mode"}
 3.2 1.88 1.6 19  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "mode"}
#4{4 5 "Mode"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{9 10 "Mode.None"}
#4{0 1 ""}
}
#7{#4{8 9 "46718544"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{8 9 "modeText"}
 2.4 1.88 3.2 28  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{8 9 "modeText"}
#4{4 5 "Text"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#3{#4{8 9 "67202256"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{16 17 "ToggleDesignMode"}
 1.3 0.88 6.4 19  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{109 110 "\[\n
  if(mode == Mode.Design)\n
\tSetMode(Mode.Runtime);\n
  else if(mode == Mode.Runtime)\n
\tSetMode(Mode.Design);\n
\]\n
"}
#4{16 17 "ToggleDesignMode"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
}
:CLSCSSem.1118481{ 56  51 @15 @52 @44 @0 #6{16 0}
#6{16 3@29 @96 @111 }
#6{16 0}
#6{16 4@3 @84 @60 @126 }
#6{16 0}
#6{16 0}
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@72 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#6{16 0}
 0}
:Float.17{0 }
#12{1 }
#12{0 }
#12{1 }
}
