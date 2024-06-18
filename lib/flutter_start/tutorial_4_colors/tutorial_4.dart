import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Selezione colori normali"),
            const SizedBox(height: 10),
            explanationText(
              "Metodo 3 per la selezione dei colori: utilizzo di un colore predefinito.",
            ),
            propertyExample(
              "Usando Colors.blue",
              const Text(
                'Testo in blu',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  'Testo in blu',
  style: TextStyle(
    color: Colors.blue,
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Selezione colori shade"),
            const SizedBox(height: 10),
            explanationText(
              "Metodo 4 per la selezione dei colori: utilizzo di un colore predefinito con una tonalità specifica.",
            ),
            propertyExample(
              "Usando Colors.blue[100]",
              Text(
                'Testo in blu chiaro',
                style: TextStyle(
                  color: Colors.blue[100],
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  'Testo in blu chiaro',
  style: TextStyle(
    color: Colors.blue[100],
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Colore con rgb ed opacità"),
            const SizedBox(height: 10),
            explanationText(
              "Metodo 5 per la selezione dei colori: utilizzo del metodo Color.fromARGB per creare un colore specificando i valori Alpha, Red, Green e Blue.",
            ),
            propertyExample(
              "Usando Color.fromARGB(125, 0, 0, 255)",
              const Text(
                'Testo con colore RGBA',
                style: TextStyle(
                  color: Color.fromARGB(125, 0, 0, 255),
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  'Testo con colore RGBA',
  style: TextStyle(
    color: Color.fromARGB(125, 0, 0, 255),
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Colore con rgb hex"),
            const SizedBox(height: 10),
            explanationText(
              "Metodo 6 per la selezione dei colori: utilizzo del metodo Color per creare un colore specificando un valore esadecimale.",
            ),
            propertyExample(
              "Usando Color(0xFF0000FF)",
              const Text(
                'Testo con colore esadecimale',
                style: TextStyle(
                  color: Color(0xFF0000FF),
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  'Testo con colore esadecimale',
  style: TextStyle(
    color: Color(0xFF0000FF),
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Icone di Flutter"),
            const SizedBox(height: 10),
            propertyExample(
              "Icona senza colore",
              const Column(
                children: [
                  Icon(Icons.auto_delete, size: 50),
                  SizedBox(height: 10),
                  Text(
                    'Icona senza colore',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Icon(Icons.auto_delete, size: 50)'''),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "Icona con colore",
              const Column(
                children: [
                  Icon(Icons.auto_delete, size: 50, color: Colors.purple),
                  SizedBox(height: 10),
                  Text(
                    'Icona con colore',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Icon(
  Icons.auto_delete, 
  size: 50, 
  color: Colors.purple
)'''),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "Icona outlined senza colore",
              const Column(
                children: [
                  Icon(Icons.auto_delete_outlined, size: 50),
                  SizedBox(height: 10),
                  Text(
                    'Icona outlined senza colore',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Icon(Icons.auto_delete_outlined, size: 50)'''),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "Icona outlined con colore",
              Column(
                children: [
                  Icon(Icons.auto_delete_outlined,
                      size: 50, color: Colors.grey.shade600),
                  const SizedBox(height: 10),
                  const Text(
                    'Icona outlined con colore',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Icon(
  Icons.auto_delete_outlined,
  size: 50, 
  color: Colors.grey.shade600
),'''),
            ),
          ],
        ),
      ),
    );
  }
}
