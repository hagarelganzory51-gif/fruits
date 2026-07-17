import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/constants/app_font.dart';
import 'package:fruits_app/feature/splash/splash_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),);
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