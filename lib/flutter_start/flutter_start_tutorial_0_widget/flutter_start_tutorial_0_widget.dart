import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorialWidget extends StatelessWidget {
  const FlutterStartTutorialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: body(),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sectionTitle("Cos'è un Widget?"),
          const SizedBox(height: 10),
          explanationText(
            "In Flutter, tutto è un widget. I widget sono i mattoni fondamentali dell'interfaccia utente (UI) in Flutter. "
            "Ogni elemento della UI è un widget, che si tratti di un pulsante, un testo, un'icona o un layout. "
            "I widget possono essere combinati per creare layout complessi.",
          ),
          const SizedBox(height: 20),
          sectionTitle("Tipi di Widget"),
          const SizedBox(height: 10),
          explanationText(
            "Ci sono due tipi principali di widget in Flutter: StatelessWidget e StatefulWidget.",
          ),
          const SizedBox(height: 20),
          sectionTitle("StatelessWidget"),
          const SizedBox(height: 10),
          explanationText(
            "Un StatelessWidget è un widget che non può cambiare il proprio stato durante l'esecuzione dell'app. "
            "Una volta creato, il suo stato non può essere modificato.",
          ),
          const SizedBox(height: 10),
          propertyExample(
            "Esempio di StatelessWidget",
            const StatelessExample(),
          ),
          propertyExample(
            "Codice StatelessWidget:",
            const Text('''
class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Questo è un esempio di StatelessWidget. Non può cambiare stato.");
  }
}'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("StatefulWidget"),
          const SizedBox(height: 10),
          explanationText(
            "Un StatefulWidget è un widget che può cambiare stato durante l'esecuzione dell'app. "
            "Può essere aggiornato dinamicamente in risposta alle interazioni dell'utente o altri eventi.",
          ),
          const SizedBox(height: 10),
          propertyExample(
            "Esempio di StatefulWidget",
            const StatefulExample(),
          ),
          propertyExample(
            "Codice StatefulWidget:",
            const Text('''
class StatefulExample extends StatefulWidget {
  @override
  StatefulExampleState createState() => StatefulExampleState();
}

class StatefulExampleState extends State<StatefulExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: \$_counter', style: TextStyle(fontSize: 16)),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Incrementa'),
        ),
      ],
    );
  }
}'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempi di Widget Comuni"),
          const SizedBox(height: 10),
          explanationText(
            "Di seguito sono riportati alcuni dei widget più comuni utilizzati in Flutter:",
          ),
          const SizedBox(height: 20),
          sectionTitle("Container"),
          const SizedBox(height: 10),
          explanationText(
            "Un Container è un widget versatile che può essere utilizzato per creare box rettangolari con proprietà di layout, decorazione, padding e margine.",
          ),
          propertyExample(
            "Esempio di Container",
            exampleContainer(),
          ),
          propertyExample(
            "Codice Container:",
            const Text('''
Widget exampleContainer() => const Container(
  padding: const EdgeInsets.all(16),
  color: Colors.blue.shade100,
  child: const Text(
    'Questo è un Container',
    style: TextStyle(fontSize: 16),
  ),
),'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Row e Column"),
          const SizedBox(height: 10),
          explanationText(
            "Row e Column sono widget di layout che dispongono i loro figli rispettivamente in una riga o in una colonna.",
          ),
          propertyExample(
            "Esempio di Row",
            exampleRow(),
          ),
          propertyExample(
            "Codice Row:",
            const Text('''
Widget exampleRow() => constRow(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: const [
    Text('Elemento 1'),
    Text('Elemento 2'),
    Text('Elemento 3'),
  ],
),'''),
          ),
          propertyExample(
            "Esempio di Column",
            exampleColumn(),
          ),
          propertyExample(
            "Codice Column:",
            const Text('''
Widget exampleColumn() => const Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: const [
    Text('Elemento 1'),
    Text('Elemento 2'),
    Text('Elemento 3'),
  ],
),'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Creazione di Widget personalizzati"),
          const SizedBox(height: 10),
          explanationText(
            "Puoi creare i tuoi widget personalizzati definendo una funzione che restituisce un widget. Questo può essere utile per riutilizzare componenti UI comuni.",
          ),
          propertyExample(
            "Esempio di Widget personalizzato",
            exampleCustomWidget(),
          ),
          propertyExample(
            "Codice Widget personalizzato:",
            const Text('''
Widget customText() => const Text(
  'Questo è un widget personalizzato',
  style: TextStyle(fontSize: 16, color: Colors.purple),
);

Widget exampleCustomWidget() => customText();'''),
          ),
        ],
      ),
    );
  }

  Widget exampleContainer() => Container(
        padding: const EdgeInsets.all(16),
        color: Colors.blue.shade100,
        child: const Text(
          'Questo è un Container',
          style: TextStyle(fontSize: 16),
        ),
      );

  Widget exampleRow() => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Elemento 1'),
          Text('Elemento 2'),
          Text('Elemento 3'),
        ],
      );

  Widget exampleColumn() => const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Elemento 1'),
          Text('Elemento 2'),
          Text('Elemento 3'),
        ],
      );

  Widget exampleCustomWidget() => customText();

  Widget customText() => const Text(
        'Questo è un widget personalizzato',
        style: TextStyle(fontSize: 16, color: Colors.purple),
      );
}

// Esempio di StatelessWidget
class StatelessExample extends StatelessWidget {
  const StatelessExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Questo è un esempio di StatelessWidget. Non può cambiare stato.",
      style: TextStyle(fontSize: 16),
    );
  }
}

// Esempio di StatefulWidget
class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  StatefulExampleState createState() => StatefulExampleState();
}

class StatefulExampleState extends State<StatefulExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter', style: const TextStyle(fontSize: 16)),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Incrementa'),
        ),
      ],
    );
  }
}
