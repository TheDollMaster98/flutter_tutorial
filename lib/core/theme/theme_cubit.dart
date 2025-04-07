import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    primaryColor: const Color(0xFF1976D2),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1976D2),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    cardColor: const Color(0xFFBBDEFB),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 18.0, color: Color(0xFF212121)),
      bodySmall: TextStyle(fontSize: 16.0, color: Color(0xFF212121)),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF1976D2),
      textTheme: ButtonTextTheme.primary,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );

  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : ThemeData.dark());
  }
}
