import 'package:flutter/services.dart';
import 'package:flutter_app_info/app_info.dart';

class InfoHelper {
  AppBaseInfo _appBaseInfo;
  AndroidAppInfo _androidAppInfo;
  IosAppInfo _iosAppInfo;

  Map<String, dynamic> _cacheMetaData;

  Future<AppBaseInfo> appBaseInfo(MethodChannel channel) async {
    _appBaseInfo ??=
        AppBaseInfo.map(await channel.invokeMapMethod('getAppBaseInfo'));
  }

  Future<AndroidAppInfo> androidAppInfo(MethodChannel channel) async {
    _androidAppInfo ??= AndroidAppInfo.map(
        await channel.invokeMapMethod('getAndroidPackageInfo'));
  }

  Future<IosAppInfo> iosAppInfo(MethodChannel channel) async {
    _iosAppInfo ??=
        IosAppInfo.map(await channel.invokeMapMethod('getIosBundleInfo'));
  }

  Future<Map<String, dynamic>> androidMetaInfo(MethodChannel channel) async {
    _cacheMetaData ??= await channel.invokeMapMethod("getAndroidMetaDataInfo");
  }
}
