import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class Tutorial3 extends StatelessWidget {
  const Tutorial3({super.key});

  // Questo è un metodo che viene chiamato quando il pulsante viene premuto.
  void onButtonPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottoni'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo della sezione per i bottoni
            sectionTitle("I vari tipi di bottoni in Flutter"),
            const SizedBox(height: 20),
            // Spiegazione del TextButton
            explanationText(
              "TextButton: mostra un testo che descrive l'azione.",
            ),
            const SizedBox(height: 10),
            // Esempio di TextButton
            propertyExample(
              "TextButton",
              TextButton(
                onPressed: onButtonPressed,
                child: const Text(
                  "Text Button",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice TextButton:",
              const Text('''
TextButton(
  onPressed: onButtonPressed,
  child: const Text(
    "Text Button",
     style: TextStyle(fontSize: 30),
  ),
),'''),
            ),
            const SizedBox(height: 20),
            // Spiegazione dell'ElevatedButton
            explanationText(
              "ElevatedButton: pulsante con inchiostro splash e ombreggiatura.",
            ),
            const SizedBox(height: 10),
            // Esempio di ElevatedButton
            propertyExample(
              "ElevatedButton",
              ElevatedButton(
                onPressed: onButtonPressed,
                child: const Text(
                  "Elevated Button",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice ElevatedButton:",
              const Text('''
ElevatedButton(
  onPressed:onButtonPressed,
  child: const Text(
    "Elevated Button",
    style: TextStyle(fontSize: 30),
  ),
),'''),
            ),
            const SizedBox(height: 20),
            // Spiegazione dell'IconButton
            explanationText(
              "IconButton: pulsante con un'icona senza testo.",
            ),
            const SizedBox(height: 10),
            // Esempio di IconButton
            propertyExample(
              "IconButton",
              IconButton(
                onPressed: onButtonPressed,
                icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
              ),
            ),
            const SizedBox(height: 10),
            // Esempio di IconButton
            propertyExample(
              "Codice IconButton:",
              const Text('''
IconButton(
  onPressed: onButtonPressed,
  icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
),'''),
            ),
          ],
        ),
      ),
    );
  }
}
