// lib/app.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tutorial_1_stateless/tutorial_1.dart';
import 'package:flutter_tutorial/tutorial_3_buttons/tutorial_3.dart';
import 'package:flutter_tutorial/tutorial_4_colors/tutorial_4.dart';
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
          backgroundColor: Colors.deepPurple,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18.0),
        ),
      ),
      home: const HomePage(),
      routes: {
        '/tutorial_0': (context) => const Tutorial0(),
        '/tutorial_1': (context) => const Tutorial1(
              "Componente a cui non cambia lo stato.",
              12,
              word2: "Valore a caso.",
              style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
            ),
        '/tutorial_2': (context) => const Tutorial2(20),
        '/tutorial_3': (context) => Tutorial3(),
        '/tutorial_4': (context) => Tutorial4(),
        // Aggiungi le rotte per gli altri tutorial qui...
      },
    );
  }
}
