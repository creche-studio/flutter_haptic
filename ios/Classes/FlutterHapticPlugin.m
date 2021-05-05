#import "FlutterHapticPlugin.h"
#if __has_include(<flutter_haptic/flutter_haptic-Swift.h>)
#import <flutter_haptic/flutter_haptic-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_haptic-Swift.h"
#endif

@implementation FlutterHapticPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterHapticPlugin registerWithRegistrar:registrar];
}
@end
