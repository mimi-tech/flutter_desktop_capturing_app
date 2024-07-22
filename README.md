# Flutter Desktop App

---

A Flutter desktop application with functionalities for capturing screenshots and headshots using native Swift code.

<table>
<tr>
<td>
<img src="https://github.com/user-attachments/assets/8809e00f-3c4a-40d0-b323-8323740f03fa" >

</td>

<td>
<img src="https://github.com/user-attachments/assets/0b9cf442-8943-4b0e-8ffc-9b607db90112">
</td>

</tr>
</table>

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
    - [Clone the Repository](#clone-the-repository)
    - [Open Project in Xcode](#open-project-in-xcode)
    - [Update Deployment Target](#update-deployment-target)
    - [Update Podfile](#update-podfile)
    - [Grant Camera Access](#grant-camera-access)
    - [Run the App](#run-the-app)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The `flutter_desktop_app` is a desktop application built using Flutter. It leverages native Swift code to capture screenshots and headshots. The app is structured using the Bloc architecture for state management, providing a clean and maintainable codebase.

## Features

- Capture screenshots of the entire screen.
- Capture headshots using the device's camera.

## Technologies Used

- Flutter
- Bloc State Management
- freezed
- Swift (for native code)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Flutter installed on your machine
- Xcode (for macOS development)
- Cocoapods (for managing native dependencies)

## Setup

Follow these steps to set up and run the project:

### Clone the Repository

```bash
git clone https://github.com/mimi-tech/flutter_desktop_capturing_app
cd flutter_desktop_app
flutter pub get
open terminal run flutter pub run build_runner build --delete-conflicting-outputs


```

### Open Project in Xcode

Open the macOS project workspace with Xcode using the following command:

```bash
open macos/Runner.xcworkspace
```

### Update Deployment Target

1. In Xcode, navigate to the `Runner` project.
2. Select the `Runner` target.
3. Change the **Minimum Deployment** target to `10.15` to accommodate AVFoundation import.

### Update Podfile

1. Open the `macos/Podfile` file.
2. Change the platform line from:

    ```ruby
    platform :osx, '10.13'
    ```

   to:

    ```ruby
    platform :osx, '10.15'
    ```

3. Run `pod install` to update the CocoaPods dependencies.

### Grant Camera Access

The app automatically request for camera permission but if your IDE (IntelliJ or VSCode) ensure that your application has the necessary permissions to access the camera:

1. Open **System Preferences**.
2. Go to **Security & Privacy**.
3. Navigate to the **Privacy** tab.
4. Select **Camera**.
5. Ensure your IDE (IntelliJ or VSCode) and the application have permission to access the camera.

### Run the App

Navigate back to the root of the Flutter project and run the app:

```bash
flutter run
```

## Usage

Once the application is running, you can use the provided UI to capture screenshots and headshots.

## Project Structure

- `lib/`: Contains the Dart source code, including the Bloc implementation.
- `macos/`: Contains the macOS-specific code, including the Swift native code for capturing images.

## Troubleshooting

- **MissingPluginException**: Ensure that the method channels are correctly set up and that the native code is correctly registered.
- **Camera Access Denied**: Verify that the application and IDE have camera permissions in **System Preferences**.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

