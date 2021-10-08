import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMT Bank',
      theme: ThemeData(canvasColor: const Color(0xFF90CAF9)),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
