// lib/app.dart
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tutorial_0_intro/tutorial_0.dart';
import 'tutorial_1_stateful/tutorial_1.dart';
// Importa gli altri tutorial qui...

class CompleteFlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complete Flutter Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // Colore globale dell'AppBar:
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purpleAccent,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16.0),
        ),
      ),
      home: const HomePage(),
      routes: {
        '/tutorial_0': (context) => Tutorial0(),
        '/tutorial_1': (context) => const Tutorial1(20),
        // Aggiungi le rotte per gli altri tutorial qui...
      },
    );
  }
}
