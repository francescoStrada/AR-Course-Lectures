:ArrayOb.273{6:Dictionary.4369{16 10:SLSProtectMember.286331409{:String.17{8 9 "67572257"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{24 25 "deactivateOnTrackingLost"}
 0.299999 1.88 9.6 19  39 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{24 25 "deactivateOnTrackingLost"}
#4{4 11 "bool"}
#4{0 1 ""}
:OrderedCltn.4369{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
#3{#4{8 9 "67572256"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{12 13 "goToActivate"}
 1.6 1.88 4.8 10  39 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{12 13 "goToActivate"}
#4{10 11 "GameObject"}
#4{0 1 ""}
#5{16 0}
#5{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
:SLSProtectMethod.286331408{#4{8 9 "90856600"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "OnDestroy"}
 1.3 0.88 3.6 10  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{63 100 "\[\n
  base.OnDestroy();\n
  // add specific behaviour at destroy\n
\]\n
"}
#4{9 10 "OnDestroy"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSThisIcon.286331409{#4{8 9 "67810456"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{39 40 "ARInteractiveGODisplay : ARInteractable"}
 15.8686 2.2 24.96 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{22 23 "ARInteractiveGODisplay"}
#4{14 15 "ARInteractable"}
#4{0 13 ""}
#5{16 0}
#5{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
#6{#4{8 9 "90855817"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{79 402 "\[\n
  base.Start();\n
  if(goToActivate != null)\n
\tgoToActivate.SetActive(false);\n
\]\n
"}
#4{5 6 "Start"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "90855033"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "OnTrackingLost"}
 1.3 0.88 5.6 21  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{209 276 "\[\n
  base.OnTrackingLost(sender, args);\n
  // add specific behaviour at target lost\n
 if((activateOnTrackingFound || deactivateOnTrackingLost) && goToActivate != null)\n
  \[\n
\tgoToActivate.SetActive(false);\n
  \]\n
 \n
\]\n
"}
#4{14 16 "OnTrackingLost"}
#4{13 14 "override void"}
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
 1  1 #4{180 241 "\[\n
  base.OnTrackingFound(sender, args);\n
\n
  // add specific behaviour at target found\n
  if(activateOnTrackingFound && goToActivate != null)\n
  \[\n
\tgoToActivate.SetActive(true);\n
  \]\n
\]\n
"}
#4{15 16 "OnTrackingFound"}
#4{13 14 "override void"}
#4{28 29 "object sender,EventArgs args"}
#4{0 1 ""}
 0}
:JLSFriendDeclare.286331408{#4{8 9 "66525552"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
:JLSGlobalDeclare.286331408{#4{8 9 "66525040"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{47 48 "using UnityEngine;\n
using Vuforia;\n
using System;"}
}
:SLSPublicMethod.286331408{#4{8 9 "52566360"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "Interact"}
 1.3 0.88 3.2 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{141 183 "\[\n
  base.Interact();\n
\n
  if(goToActivate != null)\n
  \[\n
\tbool isActive = goToActivate.activeSelf;\n
\tgoToActivate.SetActive(!isActive);\t\n
  \]\n
  \n
\]\n
"}
#4{8 9 "Interact"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @45 @103 @95 @0 #5{16 0}
#5{16 2@18 @3 }
#5{16 0}
#5{16 4@59 @33 @71 @83 }
#5{16 0}
#5{16 0}
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#5{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@111 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#5{16 0}
 0}
:Float.17{0 }
#12{1 }
#12{0 }
#12{1 }
}
