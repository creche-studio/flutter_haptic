import 'dart:async';

import 'package:flutter/services.dart';

class Haptic {
  static const MethodChannel _channel = const MethodChannel('flutter_haptic');

  static Future<void> onSuccess() async {
    return _channel.invokeMethod('performSuccessFeedback');
  }

  static Future<void> onFailure() async {
    return _channel.invokeMethod('performFailureFeedback');
  }

  static Future<void> onSelection() async {
    return HapticFeedback.selectionClick();
  }
}
