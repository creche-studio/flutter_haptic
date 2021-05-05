
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterHaptic {
  static const MethodChannel _channel =
      const MethodChannel('flutter_haptic');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
