# BikeLoca

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## API Keys
### GoogleMapsApiKey ANDROID
Add a file api-keys.xml on ./android/app/src/main/res/values/api-keys.xml and add a string resource named GoogleMapsKey
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="GoogleMapsKey">
        YOUR_KEY
    </string>
</resources>
```
### GoogleMapsApiKey IOS
Add a file Keys.xcconfig on ./ios/flutter/Keys.xcconfig with the folowing
```
GOOGLE_MAPS_API_KEY = YOUR_KEY;
```
Add to Runner on xcode

### AddServiceFiles
**/android/app/google-services.json
**/ios/Runner/GoogleService-Info.plist
