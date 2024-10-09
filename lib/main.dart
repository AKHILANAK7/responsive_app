import 'package:flutter/material.dart';
import 'package:responsive_app/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme:const  ColorScheme.light(primary: Colors.blue)),
      home: const HomeScreen(),
    );
  }
}
