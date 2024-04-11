import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseApi {
  // late BuildContext _context;
  final _firebaseMessaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  String? payload;
  void onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    payload = notificationResponse.payload;
  }

  Future<String?> initNotifications() async {
    // _context = context;
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    final fcmToken = await _firebaseMessaging.getToken();
    initPushNotification();
    return fcmToken;
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
    //Handle navigation code
  }

  Future initPushNotification() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      var androidInitialize =
          const AndroidInitializationSettings('@mipmap/ic_launcher');
      // ignore: unused_local_variable
      // var iOSInitialize =  IOSInitailzationSettings();
      var initialzationSettings = InitializationSettings(
        android: androidInitialize,
      );
      flutterLocalNotificationsPlugin.initialize(
        initialzationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
      );
      BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
          message.notification!.body.toString(),
          htmlFormatBigText: true,
          contentTitle: message.notification!.title.toString(),
          htmlFormatContentTitle: true);

      AndroidNotificationDetails androidPlatformChannelSpecifics =
          AndroidNotificationDetails(
        "BikersConnectApp",
        "BikersConnectApp",
        importance: Importance.max,
        styleInformation: bigTextStyleInformation,
        priority: Priority.max,
        enableVibration: true,
        playSound: true,
      );

      NotificationDetails platformChannelSpecifics =
          NotificationDetails(android: androidPlatformChannelSpecifics);
      await flutterLocalNotificationsPlugin.show(0, message.notification!.title,
          message.notification!.body, platformChannelSpecifics,
          payload: message.data['title']);
    });

    //attach event listeners when user opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
