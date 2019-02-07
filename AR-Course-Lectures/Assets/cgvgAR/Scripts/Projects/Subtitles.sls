:ArrayOb.273{6:Dictionary.4369{32 17:JLSGlobalDeclare.286331408{:String.17{8 9 "46378072"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{256 257 "using UnityEngine;\n
using System;\n
using System.Collections.Generic;\n
using UnityEngine.UI;\n
\n
[System.Serializable]\n
public class SubtitleItem \[\n
\tpublic string name;\n
\tpublic string text;\n
\tpublic float length;\n
\]\n
\n
public enum SubtitlesMode \[\n
\tNone,\n
\tHold,\n
\tLoop\n
\]"}
}
:SLSProtectMethod.286331408{#4{8 9 "90855033"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "OnTrackingLost"}
 1.3 0.88 5.6 21  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{122 276 "\[\n
  base.OnTrackingLost(sender, args);\n
  // add specific behaviour at target lost\n
  if(text != null)\n
  \[\n
\tPause();\n
  \]\n
\n
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
 1  1 #4{164 241 "\[\n
  base.OnTrackingFound(sender, args);\n
\n
  // add specific behaviour at target found\n
  if(activateOnTrackingFound && text != null && !isPlaying)\n
  \[\n
\tPlay();\n
  \]\n
\]\n
"}
#4{15 16 "OnTrackingFound"}
#4{13 14 "override void"}
#4{28 29 "object sender,EventArgs args"}
#4{0 1 ""}
 0}
:SLSPublicMethod.286331408{#4{8 9 "52566360"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "Interact"}
 1.3 0.88 3.2 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{94 138 "\[\n
  base.Interact();\n
\n
  if(text != null)\n
  \[\n
\tif(!isPlaying)\n
\t\tPlay();\n
\telse\n
\t\tPause();\n
  \]\n
\]\n
"}
#4{8 9 "Interact"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
}
:SLSThisIcon.286331409{#4{8 9 "46352920"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{26 27 "Subtitles : ARInteractable"}
 18.2457 2.2 16.64 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{9 10 "Subtitles"}
#4{14 15 "ARInteractable"}
#4{0 13 ""}
:OrderedCltn.4369{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "46378328"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "41454512"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{4 5 "text"}
 3.2 1.88 1.6 28  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{4 5 "text"}
#4{4 5 "Text"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#10{#4{8 9 "41458912"}
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
:SLSProperty.286331392{#4{7 8 "8816712"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "isPlaying"}
 1.3 0.88 3.6 1  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{25 26 "\[\n
  protected set; get;\n
\]"}
#4{9 10 "isPlaying"}
#4{4 5 "bool"}
#4{0 1 ""}
#4{0 1 ""}
}
#5{#4{7 8 "8809264"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "ChangeSubtitle"}
 1.3 0.879999 5.6 10  16 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{338 339 "\[\n
  if(text != null)\n
  \ttext.text = subtitles[itemIdx].text;\n
\n
  float waitTime = subtitles[itemIdx].length;\n
\n
  Debug.Log(\"Setting subtitle to \" + subtitles[itemIdx].text);\n
\n
  itemIdx++;\n
\n
  if(itemIdx >= subtitles.Count)\n
  \[\n
\tif(mode == SubtitlesMode.Loop)\n
\t\[\n
\t\titemIdx = 0;\n
\t\]\n
\telse\n
\t\treturn;\n
  \]\n
\n
  Invoke(\"ChangeSubtitle\", waitTime);\n
\]\n
"}
#4{14 15 "ChangeSubtitle"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#5{#4{8 9 "90855817"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{120 402 "\[\n
  base.Start();\n
  \n
  // add specific behaviour at startup\n
  text = GetComponentInChildren<Text>(true);\n
\n
  //Play();\n
\]\n
"}
#4{5 6 "Start"}
#4{13 14 "override void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{7 8 "8811225"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Pause"}
 0.3 0.88 2 1  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{43 44 "\[\n
  isPlaying = false;\n
  CancelInvoke();\n
\]\n
"}
#4{5 6 "Pause"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
}
#6{#4{7 8 "8811224"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{4 5 "Play"}
 0.3 0.88 1.6 1  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{70 71 "\[\n
  isPlaying = true;\n
  itemIdx = 0;\n
  Invoke(\"ChangeSubtitle\",0f);\n
\]\n
"}
#4{4 5 "Play"}
#4{4 5 "void"}
#4{0 1 ""}
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
#4{13 14 "SubtitlesMode"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{18 19 "SubtitlesMode.None"}
#4{0 1 ""}
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
#5{#4{8 9 "90856600"}
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
#10{#4{8 9 "40836048"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{9 10 "subtitles"}
 2.2 1.88 3.6 10  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{9 10 "subtitles"}
#4{18 19 "List<SubtitleItem>"}
#4{0 1 ""}
#8{16 0}
#8{16 0}
#4{1 2 "S"}
@0 #4{24 25 "new List<SubtitleItem>()"}
#4{16 17 "[SerializeField]"}
}
}
:CLSCSSem.1118481{ 56  51 @47 @3 @61 @0 #8{16 0}
#8{16 3@198 @84 @69 }
#8{16 0}
#8{16 6@11 @23 @186 @123 @111 @174 }
#8{16 0}
#8{16 0}
#8{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#8{16 0}
#1{38@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @159 @0 @0 @0 }
#1{16@35 @147 @135 @99 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{328 329 "/*\t\tCopyright (c) CGVG@POLITO\t\t\t  */\n
/*\t\t  All Rights Reserved\t\t\t  */\n
/*\t\t\t\t\t\t\t  */\n
/*  THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF CGVG   */\n
/*  research group  www.polito.it/cgvg                    */\n
/*  The copyright notice above does not evidence any      */\n
/*  actual or intended publication of such source code.   */\n
"}
#8{16 0}
 0}
:Float.17{0 }
#14{1 }
#14{0 }
#14{1 }
}
