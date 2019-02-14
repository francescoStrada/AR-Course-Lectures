:ArrayOb.273{6:Dictionary.4369{16 8:JLSGlobalDeclare.286331408{:String.17{8 9 "44604416"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{118 119 "using UnityEngine;\n
using UnityEngine.Assertions;\n
using System;\n
using UnityEngine.UI;\n
using System.Collections.Generic;"}
}
:SLSProtectMethod.286331408{#4{8 9 "14539568"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{14 15 "FillMuseumList"}
 1.3 0.88 5.6 20  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{733 839 "\[\n
  Transform contentHolder = GetComponentInChildren<VerticalLayoutGroup>().transform;\n
  for(int i= 0; i < museumInventory.Museums.Count; i++)\n
  \[\n
\tGameObject museumItem = Instantiate(museumUIListElement, contentHolder);\n
\tMuseumUIListItem listItem = museumItem.GetComponent<MuseumUIListItem>();\n
\tlistItem.museumIcon.sprite = museumInventory.Museums[i].museumIcon;\n
\tlistItem.museumName.text = museumInventory.Museums[i].museumName;\n
\tlistItem.museumDistance.text = museumInventory.Museums[i].museumDistance;\n
\n
\tButton directionsButton = museumItem.GetComponentInChildren<Button>();\n
\tdirectionsButton.onClick.AddListener(() => \n
\t\t\[\n
\t\t\tgameObject.SetActive(false);\n
\n
\t\t\tif(MuseumSelected != null)\n
\t\t\t\tMuseumSelected.Invoke();\n
\t\t\]);\t\n
  \]\n
\]\n
"}
#4{14 15 "FillMuseumList"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSProtectMember.286331409{#4{8 9 "66725953"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{19 20 "museumUIListElement"}
 0.3 1.88 7.6 10  39 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{19 20 "museumUIListElement"}
#4{10 19 "GameObject"}
#4{0 1 ""}
:OrderedCltn.4369{16 0}
#7{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
#5{#4{8 9 "46607664"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  7 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{24 1409 "\[\n
  FillMuseumList();\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#6{#4{8 9 "66725952"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{15 16 "museumInventory"}
 1 1.88 6 10  36 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{15 16 "museumInventory"}
#4{15 19 "MuseumInventory"}
#4{0 1 ""}
#7{16 0}
#7{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
#5{#4{8 9 "46607665"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Start"}
 1.3 0.88 2 10  9 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{62 1724 "\[\n
  Canvas c = GetComponent<Canvas>();\n
  c.enabled = false;\n
\]\n
"}
#4{5 6 "Start"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSThisIcon.286331409{#4{8 9 "44178400"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{32 33 "MuseumListCanvas : MonoBehaviour"}
 17.1486 2.2 20.48 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  0.853816 4.04449 0
 0  0 #4{16 17 "MuseumListCanvas"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
#7{16 1#4{35 36 "public event Action MuseumSelected;"}
}
#7{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:JLSFriendDeclare.286331408{#4{8 9 "44601600"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{0 1 ""}
}
}
:CLSCSSem.1118481{ 56  51 @77 @3 @92 @0 #7{16 0}
#7{16 2@50 @23 }
#7{16 0}
#7{16 3@38 @65 @11 }
#7{16 0}
#7{16 0}
#7{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#7{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#7{16 0}
 0}
:Float.17{0 }
#11{1 }
#11{0 }
#11{1 }
}
