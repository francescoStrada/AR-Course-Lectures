:ArrayOb.273{6:Dictionary.4369{16 16:JLSFriendDeclare.286331408{:String.17{8 9 "66521712"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{17 18 "Class Declaration"}
 0.299999 0.88 6.8 33  5 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{92 140 "protected const string MEDIA_STORE_IMAGE_MEDIA = \"android.provider.MediaStore$Images$Media\";"}
}
:SLSThisIcon.286331409{#4{8 9 "67816528"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  52 45 0.4 0 0 #4{29 30 "ScreenCapture : MonoBehaviour"}
 17.6971 2.2 18.56 4  0 #4{0 1 ""}
#4{0 1 ""}
@0  38 5 1
 0  0 #4{13 14 "ScreenCapture"}
#4{13 14 "MonoBehaviour"}
#4{0 13 ""}
:OrderedCltn.4369{16 0}
#6{16 0}
#4{0 2 ""}
@0 #4{0 1 ""}
}
:SLSProtectMember.286331409{#4{8 9 "46714584"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{15 16 "basePictureName"}
 1 1.88 6 28  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{15 16 "basePictureName"}
#4{6 7 "string"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
#7{#4{8 9 "68271560"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{8 9 "activity"}
 2.4 1.88 3.2 19  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{8 9 "activity"}
#4{17 18 "AndroidJavaObject"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
:SLSProtectProperty.286331392{#4{8 9 "67206176"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "Activity"}
 1.3 0.88 3.2 29  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{259 260 "\[\n
  get\n
  \[\n
\tif (activity == null)\n
        \[\n
\t\tAndroidJavaClass unityPlayer = new AndroidJavaClass(\"com.unity3d.player.UnityPlayer\");\n
            \tactivity = unityPlayer.GetStatic<AndroidJavaObject>(\"currentActivity\");\n
        \]\n
        return activity;\n
  \]\n
\]"}
#4{8 9 "Activity"}
#4{17 18 "AndroidJavaObject"}
#4{0 1 ""}
#4{0 1 ""}
 0}
:SLSProtectMethod.286331408{#4{8 9 "67204216"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{16 17 "CaptureCoroutine"}
 1.3 0.88 6.4 10  13 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{255 256 "\[\n
  yield return new WaitForEndOfFrame();\n
  Texture2D tex = new Texture2D(width, height);\n
  tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);\n
  tex.Apply();\n
\n
  yield return tex;\n
  SaveImage(tex);\n
  //Debug.Log(\"Picture has been saved at:\\n\" + path);\n
\]\n
"}
#4{16 17 "CaptureCoroutine"}
#4{11 12 "IEnumerator"}
#4{21 22 "int width, int height"}
#4{0 1 ""}
 0}
#7{#4{8 9 "67252016"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{8 9 "instance"}
 2.4 1.88 3.2 10  40 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{8 9 "instance"}
#4{20 26 "static ScreenCapture"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{0 1 ""}
}
:SLSPublicMethod.286331408{#4{8 9 "67203824"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{11 12 "TakeCapture"}
 0.3 0.88 4.4 1  12 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{501 502 "\[\n
  StartCoroutine(CaptureCoroutine(Screen.width, Screen.height));\n
\n
  return;\n
  //USING PLUGIN\n
  string imageName = basePictureName + \"_\" +DateTime.Now.ToString(\"MM_dd_yyyy_HH:mm:ss\");\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
\tNativeToolkit.SaveScreenshot(imageName, baseFolderName, \"jpeg\");\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
\t\n
  \]\n
\]\n
"}
#4{11 12 "TakeCapture"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
}
#9{#4{8 9 "67992417"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{15 16 "SaveImageToDisk"}
 1.3 0.879999 6 29  16 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{147 383 "\[\n
  string folderPath = Path.Combine(Application.dataPath,\"ScreenShots\");\n
  string filePath = Path.Combine(folderPath,title);\n
  return filePath;\n
\]\n
"}
#4{15 19 "SaveImageToDisk"}
#4{6 7 "string"}
#4{31 52 "Texture2D texture, string title"}
#4{0 1 ""}
 0}
#9{#4{8 9 "67992416"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "SaveImageToGallery"}
 1.3 0.879999 7.2 29  17 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{382 383 "\[\n
  using (AndroidJavaClass mediaClass = new AndroidJavaClass(MEDIA_STORE_IMAGE_MEDIA))\n
  \[\n
\tusing (AndroidJavaObject contentResolver = Activity.Call<AndroidJavaObject>(\"getContentResolver\"))\n
        \[\n
\t\tAndroidJavaObject image = Texture2DToAndroidBitmap(texture);\n
\t\treturn mediaClass.CallStatic<string>(\"insertImage\", contentResolver, image, title, description);\n
        \]\n
    \]\n
\]\n
"}
#4{18 19 "SaveImageToGallery"}
#4{6 7 "string"}
#4{51 52 "Texture2D texture, string title, string description"}
#4{0 1 ""}
 0}
:SLSProperty.286331392{#4{8 9 "67994376"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{8 9 "Instance"}
 1.3 0.88 3.2 1  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{27 28 "\[\n
  get\[return instance;\]\n
\]"}
#4{8 9 "Instance"}
#4{20 26 "static ScreenCapture"}
#4{0 1 ""}
#4{0 1 ""}
}
#9{#4{8 9 "67204608"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{9 10 "SaveImage"}
 1.3 0.88 3.6 27  14 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{523 524 "\[\n
  string imageName = basePictureName + \"_\" +DateTime.Now.ToString(\"MM_dd_yyyy_HH:mm:ss\");\n
  string path = \"\";\n
  if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)\n
  \[\n
\tpath = SaveImageToGallery(tex, imageName, \"AR design picture\");\t\n
  \]\n
  else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)\n
  \[\n
\tpath = SaveImageToDisk(tex, imageName);\n
  \]\n
\n
  Debug.Log(\"Saved image \" + imageName + \" @\" + path);\n
\]\n
"}
#4{9 10 "SaveImage"}
#4{4 5 "void"}
#4{13 14 "Texture2D tex"}
#4{0 1 ""}
 0}
:JLSGlobalDeclare.286331408{#4{8 9 "66520176"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{18 19 "Global Declaration"}
 0.299999 0.88 7.2 33  3 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 0  0 #4{142 143 "using UnityEngine;\n
using UnityEngine.Assertions;\n
using System;\n
using UnityEngine.UI;\n
using Vuforia;\n
using System.IO;\n
using System.Collections;"}
}
#9{#4{8 9 "46629952"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{5 6 "Awake"}
 1.3 0.88 2 10  6 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{23 320 "\[\n
  instance = this;\n
\]\n
"}
#4{5 6 "Awake"}
#4{4 5 "void"}
#4{0 1 ""}
#4{0 1 ""}
 0}
#9{#4{8 9 "67991240"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 1 0.4 0 0 #4{24 25 "Texture2DToAndroidBitmap"}
 1.3 0.879999 9.6 29  18 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{284 285 "\[\n
  byte[] encodedTexture = texture.EncodeToPNG();\n
  using (AndroidJavaClass bitmapFactory = new AndroidJavaClass(\"android.graphics.BitmapFactory\"))\n
    \[\n
        return bitmapFactory.CallStatic<AndroidJavaObject>(\"decodeByteArray\", encodedTexture, 0, encodedTexture.Length);\n
    \]\n
\]\n
"}
#4{24 25 "Texture2DToAndroidBitmap"}
#4{17 18 "AndroidJavaObject"}
#4{17 18 "Texture2D texture"}
#4{0 1 ""}
 0}
#7{#4{8 9 "46714585"}
#1{2@0 @0 }
#1{2@0 @0 }
@0  8 2 0.4 0 0 #4{14 15 "baseFolderName"}
 1.2 1.88 5.6 28  37 #4{0 1 ""}
#4{0 1 ""}
@0  0 0 1
 1  1 #4{14 16 "baseFolderName"}
#4{6 7 "string"}
#4{0 1 ""}
#6{16 0}
#6{16 0}
#4{1 2 "S"}
@0 #4{0 1 ""}
#4{16 17 "[SerializeField]"}
}
}
:CLSCSSem.1118481{ 56  51 @11 @154 @3 @0 #6{16 0}
#6{16 4@79 @40 @25 @186 }
#6{16 0}
#6{16 7@162 @67 @142 @55 @174 @118 @106 }
#6{16 0}
#6{16 0}
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#6{16 0}
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@130 @0 @0 @0 @0 @0 @94 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#1{16@0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 @0 }
#4{0 1 ""}
#6{16 0}
 0}
:Float.17{0 }
#14{1 }
#14{0 }
#14{1 }
}
