import 'package:flutter/material.dart';

/// Widget per visualizzare un titolo di sezione.
/// Prende in ingresso una stringa `title` e la mostra con uno stile grande e in grassetto.
Widget sectionTitle(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );
}

/// Widget per visualizzare un testo esplicativo.
/// Accetta una stringa `text` e la mostra con una dimensione predefinita.
Widget explanationText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 16),
  );
}

/// Widget per mostrare un esempio di proprietà con un titolo.
/// - `propertyName`: nome della proprietà che si vuole mostrare.
/// - `child`: widget che rappresenta l'esempio della proprietà.
///
/// Il widget viene avvolto in un `Column` per mostrare il nome della proprietà sopra il widget esempio.
/// Inoltre, il widget è inserito in un `Container` con sfondo grigio chiaro per evidenziare l'area dell'esempio.
propertyExample(String propertyName, Widget child) {
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
      const SizedBox(height: 10), // Spazio tra il titolo e l'esempio
      Container(
        padding: const EdgeInsets.all(8.0), // Spazio interno al contenitore
        width: double.infinity, // Occupa tutta la larghezza disponibile
        color: Colors.grey.shade100, // Sfondo grigio chiaro per evidenziare l'esempio
        child: child,
      ),
    ],
  );
}

/// Widget per creare un piccolo box colorato, usato negli esempi.
/// - `color`: colore del box.
///
/// Il box ha una dimensione fissa di 70x50 e un margine verticale per separarlo dagli altri elementi.
Widget coloredBox(Color color) {
  return Container(
    width: 70,
    height: 50,
    color: color, // Imposta il colore del box
    margin: const EdgeInsets.symmetric(vertical: 5), // Aggiunge spazio sopra e sotto
  );
}
