import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';
import 'package:flutter_tutorial/features/flutter_basic/cubit/stateful_cubit.dart';

// Questa classe rappresenta la pagina per spiegare i StatefulWidget.
// Contiene un bloc provider per il cubit che gestisce il valore che cambia.
class StatefulPage extends StatelessWidget {
  final int initialValue;
  const StatefulPage(this.initialValue, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => StatefulCubit(initialValue),
      child: const _StatefulView(),
    );
  }
}

class _StatefulView extends StatelessWidget {
  const _StatefulView();

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
              "Il valore cambia tramite Cubit:",
              Center(
                child: BlocBuilder<StatefulCubit, int>(
                  builder: (context, value) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => context.read<StatefulCubit>().decrement(),
                              child: const Text('-'),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              '$value',
                              style: const TextStyle(fontSize: 30),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () => context.read<StatefulCubit>().increment(),
                              child: const Text('+'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () => context.read<StatefulCubit>().reset(),
                          child: const Text('Resetta Valore'),
                        ),
                      ],
                    );
                  },
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
