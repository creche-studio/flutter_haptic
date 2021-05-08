import Flutter
import UIKit

public class SwiftFlutterHapticPlugin: NSObject, FlutterPlugin {

    // MARK: - private properties

    private lazy var notificationFeedbackGenerator = UINotificationFeedbackGenerator()

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_haptic", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterHapticPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "performSuccessFeedback":
            notificationFeedbackGenerator.prepare()
            notificationFeedbackGenerator.notificationOccurred(.success)
        case "performFailureFeedback":
            notificationFeedbackGenerator.prepare()
            notificationFeedbackGenerator.notificationOccurred(.error)
        default:
            result(FlutterMethodNotImplemented)
            fatalError()
        }
        result(nil)
    }
}
