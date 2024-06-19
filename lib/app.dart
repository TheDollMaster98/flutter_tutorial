import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/routes.dart';
import 'pages/home_page.dart';

class CompleteFlutterTutorialApp extends StatelessWidget {
  const CompleteFlutterTutorialApp({super.key});

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
          backgroundColor: Colors.purpleAccent,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18.0),
        ),
      ),
      home: const HomePage(),
      routes: routes, // Utilizza le rotte definite nel file routes.dart
      onUnknownRoute: onUnknownRoute, // Gestione delle rotte sconosciute
    );
  }
}
