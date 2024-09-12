import 'package:flutter/material.dart';
import 'package:flutter_tutorial/intro_pages/home_page.dart';
import 'package:flutter_tutorial/routes/routes.dart';

class CompleteFlutterGuideApp extends StatelessWidget {
  const CompleteFlutterGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp è il widget radice per la maggior parte delle app Flutter
    // include una serie di funzionalità importanti come la navigazione e i temi.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 3 Guida',
      theme: ThemeData(
        primaryColor: const Color(0xFF1976D2), // Primary color: Blue
        hintColor: const Color(0xFFFFC107), // Accent color: Amber
        scaffoldBackgroundColor:
            const Color(0xFFFFFFFF), // Background color: White
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1976D2), // AppBar color: Blue
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold, // Make the title bold
            color: Colors.white,
          ),
        ),
        cardColor: const Color(0xFFBBDEFB), // Card color: Light Blue
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF212121)), // Text color: Dark Grey
          bodySmall: TextStyle(
              fontSize: 16.0,
              color: Color(0xFF212121)), // Text color: Dark Grey
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF1976D2), // Button color: Blue
          textTheme: ButtonTextTheme.primary,
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFFFFFFF), // Icon color: White
        ),
      ),
      home: const HomePage(),
      routes: routes, // Utilizza le rotte definite nel file routes.dart
      onUnknownRoute: onUnknownRoute, // Gestione delle rotte sconosciute
    );
  }
}
