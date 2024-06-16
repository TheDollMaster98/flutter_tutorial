// lib/app.dart
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tutorial_0_intro/tutorial_0.dart';
import 'tutorial_2_stateful/tutorial_2.dart';
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
        '/tutorial_0': (context) => const Tutorial0(),
        '/tutorial_2': (context) => const Tutorial2(20),
        // Aggiungi le rotte per gli altri tutorial qui...
      },
    );
  }
}
