:ArrayOb.273{6:Dictionary.4369{16 14:SLSProtectMethod.286331408{:String.17{8 9 "65079712"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{27 28 "OnCharacterAnimationStopped"}
 1.3 0.88 10.8 31  8 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{180 181 "\[\n
  for(int i=0; i <interactiveAnimations.Length; i++)\n
  \[\n
\tinteractiveAnimations[i].AnimationStopped -= OnCharacterAnimationStopped;\n
  \]\n
\n
  SetState(AppState.MuseumSelection);\n
\n
\]\n
"}
#4{27 28 "OnCharacterAnimationStopped"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSProtectMember.286331409{#4{8 9 "43813896"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{8 9 "arCamera"}
 2.4 1.88 3.2 37  26 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{8 9 "arCamera"}
#4{6 7 "Camera"}
#4{0 1 ""}
:OrderedCltn.4369{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#5{#4{8 9 "43815216"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{10 11 "mapManager"}
 2 1.88 4 19  26 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{10 11 "mapManager"}
#4{9 10 "Transform"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#5{#4{8 9 "43814776"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{7 8 "vuforia"}
 2.6 1.88 2.8 10  26 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{7 8 "vuforia"}
#4{16 17 "VuforiaBehaviour"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#5{#4{8 9 "43813016"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{23 24 "museumDestinationCanvas"}
 0.3 1.88 9.2 10  29 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{23 24 "museumDestinationCanvas"}
#4{9 10 "Transform"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
#5{#4{8 9 "43812136"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{5 6 "state"}
 3 1.88 2 46  26 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{5 6 "state"}
#4{8 9 "AppState"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{14 15 " AppState.None"}
#4{0 1 ""}
}
:JLSGlobalDeclare.286331408{#4{8 9 "43927824"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{132 590 "using UnityEngine;\n
using System;\n
using System.Collections.Generic;\n
using UnityEngine.UI;\n
using Vuforia;\n
//using Mapbox.Unity.Map;\n
\n
\n
"}
}
#3{#4{8 9 "65080496"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "SetState"}
 1.3 0.88 3.2 19  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{307 309 "\[\n
  switch(newState)\n
  \[\n
\tcase AppState.MarkerDetection:\n
\tbreak;\n
\n
\tcase AppState.MuseumSelection:\n
\tmuseumDestinationCanvas.gameObject.GetComponent<Canvas>().enabled = true;\n
\tbreak;\n
\n
\tcase AppState.Navigation:\n
\tbreak;\n
\n
\tcase AppState.DestinationReached:\n
\tbreak;\n
\n
\tcase AppState.None:\n
\tdefault:\n
\tbreak; \n
  \]\n
\]"}
#4{8 9 "SetState"}
#4{4 5 "void"}
#4{17 18 "AppState newState"}
#4{0 1 ""}
 0}
#5{#4{8 9 "43815656"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{9 10 "mapCamera"}
 2.2 1.88 3.6 28  26 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{9 10 "mapCamera"}
#4{6 7 "Camera"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
#4{0 1 ""}
}
#3{#4{8 9 "44351240"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{607 608 "\[\n
   instance = this;\n
\n
   vuforia = FindObjectOfType<VuforiaBehaviour>();\n
   arCamera = vuforia.GetComponentInChildren<Camera>();\n
\n
   //mapManager = FindObjectOfType<AbstractMap>().transform.parent;\n
   //mapCamera = mapManager.GetComponentInChildren<Camera>();\n
\n
   museumDestinationCanvas = FindObjectOfType<MuseumListCanvas>().transform;\n
   //museumDestinationCanvas.gameObject.SetActive(false);\n
\n
  interactiveAnimations = FindObjectsOfType<ARInteractiveAnimation>();\n
  for(int i=0; i < interactiveAnimations.Length; i++)\n
  \[\n
\tinteractiveAnimations[i].AnimationStopped += OnCharacterAnimationStopped;\n
  \]\n
\]"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSThisIcon.286331409{#4{8 9 "43917144"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{31 32 "AppStateManager : MonoBehaviour"}
 17.3314 2.2 19.84 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{15 16 "AppStateManager"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
}
#5{#4{8 9 "43813456"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{21 22 "interactiveAnimations"}
 0.3 1.88 8.4 10  34 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{21 22 "interactiveAnimations"}
#4{24 25 "ARInteractiveAnimation[]"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{4 5 "null"}
#4{0 1 ""}
}
:SLSProperty.286331392{#4{8 9 "65080104"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "State"}
 1.3 0.879999 2 1  29 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{112 113 "\[\n
      set \[\n
    \tinstance.SetState(value);\n
      \] \n
    \n
      get \[\n
    \treturn instance.state;\n
      \]\n
    \]"}
#4{5 6 "State"}
#4{15 16 "static AppState"}
#4{0 1 ""}
#4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "43797768"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{151 152 "public enum AppState \[\n
\tNone,\n
\tMarkerDetection,\n
\tMuseumSelection,\n
\tNavigation,\n
\tDestinationReached\n
\]\n
\n
protected static AppStateManager instance = null;"}
}
}
:CLSCSSem.1118481{ 56  51 @137 @90 @178 @0 #6{16 0}
#6{16 7@45 @30 @110 @15 @75 @60 @151 }
#6{16 0}
#6{16 3@125 @98 @3 }
#6{16 0}
#6{16 0}
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{33@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @166 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#6{16 0}
 0}
:Float.17{0 }
#12{1 }
#12{0 }
#12{1 }
}
