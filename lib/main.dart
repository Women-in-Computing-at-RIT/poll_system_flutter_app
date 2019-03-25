import 'package:flutter/material.dart';
import 'package:poll_system_flutter_app/pages/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const MaterialColor purple = const MaterialColor(
      0xFF4D1F5B,
      const <int, Color>{
        50: const Color(0xFF4D1F5B),
        100: const Color(0xFF4D1F5B),
        200: const Color(0xFF4D1F5B),
        300: const Color(0xFF4D1F5B),
        400: const Color(0xFF4D1F5B),
        500: const Color(0xFF4D1F5B),
        600: const Color(0xFF4D1F5B),
        700: const Color(0xFF4D1F5B),
        800: const Color(0xFF4D1F5B),
        900: const Color(0xFF4D1F5B),
      },
    );
    return MaterialApp(
      title: 'WiC Polls',
      theme: ThemeData(
        primarySwatch: purple,
      ),
      home: LoginPage(title: 'Login'),
    );
  }
}