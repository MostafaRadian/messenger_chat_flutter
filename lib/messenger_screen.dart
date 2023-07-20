import 'package:flutter/material.dart';

class Messenger_screen extends StatelessWidget {
  const Messenger_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
            image: NetworkImage(
                "https://icons-for-free.com/iconfiles/icns/512/user+icon-1320190636314922883.icns")),
        title: const Text("Messenger"),
        actions: const [],
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
