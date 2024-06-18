// lib/app.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/tutorial_0_intro/tutorial_0.dart';
import 'package:flutter_tutorial/pages/tutorial_1_stateless/tutorial_1.dart';
import 'package:flutter_tutorial/pages/tutorial_2_stateful/tutorial_2.dart';
import 'package:flutter_tutorial/pages/tutorial_3_buttons/tutorial_3.dart';
import 'package:flutter_tutorial/pages/tutorial_4_colors/tutorial_4.dart';
import 'package:flutter_tutorial/pages/tutorial_5_images/tutorial_5.dart';
import 'package:flutter_tutorial/pages/tutorial_8_column_row/tutorial_8.dart';
import 'home_page.dart';

class CompleteFlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp è il widget radice per la maggior parte delle app Flutter
    // include una serie di funzionalità importanti come la navigazione e i temi.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        '/tutorial_3': (context) => const Tutorial3(),
        '/tutorial_4': (context) => const Tutorial4(),
        '/tutorial_5': (context) => const Tutorial5(),
        '/tutorial_8': (context) => const Tutorial8(),
      },
    );
  }
}
