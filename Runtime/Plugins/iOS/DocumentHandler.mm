 // Credits: https://answers.unity.com/questions/1337996/ios-open-docx-file-from-applicationpersistentdata.html
 
 #import <Foundation/Foundation.h>
 #import <UIKit/UIKit.h>
 
 
 @interface DocumentHandler : NSObject <UIDocumentInteractionControllerDelegate>
 {
     NSURL * fileURL;
 }
 
 - (id)initWithURL:(NSURL*)unityURL;
 
 - (void)UpdateURL:(NSURL*)unityURL;
 
 - (bool)OpenDocument;
 
 - (UIViewController *) documentInteractionControllerViewControllerForPreview: (UIDocumentInteractionController *) controller;
 
 @end

 
 @implementation DocumentHandler
 
 - (id)initWithURL:(NSURL*)unityURL
 {
     self = [super init];
     fileURL = unityURL;
     return self;
 }
 
 - (void)UpdateURL:(NSURL*)unityURL {
     fileURL = unityURL;
 }
 
 - (bool)OpenDocument {
     
     UIDocumentInteractionController *interactionController =
     [UIDocumentInteractionController interactionControllerWithURL: fileURL];
     
     // Configure Document Interaction Controller
     [interactionController setDelegate:self];
     
     [interactionController presentPreviewAnimated:YES];
     
     return true;
 }
 
 - (UIViewController *) documentInteractionControllerViewControllerForPreview: (UIDocumentInteractionController *) controller {
     return UnityGetGLViewController();
 }
 
 @end
 
 
 static DocumentHandler* docHandler = nil;
 
 // Converts C style string to NSString
 NSString* CreateNSString (const char* string)
 {
     if (string)
         return [NSString stringWithUTF8String: string];
     else
         return [NSString stringWithUTF8String: ""];
 }
 
 
 extern "C" {
     
     bool _OpenDocument (const char* path)
     {
         // Convert path to URL
         NSString * stringPath = CreateNSString(path);
         
         NSURL *unityURL = [NSURL fileURLWithPath:stringPath];
         
         if (docHandler == nil)
             docHandler = [[DocumentHandler alloc] initWithURL:unityURL];
         
         else
             [docHandler UpdateURL:unityURL];
             
         [docHandler OpenDocument];
         
         return true;
     }
 }
