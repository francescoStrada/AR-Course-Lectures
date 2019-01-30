:ArrayOb.273{6:Dictionary.4369{16 7:SLSPublicMethod.286331408{:String.17{8 9 "66721264"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "IsTracked"}
 0.3 0.88 3.6 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{22 31 "\[\n
  return tracked;\n
\]\n
"}
#4{9 10 "IsTracked"}
#4{4 5 "bool"}
#4{0 1 ""}
#4{0 1 ""}
}
:JLSGlobalDeclare.286331408{#4{8 9 "45116800"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{96 97 "using UnityEngine;\n
using UnityEditor;\n
using UnityEngine.Assertions;\n
using System;\n
using Vuforia;"}
}
:SLSProtectMethod.286331408{#4{8 9 "90855033"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "OnTrackingLost"}
 1.3 0.88 5.6 21  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{159 276 "\[\n
  base.OnTrackingLost();\n
  tracked = false;\n
\n
  if(TrackingLost != null)\n
\tTrackingLost(this, EventArgs.Empty);\n
  // add specific behaviour at target lost\n
 \n
\]\n
"}
#4{14 16 "OnTrackingLost"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "90855032"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{15 16 "OnTrackingFound"}
 1.3 0.88 6 21  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{161 241 "\[\n
  base.OnTrackingFound();\n
  tracked = true;\n
\n
  if(TrackingFound != null)\n
\tTrackingFound(this, EventArgs.Empty);\n
\n
  // add specific behaviour at target found\n
\]\n
"}
#4{15 16 "OnTrackingFound"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSThisIcon.286331409{#4{8 9 "45390728"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{39 40 "ARMarker : DefaultTrackableEventHandler"}
 15.8686 2.2 24.96 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  5.12807 4.04449 0
 0  0 #4{8 9 "ARMarker"}
#4{28 29 "DefaultTrackableEventHandler"}
#4{0 13 ""}
:OrderedCltn.4369{16 2#4{51 52 "public event EventHandler<EventArgs> TrackingFound;"}
#4{50 51 "public event EventHandler<EventArgs> TrackingLost;"}
}
#8{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "45114240"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "46521792"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{7 8 "tracked"}
 2.6 1.88 2.8 11  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{7 8 "tracked"}
#4{4 5 "bool"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{5 6 "false"}
#4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @47 @15 @63 @0 #8{16 0}
#8{16 1@71 }
#8{16 0}
#8{16 2@23 @35 }
#8{16 0}
#8{16 0}
#8{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#8{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@3 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#8{16 0}
 0}
:Float.17{0 }
#12{1 }
#12{0 }
#12{1 }
}
