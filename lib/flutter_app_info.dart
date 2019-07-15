import 'dart:async';
import 'app_info.dart';
import 'info_helper.dart';

import 'package:flutter/services.dart';

class FlutterAppInfo {
  static const MethodChannel _channel = const MethodChannel('flutter_app_info');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  Future<AndroidAppInfo> get appBaseInfo async {
    return InfoHelper().appBaseInfo(_channel);
  }
}
