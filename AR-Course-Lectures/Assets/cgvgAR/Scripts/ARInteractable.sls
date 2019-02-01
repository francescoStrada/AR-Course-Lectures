:ArrayOb.273{6:Dictionary.4369{32 17:JLSGlobalDeclare.286331408{:String.17{8 9 "45117824"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{62 63 "using UnityEngine;\n
using UnityEngine.Assertions;\n
using System;"}
}
:SLSProtectMethod.286331408{#4{8 9 "90855033"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "OnTrackingLost"}
 1.3 0.88 5.6 21  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{49 276 "\[\n
  // add specific behaviour at target lost\n
 \n
\]\n
"}
#4{14 16 "OnTrackingLost"}
#4{12 14 "virtual void"}
#4{28 29 "object sender,EventArgs args"}
#4{0 1 ""}
 0}
#5{#4{8 9 "90855032"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{15 16 "OnTrackingFound"}
 1.3 0.88 6 21  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{122 241 "\[\n
  Debug.Log(\"Tracking found \" + ((MonoBehaviour)sender).gameObject.name);\n
  // add specific behaviour at target found\n
\]\n
"}
#4{15 16 "OnTrackingFound"}
#4{12 14 "virtual void"}
#4{28 29 "object sender,EventArgs args"}
#4{0 1 ""}
 0}
#5{#4{8 9 "16953416"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "OnDestroy"}
 1.3 0.879999 3.6 10  17 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{119 120 "\[\n
  if(marker == null)\n
\treturn;\n
\n
  marker.TrackingFound -= OnTrackingFound;\n
  marker.TrackingLost -= OnTrackingLost;\n
\]\n
"}
#4{9 10 "OnDestroy"}
#4{12 13 "virtual void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#5{#4{8 9 "45208128"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{20 467 "\[\n
  Initialize();\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSProtectMember.286331409{#4{8 9 "44567000"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{6 7 "marker"}
 2.8 1.88 2.4 11  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{6 7 "marker"}
#4{8 9 "ARMarker"}
#4{0 1 ""}
:OrderedCltn.4369{16 0}
#7{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
:SLSProperty.286331392{#4{8 9 "66767624"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Marker"}
 1.3 0.88 2.4 1  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{31 32 "\[\n
  get \[\n
\treturn marker;\n
  \]\n
\]"}
#4{6 7 "Marker"}
#4{8 9 "ARMarker"}
#4{0 1 ""}
#4{0 1 ""}
}
:SLSThisIcon.286331409{#4{8 9 "45173704"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{30 31 "ARInteractable : MonoBehaviour"}
 17.5143 2.2 19.2 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{14 15 "ARInteractable"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
#7{16 0}
#7{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:SLSPublicMethod.286331408{#4{8 9 "45174257"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{12 13 "LongInteract"}
 1.3 0.88 4.8 1  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{151 152 "\[\n
  // implement specific behaviour\n
  if(activateOnTrackingFound)\n
\treturn;\n
  \n
  Debug.Log(\"Executing Interact Behaviour on GO: \" + gameObject.name);\n
\]\n
"}
#4{12 13 "LongInteract"}
#4{12 13 "virtual void"}
#4{0 1 ""}
#4{0 1 ""}
}
#10{#4{8 9 "45174256"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "Interact"}
 1.3 0.88 3.2 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{151 152 "\[\n
  // implement specific behaviour\n
  if(activateOnTrackingFound)\n
\treturn;\n
  \n
  Debug.Log(\"Executing Interact Behaviour on GO: \" + gameObject.name);\n
\]\n
"}
#4{8 9 "Interact"}
#4{12 13 "virtual void"}
#4{0 1 ""}
#4{0 1 ""}
}
#10{#4{8 9 "66649233"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{4 5 "Drag"}
 1.3 0.88 1.6 1  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "\[\n
\]\n
"}
#4{4 5 "Drag"}
#4{12 13 "virtual void"}
#4{30 31 "Vector3 position,Vector3 delta"}
#4{0 1 ""}
}
:SLSPublicMember.286331409{#4{8 9 "14408744"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{23 24 "activateOnTrackingFound"}
 1.3 1.88 9.2 1  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{23 24 "activateOnTrackingFound"}
#4{4 5 "bool"}
#4{0 1 ""}
#7{16 0}
#7{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{0 1 ""}
}
#10{#4{8 9 "67554264"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Resize"}
 1.3 0.88 2.4 1  15 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "\[\n
\]\n
"}
#4{6 7 "Resize"}
#4{12 13 "virtual void"}
#4{11 12 "float delta"}
#4{0 1 ""}
}
#10{#4{8 9 "67554265"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Rotate"}
 1.3 0.879999 2.4 1  16 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "\[\n
\]\n
"}
#4{6 7 "Rotate"}
#4{12 13 "virtual void"}
#4{11 12 "float delta"}
#4{0 1 ""}
}
#5{#4{8 9 "45409096"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "\[\n
\]\n
"}
#4{5 6 "Start"}
#4{12 13 "virtual void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:JLSFriendDeclare.286331408{#4{8 9 "45118592"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
#10{#4{8 9 "67547992"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{10 11 "Initialize"}
 0.3 0.88 4 1  11 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{496 497 "\[\n
  if(marker != null)\n
\treturn;\n
\n
  Transform element = gameObject.transform;\n
\n
  while(element != null)\n
  \[\n
\tARMarker found = element.gameObject.GetComponent<ARMarker>();\n
\tif(found == null)\n
\t\telement = element.parent;\n
\telse\n
\t\[\n
\t\tmarker = found;\n
\t\tbreak;\n
\t\]\t\n
  \]\n
\n
  //When an object is instantiated at runtime it is not directly child of an ARMarker\n
  //Assert.IsNotNull(marker);\n
\n
  if(marker != null)\n
  \[\n
  \tmarker.TrackingFound += OnTrackingFound;\n
  \tmarker.TrackingLost += OnTrackingLost;\n
  \]\n
\]\n
"}
#4{10 11 "Initialize"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @86 @3 @187 @0 #7{16 0}
#7{16 1@59 }
#7{16 0}
#7{16 5@47 @35 @11 @23 @175 }
#7{16 0}
#7{16 0}
#7{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#7{16 0}
#1{44@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @136 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@112 @100 @124 @74 @0 @195 @0 @0 @0 @151 @163 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#7{16 0}
 0}
:Float.17{0 }
#14{1 }
#14{0 }
#14{1 }
}
