:ArrayOb.273{6:Dictionary.4369{16 15:SLSProtectMethod.286331408{:String.17{8 9 "67205784"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{635 636 "\[\n
  Button[] buttons = transform.GetComponentsInChildren<Button>();\n
\n
   for(int i=0; i < buttons.Length; i++)\n
   \[\n
\tif(buttons[i].name == \"DesignMode_Button\")\n
\t\[\n
\t\tbuttons[i].onClick.AddListener(ToggleDesignMode); \n
\t\tmodeText = buttons[i].GetComponentInChildren<Text>();\t\n
\t\]\n
\telse if(buttons[i].name == \"ScreenCapture_Button\")\n
\t\[\n
\t\tbuttons[i].onClick.AddListener(() => ScreenCapture.Instance.TakeCapture()); \n
\t\]\n
\t\t\n
\t\n
   \]\n
  \n
  PlaceHolder.ReadDesign();\n
  SetMode(Mode.Design);\n
\n
  var vuforia = VuforiaARController.Instance;\n
  vuforia.RegisterVuforiaStartedCallback(OnVuforiaStarted);    \n
  vuforia.RegisterOnPauseCallback(OnPaused);\n
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
@0  1.94049 3.74855 0
 0  0 #4{18 19 "ApplicationManager"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
:OrderedCltn.4369{16 2#4{55 56 "public event EventHandler<EventArgs> StartedDesignMode;"}
#4{55 56 "public event EventHandler<EventArgs> StoppedDesignMode;"}
}
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
:SLSProperty.286331392{#4{8 9 "67994376"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "Instance"}
 1.3 0.88 3.2 1  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{27 28 "\[\n
  get\[return instance;\]\n
\]"}
#4{8 9 "Instance"}
#4{25 26 "static ApplicationManager"}
#4{0 1 ""}
#4{0 1 ""}
}
#3{#4{8 9 "67993201"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 17 "OnPaused"}
 1.3 0.88 3.2 32  10 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{184 185 "\[\n
  if (!paused) // resumed\n
  \[\n
\t// Set again autofocus mode when app is resumed\n
      \tCameraDevice.Instance.SetFocusMode(CameraDevice.FocusMode.FOCUS_MODE_CONTINUOUSAUTO);    \n
  \]\n
\]\n
"}
#4{8 17 "OnPaused"}
#4{4 5 "void"}
#4{11 12 "bool paused"}
#4{0 1 ""}
 0}
#3{#4{8 9 "67993200"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{16 17 "OnVuforiaStarted"}
 1.3 0.880004 6.4 32  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{92 93 "\[\n
  CameraDevice.Instance.SetFocusMode(CameraDevice.FocusMode.FOCUS_MODE_CONTINUOUSAUTO);\n
\]\n
"}
#4{16 17 "OnVuforiaStarted"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#3{#4{8 9 "46630344"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{13 14 "SetDesignMode"}
 1.3 0.88 5.2 10  15 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{843 844 "\[\n
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
\n
  if( value && instance.StartedDesignMode != null)\n
\tinstance.StartedDesignMode(instance, EventArgs.Empty);\n
\n
  if(!value && instance.StoppedDesignMode != null)\n
\tinstance.StoppedDesignMode(instance,EventArgs.Empty);\n
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
 1  1 #4{450 451 "\[\n
  instance = this;\n
\n
/*\n
  Button[] buttons = transform.GetComponentsInChildren<Button>();\n
\n
   for(int i=0; i < buttons.Length; i++)\n
   \[\n
\tif(buttons[i].name == \"DesignMode_Button\")\n
\t\[\n
\t\tbuttons[i].onClick.AddListener(ToggleDesignMode); \n
\t\tmodeText = buttons[i].GetComponentInChildren<Text>();\t\n
\t\]\n
\telse if(buttons[i].name == \"ScreenCapture_Button\")\n
\t\[\n
\t\tbuttons[i].onClick.AddListener(() => ScreenCapture.Instance.TakeCapture()); \n
\t\]\n
\t\t\n
\t\n
   \]\n
*/\n
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
#10{#4{8 9 "67996728"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{12 13 "IsDesignMode"}
 1.3 0.88 4.8 1  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{38 39 "\[\n
  get\[return mode == Mode.Design;\]\n
\]"}
#4{12 13 "IsDesignMode"}
#4{4 5 "bool"}
#4{0 1 ""}
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
:CLSCSSem.1118481{ 56  51 @15 @54 @46 @0 #6{16 0}
#6{16 3@31 @134 @161 }
#6{16 0}
#6{16 6@3 @98 @176 @86 @74 @122 }
#6{16 0}
#6{16 0}
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@110 @62 @149 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#6{16 0}
 0}
:Float.17{0 }
#13{1 }
#13{0 }
#13{1 }
}
