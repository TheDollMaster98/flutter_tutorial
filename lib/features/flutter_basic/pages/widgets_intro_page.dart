import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

class WidgetsIntroPage extends StatelessWidget {
  const WidgetsIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Intro ai Widget'),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: _WidgetsContent(),
        ),
      ),
    );
  }
}

// Questa è la parte di UI separata
class _WidgetsContent extends StatelessWidget {
  const _WidgetsContent();

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterCubit>().state;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sectionTitle("Cos'è un Widget?"),
          const SizedBox(height: 10),
          explanationText(
            "In Flutter, tutto è un widget. Sono i mattoni fondamentali della UI. "
                "Ogni elemento della UI è un widget (testo, bottone, layout, ecc.).",
          ),
          const SizedBox(height: 20),

          sectionTitle("Tipi di Widget"),
          const SizedBox(height: 10),
          explanationText("I principali sono StatelessWidget e StatefulWidget."),
          const SizedBox(height: 20),

          sectionTitle("StatelessWidget"),
          explanationText("Non cambia mai stato durante l'esecuzione."),
          propertyExample("Esempio di StatelessWidget", const StatelessExample()),

          const SizedBox(height: 20),

          sectionTitle("StatefulWidget + Cubit"),
          explanationText("Questa versione usa un Cubit per cambiare lo stato."),
          propertyExample(
            "Esempio con Cubit",
            Column(
              children: [
                Text("Contatore: $counter", style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => context.read<CounterCubit>().increment(),
                  child: const Text("Incrementa"),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          sectionTitle("InheritedWidget"),
          explanationText(
            "Permette di condividere dati tra widget discendenti senza passare manualmente i dati.",
          ),
          propertyExample("Esempio: Vedi codice sotto", const SizedBox.shrink()),

          const SizedBox(height: 20),
          propertyExample(
            "Codice InheritedWidget:",
            const Text("Vedi sezione codice (in tutorial)"),
          ),
        ],
      ),
    );
  }
}

// Cubit per il contatore:
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
}

// Esempio di StatelessWidget:
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
