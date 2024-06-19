import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial2 extends StatefulWidget {
  final int value;
  const FlutterStartTutorial2(this.value, {super.key});

  @override
  State<StatefulWidget> createState() => FlutterStartTutorial2State();
}

class FlutterStartTutorial2State extends State<FlutterStartTutorial2> {
  late int value;
  late int initialValue;

  @override
  void initState() {
    initialValue = widget.value;
    value = initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("StatefulWidget"),
            const SizedBox(height: 10),
            explanationText(
              "Un StatefulWidget mantiene uno stato interno che può cambiare nel tempo, "
              "come ad esempio quando un utente interagisce con il widget. "
              "Esempio: aumento, decremento e reset di un valore:",
            ),
            const SizedBox(height: 20),
            propertyExample(
              "Il valore cambia tramite setState:",
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              value--;
                            });
                          },
                          child: const Text('-'),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          '$value',
                          style: const TextStyle(fontSize: 30),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              value++;
                            });
                          },
                          child: const Text('+'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          value = initialValue;
                        });
                      },
                      child: const Text('Resetta Valore'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            sectionTitle("Struttura di un StatefulWidget"),
            const SizedBox(height: 10),
            explanationText(
              "Esempio di base di un widget con stato che mostra come definire e utilizzare un StatefulWidget.",
            ),
            propertyExample(
              "StatefulWidget",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

// Stato associato a MyStatefulWidget
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hai premuto il pulsante questo numero di volte:',
            ),
            Text(
              '\$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Incrementa Contatore'),
            ),
          ],
        ),
      ),
    );
  }
}
                    ''',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
