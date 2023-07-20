import 'package:flutter/material.dart';
import 'messenger_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MessengerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
