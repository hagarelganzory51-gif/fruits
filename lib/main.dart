import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/app_font.dart';
import 'package:fruits_app/feature/splash/splash_screen.dart';
import 'package:fruits_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;

NotificationSettings settings = await messaging.requestPermission(
  alert: true,
  badge: true,
  sound: true,
);

String? token = await messaging.getToken();



FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  if (message.notification != null) {
  }
});

FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
});

RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();
if (initialMessage != null) {
}
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: AppFont.poppins,
      ),
      home: const SplashScreen(),
    );
  }
}