import 'package:flutter/material.dart';

class Tutorial5 extends StatelessWidget {
  const Tutorial5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Immagini'),
      ),
      body: Center(child: body()),
    );
  }

  // Questo metodo restituisce un widget Column, che prende una lista di figli e li dispone verticalmente.
  // In questo caso, i figli sono un widget SizedBox che contiene un'immagine da rete e un CircleAvatar che contiene un'immagine locale.
  Widget body() => const Column(
        // Imposta mainAxisAlignment su MainAxisAlignment.center per centrare i figli lungo l'asse verticale.
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Immagine da Network:",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Image(
              // NetworkImage carica un'immagine da una sorgente online. In questo caso, l'URL dell'immagine è fornito.
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1605517021366-1b0393fdb50a?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              // BoxFit.cover determina come l'immagine dovrebbe essere ridimensionata per adattarsi al suo box.
              // In questo caso, l'immagine coprirà tutto il box, potenzialmente perdendo parte dell'immagine per evitare di distorcere l'immagine.
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Immagine Locale con un CircleAvatar:",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          // CircleAvatar: per fare le img a cerchio:
          CircleAvatar(
            radius: 50,
            // da usare sempre backgroudImage e non foregoundImage
            // a causa della fallback del foregroundimg
            // così da poter indicare tutti e 2
            backgroundImage: AssetImage("assets/images/propic.jpg"),
          ),
        ],
      );
}
