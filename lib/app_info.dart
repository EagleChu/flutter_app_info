class AppBaseInfo {
  // The app name. `CFBundleDisplayName` on iOS, `application/label` on Android.
  String appName;

  // The app id. `bundleIdentifier` on iOS, `getPackageName` on Android.
  String appId;

  // The version name. `CFBundleShortVersionString` on iOS, `versionName` on Android.
  String versionName;

  // The version code. `CFBundleVersion` on iOS, `versionCode` on Android.
  int versionCode;

  AppBaseInfo.base(
      {this.appName, this.appId, this.versionName, this.versionCode});

  AppBaseInfo.map(Map<String, dynamic> map) {
    AppBaseInfo.base(
      appName: map['appName'],
      appId: map['appId'],
      versionName: map['versionName'],
      versionCode: map['versionCode'],
    );
  }

  fromMap(Map<String, dynamic> map) {
    return AppBaseInfo.base(
      appName: map['appName'],
      appId: map['appId'],
      versionName: map['versionName'],
      versionCode: map['versionCode'],
    );
  }
}

class AndroidAppInfo extends AppBaseInfo {
  AndroidAppInfo.base() : super.base();

  AndroidAppInfo.map(Map<String, dynamic> map) : super.map(map);

  static _fromMap(Map<String, dynamic> map) {
    return AndroidAppInfo.map(map);
  }
}

class IosAppInfo extends AppBaseInfo {
  IosAppInfo.base(
      {String appName, String appId, String versionName, int versionCode})
      : super.base(
            appName: appName,
            appId: appId,
            versionName: versionName,
            versionCode: versionCode);

  IosAppInfo.map(Map<String, dynamic> map) : super.map(map);

  static _fromMap(Map<String, dynamic> map) {
    return IosAppInfo.map(map);
  }
}
