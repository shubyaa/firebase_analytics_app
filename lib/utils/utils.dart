import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:package_info_plus/package_info_plus.dart';

getPackageInfo() async {
  Map<String, dynamic> obj;
  await PackageInfo.fromPlatform().then((value) {
    obj = {"name": value.appName, "package": value.packageName};
    return obj;
  });
}

class FireAnalytics {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static void performFirebaseLogEvent(
      String name, Map<String, dynamic> params) async {
    final analytics = FireAnalytics().analytics;
    await analytics.logEvent(name: name, parameters: params);
  }
}
