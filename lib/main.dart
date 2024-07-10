import 'package:fintech/DI/service_locator.dart';
import 'package:fintech/theme/light_theme.dart';
import 'package:fintech/ui/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  initServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(
        mediaQuery: locator.get(),
      ),
      theme: lightTheme,
    );
  }
}