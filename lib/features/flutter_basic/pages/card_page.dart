import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';
import 'package:flutter_tutorial/features/flutter_basic/cubit/card_cubit.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CardCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Card"),
        ),
        body: const _CardBody(),
      ),
    );
  }
}

class _CardBody extends StatelessWidget {
  const _CardBody();

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<CardCubit>();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sectionTitle("Card"),
          const SizedBox(height: 10),
          explanationText("Viene utilizzato per creare un contenitore con un bordo arrotondato e un'ombra."),
          propertyExample(
            "Esempio di Card",
            Card(
              child: Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                child: const Text(
                  "Card normale",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          propertyExample(
            "Codice:",
            const Text('''
Card(
  child: Container(
    width: 200,
    height: 200,
    alignment: Alignment.center,
    child: Text(
      "Card normale",
      style: TextStyle(fontSize: 20),
    ),
  ),
),'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Proprietà della Card"),
          const SizedBox(height: 10),
          explanationText("La Card può essere personalizzata utilizzando diverse proprietà, come colore, elevazione e forma."),
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
          propertyExample(
            "Codice:",
            const Text('''
Card(
  color: Colors.blue.shade100,
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text(
      'Questa è una Card con colore di sfondo.',
      style: TextStyle(fontSize: 16),
      textAlign: TextAlign.center,
    ),
  ),
),'''),
          ),
          sectionTitle("Card con InkWell"),
          explanationText("È possibile utilizzare InkWell per gestire eventi di tap e mostrare effetti visivi."),
          propertyExample(
            "Tocca per incrementare il contatore.",
            Card(
              child: InkWell(
                onTap: cubit.incrementCounter,
                splashColor: Colors.purpleAccent.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Click: ${cubit.state}',
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          propertyExample(
            "Codice:",
            const Text('''
Card(
  child: InkWell(
    onTap: () => cubit.incrementCounter(),
    splashColor: Colors.purpleAccent.shade100,
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Click: counter',
        textAlign: TextAlign.center,
      ),
    ),
  ),
),'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Card con elevazione"),
          explanationText("È possibile aggiungere un'ombra alla Card utilizzando la proprietà elevazione."),
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
          sectionTitle("Card con bordi arrotondati"),
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
          sectionTitle("Card con margini esterni"),
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
    );
  }
}
