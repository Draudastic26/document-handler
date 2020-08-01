# DocumentHandler

Open a document (e.g. PDF) with a corresponding native app.

Since ``Application.OpenURL(...path)`` is not working (anymore?) to open local files on iOS, I searched the internet for another solution (see credits). I found usable code and want to make it more accessible.

## How to install

Just add the plugin via Package Manager with the git url:  

```
https://github.com/Draudastic26/document-handler.git#upm
```

## Usage

```csharp
using drstc.DocumentHandler;
...
DocumentHandler.OpenDocument(somePath);
```

## Notes

I just tested this on iOS with a PDF file. Please let me know if you tested this with other document types.

## Contribution

Feel free to create a pull request or an issue!

## Credits

martejpad post in this thread: [https://answers.unity.com/questions/1337996/ios-open-docx-file-from-applicationpersistentdata.html](https://answers.unity.com/questions/1337996/ios-open-docx-file-from-applicationpersistentdata.html)

Unity 2019.4.3f
