import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseMessagingService {
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    Fluttertoast.showToast(msg: message.data.toString());
  }

  void initPushNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
            alert: true, badge: true, sound: true);

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

  void init() async {
    await FirebaseMessaging.instance.requestPermission(
      provisional: true,
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      sound: true,
    );

    final fcmToken = await FirebaseMessaging.instance.getToken(
        vapidKey:
            "BIqBamKFDxs2c2QUnkX6jJlooGo9rPE9UXQ-OYc96fFMHK6XA3nMYlGomraev0nyJPLdsnPrOywJwcFK4dklU4A");
    log(fcmToken.toString());

    initPushNotifications();
  }
}

Future<void> handleOnBackgroudMessage(RemoteMessage message) async {
  print(message.notification?.title);
  print(message.notification?.body);
}
