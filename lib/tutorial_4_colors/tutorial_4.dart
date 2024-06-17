import 'package:flutter/material.dart';

class Tutorial4 extends StatelessWidget {
  const Tutorial4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Metodo 1 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
        backgroundColor: Colors.purple.shade800,
        title: Text(
          'Colori',
          style: TextStyle(
            // Metodo 2 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
            color: Colors.blue[100],
          ),
        ),
      ),
      body: Center(child: body()),
    );
  }

  Widget body() => ListView(
        // Imposta mainAxisAlignment su MainAxisAlignment.center per centrare i figli lungo l'asse verticale.
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const Text(
            'Selezione colori normali',
            textAlign: TextAlign.center,
            style: TextStyle(
              // Metodo 3 per la selezione dei colori: utilizzo di un colore predefinito.
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Usando Colors.blue',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Text(
            'Selezione colori shade',
            textAlign: TextAlign.center,
            style: TextStyle(
              // Metodo 4 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.
              color: Colors.blue[100],
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Usando Colors.blue[100]',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            'Colore con rgb ed opacità',
            textAlign: TextAlign.center,
            style: TextStyle(
              // Metodo 5 per la selezione dei colori: utilizzo del metodo Color.fromARGB per creare un colore specificando i valori Alpha, Red, Green e Blue.
              color: Color.fromARGB(125, 0, 0, 255),
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Usando Color.fromARGB(125, 0, 0, 255)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            'Colore con rgb hex',
            textAlign: TextAlign.center,
            style: TextStyle(
              // Metodo 6 per la selezione dei colori: utilizzo del metodo Color per creare un colore specificando un valore esadecimale.
              color: Color(0xFF0000FF),
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Usando Color(0xFF0000FF)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            '- Icone di Flutter:',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
          const Icon(Icons.auto_delete, size: 50),
          const SizedBox(height: 10),
          const Text(
            'Icona senza colore',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Icon(Icons.auto_delete, size: 50, color: Colors.purple),
          const SizedBox(height: 10),
          const Text(
            'Icona con colore',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Icon(Icons.auto_delete_outlined, size: 50),
          const SizedBox(height: 10),
          const Text(
            'Icona outlined senza colore',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Icon(Icons.auto_delete_outlined,
              size: 50, color: Colors.grey.shade600),
          const SizedBox(height: 10),
          const Text(
            'Icona outlined con colore',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      );
}
