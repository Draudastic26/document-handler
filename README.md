# DocumentHandler

Open a document (e.g. PDF) with a corresponding native app.

Since ``Application.OpenURL(...path)`` is not working (anymore?) to open local files on iOS, I searched the internet (see credits) for another solution. I found usable code and want to make it more accessible.

## How to install

Just add the package in the Package via git:  

```
https://github.com/Draudastic26/document-handler.git#upm
```

## Usage

Just call:  

```csharp
DocumentHandler.OpenDocument(...somePath);
```

## Contribution

Feel free to create a pull request!

## Credits

Code found here: [https://answers.unity.com/questions/1337996/ios-open-docx-file-from-applicationpersistentdata.html](https://answers.unity.com/questions/1337996/ios-open-docx-file-from-applicationpersistentdata.html)


Unity 2019.4.3f
