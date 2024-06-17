import 'package:flutter/material.dart';

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
      body: Center(child: body()),
    );
  }

  // Questo metodo restituisce un widget Column, che prende una lista di figli e li dispone verticalmente.
  // In questo caso, i figli sono un TextButton, un ElevatedButton e un IconButton.
  Widget body() => Column(
        // MainAxisAlignment.center posiziona i figli il più vicino possibile al centro lungo l'asse verticale.
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "I vari tipi di bottoni in Flutter:",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          const Text(
            "TextButton: mostra un testo che descrive l'azione.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          TextButton(
            onPressed: onButtonPressed,
            child: const Text(
              "Text Button",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "ElevatedButton: pulsante con inchiostro splash e ombreggiatura.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          ElevatedButton(
            onPressed: onButtonPressed,
            child: const Text(
              "Elevated Button",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "IconButton: pulsante con un'icona senza testo.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          IconButton(
            onPressed: onButtonPressed,
            icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
          ),
        ],
      );
}
