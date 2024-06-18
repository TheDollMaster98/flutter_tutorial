import 'package:flutter/material.dart';

Widget sectionTitle(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );
}

// Widget per il testo di spiegazione
Widget explanationText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 16),
  );
}

// Widget per mostrare esempi di proprietà
Widget propertyExample(String propertyName, Widget child) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        propertyName,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        color: Colors.grey.shade100,
        child: child,
      ),
    ],
  );
}

// Widget per creare box colorati usati negli esempi
Widget coloredBox(Color color) {
  return Container(
    width: 70,
    height: 50,
    color: color,
    margin: const EdgeInsets.symmetric(vertical: 5),
  );
}
