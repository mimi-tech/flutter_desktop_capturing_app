import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
    private var desktopCapturePlugin: DesktopCapturePlugin?
    override func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let flutterViewController = mainFlutterWindow?.contentViewController as? FlutterViewController {
          desktopCapturePlugin = DesktopCapturePlugin(controller: flutterViewController)
        } else {
          // Handle the case where mainFlutterWindow or its contentViewController is nil
          print("Failed to initialize DesktopCapturePlugin: mainFlutterWindow or its contentViewController is nil")
        }
        
        super.applicationDidFinishLaunching(aNotification)
      }


  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
}
