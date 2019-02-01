/* File ScreenCapture C# implementation of class ScreenCapture */



// global declaration start


using UnityEngine;
using UnityEngine.Assertions;
using System;
using UnityEngine.UI;
using Vuforia;
using System.IO;
using System.Collections;

// global declaration end

class ScreenCapture : MonoBehaviour
{
// class declaration start
protected const string MEDIA_STORE_IMAGE_MEDIA = "android.provider.MediaStore$Images$Media";
// class declaration end


    protected static ScreenCapture instance;
    protected AndroidJavaObject activity;
    [SerializeField]
    protected string basePictureName;
    [SerializeField]
    protected string baseFolderName;


    protected void Awake()
    {
      instance = this;
    }


    protected IEnumerator CaptureCoroutine(int width, int height)
    {
      yield return new WaitForEndOfFrame();
      Texture2D tex = new Texture2D(width, height);
      tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);
      tex.Apply();
    
      yield return tex;
      SaveImage(tex);
      //Debug.Log("Picture has been saved at:\n" + path);
    }


    protected void SaveImage(Texture2D tex)
    {
      string imageName = basePictureName + "_" +DateTime.Now.ToString("MM_dd_yyyy_HH:mm:ss");
      string path = "";
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
    	path = SaveImageToGallery(tex, imageName, "AR design picture");	
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
    	path = SaveImageToDisk(tex, imageName);
      }
    
      Debug.Log("Saved image " + imageName + " @" + path);
    }


    protected AndroidJavaObject Activity
    {
      get
      {
    	if (activity == null)
            {
    		AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
                	activity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity");
            }
            return activity;
      }
    }


    protected AndroidJavaObject Texture2DToAndroidBitmap(Texture2D texture)
    {
      byte[] encodedTexture = texture.EncodeToPNG();
      using (AndroidJavaClass bitmapFactory = new AndroidJavaClass("android.graphics.BitmapFactory"))
        {
            return bitmapFactory.CallStatic<AndroidJavaObject>("decodeByteArray", encodedTexture, 0, encodedTexture.Length);
        }
    }


    protected string SaveImageToGallery(Texture2D texture, string title, string description)
    {
      using (AndroidJavaClass mediaClass = new AndroidJavaClass(MEDIA_STORE_IMAGE_MEDIA))
      {
    	using (AndroidJavaObject contentResolver = Activity.Call<AndroidJavaObject>("getContentResolver"))
            {
    		AndroidJavaObject image = Texture2DToAndroidBitmap(texture);
    		return mediaClass.CallStatic<string>("insertImage", contentResolver, image, title, description);
            }
        }
    }


    protected string SaveImageToDisk(Texture2D texture, string title)
    {
      string folderPath = Path.Combine(Application.dataPath,"ScreenShots");
      string filePath = Path.Combine(folderPath,title);
      return filePath;
    }




    public static ScreenCapture Instance
    {
      get{return instance;}
    }


    public void TakeCapture()
    {
      StartCoroutine(CaptureCoroutine(Screen.width, Screen.height));
    
      return;
      //USING PLUGIN
      string imageName = basePictureName + "_" +DateTime.Now.ToString("MM_dd_yyyy_HH:mm:ss");
      if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer)
      {
    	NativeToolkit.SaveScreenshot(imageName, baseFolderName, "jpeg");
      }
      else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
      {
    	
      }
    }


}
