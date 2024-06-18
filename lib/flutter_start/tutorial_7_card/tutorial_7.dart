import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class Tutorial7 extends StatefulWidget {
  const Tutorial7({super.key});

  @override
  Tutorial7State createState() => Tutorial7State();
}

class Tutorial7State extends State<Tutorial7> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter == 10 ? counter = 0 : counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Card",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Card"),
            const SizedBox(height: 10),
            explanationText(
              "Card è un widget utilizzato per creare un contenitore con un bordo arrotondato e un'ombra. "
              "È utile per visualizzare informazioni in modo ordinato e facilmente leggibile.",
            ),
            propertyExample(
              "Esempio di Card",
              Card(
                child: InkWell(
                  onTap: () {
                    incrementCounter();
                  },
                  splashColor: Colors.purpleAccent.shade100,
                  child: Container(
                    width: 200,
                    height: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "Card $counter",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("Proprietà della Card"),
            const SizedBox(height: 10),
            explanationText(
              "La Card può essere personalizzata utilizzando diverse proprietà, come colore, elevazione e forma.",
            ),
            propertyExample(
              "Card con colore di sfondo",
              Card(
                color: Colors.blue.shade100,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Questa è una Card con colore di sfondo.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            explanationText(
              "È possibile utilizzare InkWell all'interno della Card per aggiungere un effetto al tocco e gestire gli eventi di tap.",
            ),
            propertyExample(
              "Card con InkWell",
              Card(
                child: InkWell(
                  onTap: () {
                    incrementCounter();
                  },
                  splashColor: Colors.purpleAccent.shade100,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Tocca per incrementare il contatore.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            explanationText(
              "È possibile aggiungere un'ombra alla Card utilizzando la proprietà elevazione.",
            ),
            propertyExample(
              "Card con elevazione",
              const Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Questa è una Card con elevazione.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            explanationText(
              "È possibile modificare la forma della Card utilizzando la proprietà shape.",
            ),
            propertyExample(
              "Card con bordi arrotondati",
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Questa è una Card con bordi arrotondati.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            explanationText(
              "È possibile aggiungere margini alla Card utilizzando un Container.",
            ),
            propertyExample(
              "Card con margini",
              Container(
                margin: const EdgeInsets.all(16.0),
                child: const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Questa è una Card con margini esterni.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
