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
          sectionTitle("Esempio di InheritedWidget"),
          const SizedBox(height: 10),
          explanationText(
            "Un `InheritedWidget` è un widget speciale che permette di condividere dati tra i widget discendenti "
            "senza dover passare i dati manualmente a ogni livello della gerarchia. "
            "È utile quando si ha bisogno di condividere lo stesso stato tra vari widget.",
          ),
          const SizedBox(height: 10),
          sectionTitle("Esempio di InheritedWidget"
              // const InheritedWidgetExample(),
              ),
          propertyExample(
            "Codice InheritedWidget:",
            const Text('''
class MyInheritedWidget extends InheritedWidget {
  final int counter;

  const MyInheritedWidget({
    required this.counter,
    required Widget child,
  }) : super(child: child);

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}

class InheritedWidgetExample extends StatefulWidget {
  @override
  _InheritedWidgetExampleState createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      counter: _counter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CounterDisplay(),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Incrementa'),
          ),
        ],
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int? counter = MyInheritedWidget.of(context)?.counter;

    return Text(
      'Il valore del contatore è: \$counter',
      style: TextStyle(fontSize: 24),
    );
  }
}'''),
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
