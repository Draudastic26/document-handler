using UnityEngine;

namespace drstc.DocumentHandler
{
    public class DocumentHandler : MonoBehaviour
    {
#if UNITY_IPHONE && !UNITY_EDITOR
        [DllImport("__Internal")]
        internal static extern bool _OpenDocument(string path);
        
        public static void OpenDocument(string path)
        {
            _OpenDocument(path);
        }
#else
        public static void OpenDocument(string path)
        {
            Application.OpenURL("file:///" + path);
        }
#endif
    }
}
