:ArrayOb.273{6:Dictionary.4369{16 14:SLSPublicMethod.286331408{:String.17{7 8 "8811224"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{4 5 "Play"}
 1.3 0.88 1.6 1  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{214 215 "\[\n
  base.Play();\n
\n
  if(canvas != null)\n
  \[\n
\tScreen.orientation = ScreenOrientation.LandscapeLeft;\n
\tcanvas.enabled = true;\n
  \]\n
\t\n
  if(videoPlayer != null)\n
  \[\n
\tif(!videoPlayer.isPlaying)\n
\t\tvideoPlayer.Play();\n
  \]\n
\]\n
"}
#4{4 5 "Play"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
}
:SLSProtectMethod.286331408{#4{8 9 "90856600"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "OnDestroy"}
 1.3 0.88 3.6 10  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{24 100 "\[\n
  base.OnDestroy();\n
\]\n
"}
#4{9 10 "OnDestroy"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSProtectMember.286331409{#4{8 9 "90463864"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{11 12 "videoPlayer"}
 1.8 1.88 4.4 10  38 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{11 12 "videoPlayer"}
#4{11 12 "VideoPlayer"}
#4{0 1 ""}
:OrderedCltn.4369{16 0}
#7{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
:JLSGlobalDeclare.286331408{#4{8 9 "51973656"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{72 73 "using UnityEngine;\n
using Vuforia;\n
using UnityEngine.Video;\n
using System;"}
}
:JLSFriendDeclare.286331408{#4{8 9 "91002992"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
#5{#4{8 9 "90855817"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{225 402 "\[\n
  base.Start();\n
  videoPlayer = GetComponentInChildren<VideoPlayer>();\n
  if(videoPlayer != null)\n
  \[\n
\tvideoPlayer.isLooping = true;\n
  \]\n
\t\n
  canvas = GetComponent<Canvas>();  \n
  if(canvas != null)\n
\tcanvas.enabled = false;\n
\]\n
"}
#4{5 6 "Start"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#5{#4{8 9 "41750728"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{6 7 "Update"}
 1.3 0.88 2.4 12  15 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{47 48 "\[\n
  if(Input.GetKeyDown(KeyCode.P))\n
\tPlay();\n
\]\n
"}
#4{6 7 "Update"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#5{#4{8 9 "90855033"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "OnTrackingLost"}
 1.3 0.88 5.6 21  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{99 276 "\[\n
  base.OnTrackingLost(sender, args);\n
 \n
  if(videoPlayer != null)\n
  \[\n
\tvideoPlayer.Pause();\n
  \]\n
\]\n
"}
#4{14 16 "OnTrackingLost"}
#4{13 14 "override void"}
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
 1  1 #4{125 241 "\[\n
  base.OnTrackingFound(sender, args);\n
\n
  if(activateOnTrackingFound && videoPlayer != null)\n
  \[\n
\tvideoPlayer.Play();\n
  \]\n
\]\n
"}
#4{15 16 "OnTrackingFound"}
#4{13 14 "override void"}
#4{28 29 "object sender,EventArgs args"}
#4{0 1 ""}
 0}
:SLSThisIcon.286331409{#4{8 9 "52075656"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{35 36 "ARInteractiveVideo : ARInteractable"}
 16.6 2.2 22.4 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{18 19 "ARInteractiveVideo"}
#4{14 29 "ARInteractable"}
#4{0 13 ""}
#7{16 0}
#7{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
#5{#4{8 9 "90855818"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{20 402 "\[\n
  base.Awake();\n
\]\n
"}
#4{5 6 "Awake"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#3{#4{7 8 "8811225"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Pause"}
 1.3 0.88 2 1  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{211 212 "\[\n
  base.Pause();\n
\n
  if(canvas != null)\n
  \[\n
\tScreen.orientation = ScreenOrientation.Portrait;\n
\tcanvas.enabled = false;\n
  \]\n
\n
  if(videoPlayer != null)\n
  \[\n
\tif(!videoPlayer.isPlaying)\n
\t\tvideoPlayer.Pause();\n
  \]\n
\]\n
"}
#4{5 6 "Pause"}
#4{13 14 "override void"}
#4{0 9 ""}
#4{0 1 ""}
}
#6{#4{8 9 "41919592"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{6 7 "canvas"}
 2.8 1.88 2.4 28  38 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{6 7 "canvas"}
#4{6 7 "Canvas"}
#4{0 1 ""}
#7{16 0}
#7{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
#3{#4{8 9 "52566360"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "Interact"}
 1.3 0.88 3.2 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{136 137 "\[\n
  base.Interact();\n
  if(videoPlayer != null)\n
  \[\n
\tif(!videoPlayer.isPlaying)\n
\t\tvideoPlayer.Play();\n
\telse\n
\t\tvideoPlayer.Pause();\n
  \]\n
\]\n
"}
#4{8 9 "Interact"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @106 @42 @50 @0 #7{16 0}
#7{16 2@27 @144 }
#7{16 0}
#7{16 6@58 @94 @82 @15 @120 @70 }
#7{16 0}
#7{16 0}
#7{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#7{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@159 @3 @132 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#7{16 0}
 0}
:Float.17{0 }
#12{1 }
#12{0 }
#12{1 }
}
