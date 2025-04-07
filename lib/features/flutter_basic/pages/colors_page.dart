import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

// Questa pagina mostra come utilizzare diversi tipi di colori e icone in Flutter.
// Si tratta di una pagina dimostrativa puramente visiva.
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text(
          'Colori',
          style: TextStyle(color: Colors.blue[100]),
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
                style: TextStyle(color: Colors.blue, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            propertyExample("Codice:", const Text('''
Text(
  'Testo in blu',
  style: TextStyle(
    color: Colors.blue,
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),''')),

            const SizedBox(height: 20),
            sectionTitle("Selezione colori shade"),
            const SizedBox(height: 10),
            explanationText("Metodo 4: colore con tonalità specifica."),
            propertyExample(
              "Usando Colors.blue[100]",
              Text(
                'Testo in blu chiaro',
                style: TextStyle(color: Colors.blue[100], fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            propertyExample("Codice:", const Text('''
Text(
  'Testo in blu chiaro',
  style: TextStyle(
    color: Colors.blue[100],
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),''')),

            const SizedBox(height: 20),
            sectionTitle("Colore con rgb ed opacità"),
            explanationText("Metodo 5: Color.fromARGB"),
            propertyExample(
              "Usando Color.fromARGB(125, 0, 0, 255)",
              const Text(
                'Testo con colore RGBA',
                style: TextStyle(color: Color.fromARGB(125, 0, 0, 255), fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            propertyExample("Codice:", const Text('''
Text(
  'Testo con colore RGBA',
  style: TextStyle(
    color: Color.fromARGB(125, 0, 0, 255),
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),''')),

            const SizedBox(height: 20),
            sectionTitle("Colore con rgb hex"),
            explanationText("Metodo 6: Color esadecimale"),
            propertyExample(
              "Usando Color(0xFF0000FF)",
              const Text(
                'Testo con colore esadecimale',
                style: TextStyle(color: Color(0xFF0000FF), fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            propertyExample("Codice:", const Text('''
Text(
  'Testo con colore esadecimale',
  style: TextStyle(
    color: Color(0xFF0000FF),
    fontSize: 30,
  ),
  textAlign: TextAlign.center,
),''')),

            const SizedBox(height: 20),
            sectionTitle("Icone di Flutter"),
            propertyExample(
              "Icona senza colore",
              const Column(
                children: [
                  Icon(Icons.auto_delete, size: 50),
                  SizedBox(height: 10),
                  Text('Icona senza colore', textAlign: TextAlign.center),
                ],
              ),
            ),
            propertyExample("Codice:", const Text('Icon(Icons.auto_delete, size: 50)')),

            const SizedBox(height: 20),
            propertyExample(
              "Icona con colore",
              const Column(
                children: [
                  Icon(Icons.auto_delete, size: 50, color: Colors.purple),
                  SizedBox(height: 10),
                  Text('Icona con colore', textAlign: TextAlign.center),
                ],
              ),
            ),
            propertyExample("Codice:", const Text('''
Icon(
  Icons.auto_delete,
  size: 50,
  color: Colors.purple,
)''')),

            const SizedBox(height: 20),
            propertyExample(
              "Icona outlined senza colore",
              const Column(
                children: [
                  Icon(Icons.auto_delete_outlined, size: 50),
                  SizedBox(height: 10),
                  Text('Icona outlined senza colore', textAlign: TextAlign.center),
                ],
              ),
            ),
            propertyExample("Codice:", const Text('Icon(Icons.auto_delete_outlined, size: 50)')),

            const SizedBox(height: 20),
            propertyExample(
              "Icona outlined con colore",
              Column(
                children: [
                  Icon(Icons.auto_delete_outlined, size: 50, color: Colors.grey.shade600),
                  const SizedBox(height: 10),
                  const Text('Icona outlined con colore', textAlign: TextAlign.center),
                ],
              ),
            ),
            propertyExample("Codice:", const Text('''
Icon(
  Icons.auto_delete_outlined,
  size: 50,
  color: Colors.grey.shade600,
),''')),
          ],
        ),
      ),
    );
  }
}
