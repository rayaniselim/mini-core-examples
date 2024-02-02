import 'package:flutter/material.dart';

import 'public/home_page.dart';

class Appwidget extends StatelessWidget {
  const Appwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 80, 80, 78)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
