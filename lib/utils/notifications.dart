import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class Notifications {
  static final _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static final _initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  static final _initializationSettingsIOS = IOSInitializationSettings();

  static Future<void> init() async {
    final initializationSettings = InitializationSettings(
      android: _initializationSettingsAndroid,
      iOS: _initializationSettingsIOS,
    );
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> schedule({
    required Duration duration,
    required String title,
    required String body,
  }) async {
    if (duration.inSeconds <= 0) return;
    tz.initializeTimeZones();
    await _flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      title,
      body,
      tz.TZDateTime.now(tz.local).add(duration),
      NotificationDetails(),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  static Future<void> cancelAll() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }
}
