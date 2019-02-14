:ArrayOb.273{6:Dictionary.4369{16 16:JLSGlobalDeclare.286331408{:String.17{8 9 "57657160"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{264 265 "using UnityEngine;\n
using System;\n
using System.Collections.Generic;\n
using UnityEngine.UI;\n
\n
[System.Serializable]\n
public class SlideshowImageItem \[\n
\tpublic string name;\n
\tpublic Sprite sprite;\n
\tpublic float length;\n
\]\n
\n
public enum SlideshowMode \[\n
\tNone,\n
\tHold,\n
\tLoop\n
\]"}
}
:SLSPublicMethod.286331408{#4{7 8 "8811224"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{4 5 "Play"}
 1.3 0.88 1.6 1  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{184 185 "\[\n
  base.Play();\n
\n
  if(canvas != null)\n
\tcanvas.enabled = true;\n
\n
  itemIdx = 0;\n
  Invoke(\"ChangeImage\",0f);\n
\n
\n
  if(audioSource != null && backgroundClip != null)\n
\taudioSource.Play();\n
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
:SLSThisIcon.286331409{#4{8 9 "57222176"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{26 27 "Slideshow : ARInteractable"}
 18.2457 2.2 16.64 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{9 10 "Slideshow"}
#4{14 15 "ARInteractable"}
#4{0 13 ""}
:OrderedCltn.4369{16 0}
#8{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
#6{#4{7 8 "8809264"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{11 12 "ChangeImage"}
 1.3 0.879999 4.4 10  16 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{365 366 "\[\n
  if(slideshowImage != null)\n
  \tslideshowImage.sprite = slideshowImages[itemIdx].sprite;\n
\n
  float waitTime = slideshowImages[itemIdx].length;\n
\n
  Debug.Log(\"Setting sprite at index \" + itemIdx);\n
\n
  itemIdx++;\n
\n
  if(itemIdx >= slideshowImages.Count)\n
  \[\n
\tif(mode == SlideshowMode.Loop)\n
\t\[\n
\t\titemIdx = 0;\n
\t\]\n
\telse\n
\t\treturn;\n
  \]\n
\n
  Invoke(\"ChangeImage\", waitTime);\n
\]\n
"}
#4{11 15 "ChangeImage"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "90855817"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{269 402 "\[\n
  base.Start();\n
  \n
  canvas = GetComponent<Canvas>();  \n
  if(canvas != null)\n
\tcanvas.enabled = false;\n
\n
  audioSource = GetComponentInChildren<AudioSource>(true);\n
  if(audioSource != null && backgroundClip != null)\n
\taudioSource.clip = backgroundClip;\n
  \n
  //Play();\n
\]\n
"}
#4{5 6 "Start"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSProtectMember.286331409{#4{8 9 "41458912"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{7 8 "itemIdx"}
 2.6 1.88 2.8 19  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{7 8 "itemIdx"}
#4{3 4 "int"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{1 2 "0"}
#4{0 1 ""}
}
#9{#4{8 9 "40836049"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{14 15 "backgroundClip"}
 1.2 1.88 5.6 37  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{14 16 "backgroundClip"}
#4{9 25 "AudioClip"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{0 31 ""}
#4{16 17 "[SerializeField]"}
}
#9{#4{8 9 "40836048"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{15 16 "slideshowImages"}
 1 1.88 6 10  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{15 16 "slideshowImages"}
#4{24 25 "List<SlideshowImageItem>"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{30 31 "new List<SlideshowImageItem>()"}
#4{16 17 "[SerializeField]"}
}
#9{#4{8 9 "57846552"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{11 12 "audioSource"}
 1.8 1.88 4.4 37  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{11 12 "audioSource"}
#4{11 12 "AudioSource"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#6{#4{8 9 "90855818"}
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
#5{#4{7 8 "8811225"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Pause"}
 1.3 0.88 2 1  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{163 164 "\[\n
  base.Pause();\n
\n
  CancelInvoke();\n
  \n
  if(canvas != null)\n
\tcanvas.enabled = false;\n
\n
  if(audioSource != null && backgroundClip != null)\n
\taudioSource.Pause();\n
\]\n
"}
#4{5 6 "Pause"}
#4{13 14 "override void"}
#4{0 9 ""}
#4{0 1 ""}
}
#9{#4{8 9 "41454512"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{14 15 "slideshowImage"}
 1.2 1.88 5.6 28  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{14 15 "slideshowImage"}
#4{5 6 "Image"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
#9{#4{8 9 "41919592"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{6 7 "canvas"}
 2.8 1.88 2.4 28  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{6 7 "canvas"}
#4{6 7 "Canvas"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
:SLSPublicMember.286331409{#4{8 9 "41459352"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{4 5 "mode"}
 1.3 1.88 1.6 1  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "mode"}
#4{13 14 "SlideshowMode"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{18 19 "SlideshowMode.None"}
#4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "57656136"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @35 @3 @202 @0 #8{16 0}
#8{16 6@103 @73 @157 @118 @88 @172 }
#8{16 0}
#8{16 4@61 @133 @23 @49 }
#8{16 0}
#8{16 0}
#8{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#8{16 0}
#1{44@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @187 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @11 @145 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#8{16 0}
 0}
:Float.17{0 }
#13{1 }
#13{0 }
#13{1 }
}
