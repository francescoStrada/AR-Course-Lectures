:ArrayOb.273{6:Dictionary.4369{16 11:SLSThisIcon.286331409{:String.17{8 9 "45173704"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{30 31 "ARInteractable : MonoBehaviour"}
 17.5143 2.2 19.2 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{14 15 "ARInteractable"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
:OrderedCltn.4369{16 0}
#5{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:SLSProtectMethod.286331408{#4{8 9 "45409096"}
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
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
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
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{0 1 ""}
}
:SLSPublicMethod.286331408{#4{8 9 "45174256"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "OnTap"}
 1.3 0.88 2 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{38 49 "\[\n
  // implement specific behaviour\n
\]\n
"}
#4{5 6 "OnTap"}
#4{12 13 "virtual void"}
#4{0 1 ""}
#4{0 1 ""}
}
#6{#4{8 9 "90855033"}
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
#6{#4{8 9 "90855032"}
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
:JLSGlobalDeclare.286331408{#4{8 9 "45117824"}
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
:JLSFriendDeclare.286331408{#4{8 9 "45118592"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
#6{#4{8 9 "16953416"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "OnDestroy"}
 1.3 0.879999 3.6 10  17 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{88 89 "\[\n
  marker.TrackingFound -= OnTrackingFound;\n
  marker.TrackingLost -= OnTrackingLost;\n
\]\n
"}
#4{9 10 "OnDestroy"}
#4{12 13 "virtual void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "45208128"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{347 390 "\[\n
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
  Assert.IsNotNull(marker);\n
\n
  marker.TrackingFound += OnTrackingFound;\n
  marker.TrackingLost += OnTrackingLost;\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
}
:CLSCSSem.1118481{ 56  51 @3 @95 @103 @0 #5{16 0}
#5{16 1@29 }
#5{16 0}
#5{16 5@123 @111 @71 @83 @17 }
#5{16 0}
#5{16 0}
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#5{16 0}
#1{44@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @44 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@59 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#5{16 0}
 0}
:Float.17{0 }
#13{1 }
#13{0 }
#13{1 }
}
