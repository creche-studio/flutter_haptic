# flutter_haptic
**Flutter Plugin for calling mobile native Haptic feature**

## Requirement
**Flutter**  
flutter >= 2.0.0  
dart >=2.12.0 <3.0.0(null safety)  

**iOS**  
iOS 13.0 or higher  

**Android**  
minSdkVersion 26 or higher  
This plugin also requires to VIBRATE permission on Android devices.  
(HapticFeedback cannot use within a plugin, so we imitate that using Vibrator).

## How to use
```dart
// Haptic Feedback for Success
Haptic.onSuccess();

// Haptic Feedback for Failure
Haptic.onFailure();

// Haptic Feedback for Selection
Haptic.onSelection();
```

For more detail, please check our [example](./example).

## ref
- [UIFeedbackGenerator Class Reference](https://developer.apple.com/documentation/uikit/uifeedbackgenerator)(iOS)
- [Vibrator](https://developer.android.com/reference/kotlin/android/os/Vibrator)(Android)
