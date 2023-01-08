import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotifyHelper{
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin(); //

  initializeNotification() async {

    final AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings("appicon");
      final InitializationSettings initializationSettings =
      InitializationSettings(
      android:initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,

    );

  }

}