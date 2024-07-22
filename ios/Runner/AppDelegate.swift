import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      //GeneratedPluginRegistrant.register(with: self)
      //return super.application(application, didFinishLaunchingWithOptions: launchOptions)
      
      let controller = window?.rootViewController as! FlutterViewController
          let channel = FlutterMethodChannel(name: "com.example.flutter_desktop_app", binaryMessenger: controller.binaryMessenger)
      
      channel.setMethodCallHandler { (call, result) in
           switch call.method {
           case "captureScreenshot":
             self.captureScreenshot(result: result)
           case "captureHeadshot":
             self.captureHeadshot(result: result)
           default:
             result(FlutterMethodNotImplemented)
           }
         }
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)

  }
    private func captureScreenshot(result: FlutterResult) {
       guard let window = UIApplication.shared.windows.first else {
         result(FlutterError(code: "UNAVAILABLE", message: "No window found", details: nil))
         return
       }
        UIGraphicsBeginImageContextWithOptions(window.bounds.size, false, UIScreen.main.scale)
           window.drawHierarchy(in: window.bounds, afterScreenUpdates: true)
           let image = UIGraphicsGetImageFromCurrentImageContext()
           UIGraphicsEndImageContext()
           
           guard let imageData = image?.pngData() else {
             result(FlutterError(code: "UNAVAILABLE", message: "Could not capture screenshot", details: nil))
             return
           }
           
           result(imageData)
         }
    private func captureHeadshot(result: FlutterResult) {
        // Implement your headshot capture logic here.
        // For simplicity, let's return a placeholder image.
        
        guard let image = UIImage(systemName: "person.crop.circle") else {
          result(FlutterError(code: "UNAVAILABLE", message: "Could not capture headshot", details: nil))
          return
        }
        
        guard let imageData = image.pngData() else {
          result(FlutterError(code: "UNAVAILABLE", message: "Could not convert headshot to data", details: nil))
          return
        }
        
        result(imageData)
      }
    }

