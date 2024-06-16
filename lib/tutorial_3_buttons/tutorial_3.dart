import 'package:flutter/material.dart';

class Tutorial3 extends StatelessWidget {
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
      const Text("I vari tipi di bottoni in Flutter:", style: TextStyle(fontSize: 24),),
      // TextButton è un tipo di pulsante che mostra il testo che descrive l'azione che verrà eseguita quando il pulsante viene premuto.
      TextButton(
        onPressed: onButtonPressed,
        child: const Text(
          "Text Button",
          style: TextStyle(fontSize: 30),
        ),
      ),
      // ElevatedButton è un tipo di pulsante Material Design che contiene inchiostro splash e ombreggiatura.
      ElevatedButton(
        onPressed: onButtonPressed,
        child: const Text(
          "Elevated Button",
          style: TextStyle(fontSize: 30),
        ),
      ),
      const Text('Icon Button:', style: TextStyle(fontSize: 24),),
      // IconButton è un tipo di pulsante che contiene un'icona senza testo che descrive l'azione che verrà eseguita quando il pulsante viene premuto.
      IconButton(
        onPressed: onButtonPressed,
        icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
      ),
    ],
  );
}