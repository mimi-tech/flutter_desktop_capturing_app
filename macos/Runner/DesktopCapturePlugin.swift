import Cocoa
import FlutterMacOS
import AVFoundation

class DesktopCapturePlugin: NSObject {
    private let channel: FlutterMethodChannel
    private var captureSession: AVCaptureSession?
    private var imageOutput: AVCapturePhotoOutput?
    private var captureResult: FlutterResult?

    init(controller: FlutterViewController) {
        self.channel = FlutterMethodChannel(name: "com.example.flutter_desktop_app", binaryMessenger: controller.engine.binaryMessenger)
        super.init()
        self.channel.setMethodCallHandler(self.handle)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "captureHeadshot":
            self.captureResult = result
            self.checkCameraAuthorization { authorized in
                if authorized {
                    self.setupCaptureSession()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // 2-second delay
                        self.captureHeadshot(result: result)
                    }
                } else {
                    result(FlutterError(code: "UNAUTHORIZED", message: "Camera access is not authorized", details: nil))
                }
            }
        case "captureScreenshot":
            self.captureScreenshot(result: result)
        case "stopCamera":
            self.stopCamera(result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    @available(macOS 10.15, *)
    private func requestCameraPermission(completion: @escaping (Bool) -> Void) {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
        switch status {
        case .authorized:
            completion(true)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                DispatchQueue.main.async {
                    completion(granted)
                }
            }
        case .denied, .restricted:
            completion(false)
        @unknown default:
            completion(false)
        }
    }

    private func checkCameraAuthorization(completion: @escaping (Bool) -> Void) {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            completion(true)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                DispatchQueue.main.async {
                    completion(granted)
                }
            }
        case .denied, .restricted:
            completion(false)
        @unknown default:
            completion(false)
        }
    }

    private func setupCaptureSession() {
        captureSession = AVCaptureSession()
        guard let session = captureSession else {
            print("Error: Could not create capture session.")
            return
        }

        session.sessionPreset = .photo

        // Check if a camera is available
        guard let camera = AVCaptureDevice.default(for: .video) else {
            print("Error: No camera device available.")
            return
        }

        do {
            let input = try AVCaptureDeviceInput(device: camera)
            if session.canAddInput(input) {
                session.addInput(input)
            } else {
                print("Error: Could not add camera input to session.")
             }
        } catch {
            print("Error setting up camera input: \(error.localizedDescription)")
            return
        }

        imageOutput = AVCapturePhotoOutput()
        if session.canAddOutput(imageOutput!) {
            session.addOutput(imageOutput!)
        } else {
            print("Error: Could not add photo output to session.")
        }

        session.startRunning()
        print("Capture session running: \(session.isRunning)")
    }

    @available(macOS 10.15, *)
    private func captureHeadshot(result: @escaping FlutterResult) {
        guard captureSession?.isRunning == true else {
            print("Error: Capture session is not running.")
            result(FlutterError(code: "SESSION_ERROR", message: "Capture session is not running", details: nil))
            return
        }

        let settings = AVCapturePhotoSettings()
        imageOutput?.capturePhoto(with: settings, delegate: self)
    }

@available(macOS 10.15, *)
      private func stopCamera(result: @escaping FlutterResult) {
        guard let session = captureSession else {
            result(FlutterError(code: "SESSION_ERROR", message: "Capture session not found", details: nil))
            return
        }

        session.stopRunning()
        captureSession = nil
        imageOutput = nil

        result(nil)
        print("Capture session stopped.")
    }

    private func captureScreenshot(result: FlutterResult) {
        let displayID = CGMainDisplayID()
        guard let image = CGDisplayCreateImage(displayID) else {
            result(FlutterError(code: "UNAVAILABLE", message: "Could not capture screenshot", details: nil))
            return
        }

        let bitmapRep = NSBitmapImageRep(cgImage: image)
        guard let pngData = bitmapRep.representation(using: .png, properties: [:]) else {
            result(FlutterError(code: "UNAVAILABLE", message: "Could not convert screenshot to data", details: nil))
            return
        }

        result(pngData)
    }
}

@available(macOS 10.15, *)
extension DesktopCapturePlugin: AVCapturePhotoCaptureDelegate {
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if let error = error {
            print("Error capturing photo: \(error)")
            captureResult?(FlutterError(code: "UNAVAILABLE", message: "Error capturing photo", details: nil))
            return
        }

        guard let imageData = photo.fileDataRepresentation() else {
            print("No image data found")
            captureResult?(FlutterError(code: "UNAVAILABLE", message: "No image data found", details: nil))
            return
        }

        captureResult?(imageData)
        captureResult = nil
    }
}
