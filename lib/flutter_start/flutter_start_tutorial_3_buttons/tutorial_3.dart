import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial3 extends StatefulWidget {
  const FlutterStartTutorial3({super.key});

  @override
  FlutterStartTutorial3State createState() => FlutterStartTutorial3State();
}

class FlutterStartTutorial3State extends State<FlutterStartTutorial3> {
  bool _isTapped = false;

  // Questo è un metodo che viene chiamato quando il pulsante viene premuto.
  void onButtonPressed() {
    print("Pressed");
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottoni e InkWell'),
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
            sectionTitle("Bottone con testo"),
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
            sectionTitle("Bottone ombreggiato"),
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
            sectionTitle("Bottone con icona"),
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
            const SizedBox(height: 20),
            // Spiegazione dell'InkWell
            sectionTitle("InkWell"),
            explanationText(
              "InkWell è un widget che reagisce ai tocchi, mostrando un'animazione di splash quando viene toccato. "
              "È utile per rendere tappabili i widget non interattivi come i Container o le Card.",
            ),
            const SizedBox(height: 10),
            // Esempio di InkWell
            propertyExample(
              "InkWell",
              InkWell(
                onTap: onButtonPressed,
                splashColor: Colors.purpleAccent,
                child: Card(
                  color:
                      _isTapped ? Colors.blue.shade200 : Colors.blue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Tocca qui',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
InkWell(
  onTap: onButtonPressed,
  splashColor: Colors.purpleAccent,
  child: Card(
    color: _isTapped ? Colors.blue.shade200 : Colors.blue.shade100,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Container(
      width: double.infinity,
      height: 100,
      alignment: Alignment.center,
      child: const Text(
        'Tocca qui',
        style: TextStyle(fontSize: 24),
      ),
    ),
  ),
),'''),
            ),
          ],
        ),
      ),
    );
  }
}
