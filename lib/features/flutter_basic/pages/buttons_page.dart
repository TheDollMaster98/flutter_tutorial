import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';
import 'package:flutter_tutorial/features/flutter_basic/cubit/buttons_cubit.dart';

// Questa pagina mostra i vari tipi di pulsanti in Flutter
// con esempi pratici di utilizzo e un Cubit per gestire lo stato.
class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ButtonsCubit(),
      child: const _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ButtonsCubit>();

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

            sectionTitle("Bottone con testo"),
            explanationText("TextButton: mostra un testo che descrive l'azione."),
            const SizedBox(height: 10),
            propertyExample(
              "TextButton",
              TextButton(
                onPressed: cubit.toggleTap,
                child: const Text(
                  "Text Button",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            propertyExample("Codice TextButton:", const Text('''
TextButton(
  onPressed: onButtonPressed,
  child: const Text(
    "Text Button",
     style: TextStyle(fontSize: 30),
  ),
),''')),

            const SizedBox(height: 20),
            sectionTitle("Bottone ombreggiato"),
            explanationText("ElevatedButton: pulsante con inchiostro splash e ombreggiatura."),
            const SizedBox(height: 10),
            propertyExample(
              "ElevatedButton",
              ElevatedButton(
                onPressed: cubit.toggleTap,
                child: const Text("Elevated Button", style: TextStyle(fontSize: 30)),
              ),
            ),
            propertyExample("Codice ElevatedButton:", const Text('''
ElevatedButton(
  onPressed: onButtonPressed,
  child: const Text(
    "Elevated Button",
    style: TextStyle(fontSize: 30),
  ),
),''')),

            const SizedBox(height: 20),
            sectionTitle("Bottone con icona"),
            explanationText("IconButton: pulsante con un'icona senza testo."),
            const SizedBox(height: 10),
            propertyExample(
              "IconButton",
              IconButton(
                onPressed: cubit.toggleTap,
                icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
              ),
            ),
            propertyExample("Codice IconButton:", const Text('''
IconButton(
  onPressed: onButtonPressed,
  icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
),''')),

            const SizedBox(height: 20),
            sectionTitle("InkWell"),
            explanationText(
              "InkWell è un widget che reagisce ai tocchi, mostrando un'animazione di splash quando viene toccato. "
                  "È utile per rendere tappabili i widget non interattivi come i Container o le Card.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "InkWell",
              BlocBuilder<ButtonsCubit, bool>(
                builder: (context, isTapped) {
                  return InkWell(
                    onTap: cubit.toggleTap,
                    splashColor: Colors.purpleAccent,
                    child: Card(
                      color: isTapped ? Colors.blue.shade200 : Colors.blue.shade100,
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
                  );
                },
              ),
            ),
            propertyExample("Codice:", const Text('''
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
),''')),

            const SizedBox(height: 20),
            sectionTitle("FloatingActionButton"),
            explanationText(
              "Il `FloatingActionButton` (FAB) è un pulsante circolare che rappresenta l'azione principale della tua applicazione...",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "FloatingActionButton",
              FloatingActionButton(
                heroTag: "floatingButton1",
                onPressed: cubit.toggleTap,
                child: const Icon(Icons.add),
              ),
            ),
            propertyExample("Codice FloatingActionButton:", const Text('''
FloatingActionButton(
  heroTag: "floatingButton1",
  onPressed: onButtonPressed,
  child: const Icon(Icons.add),
),''')),

            const SizedBox(height: 20),
            sectionTitle("FloatingActionButton Esteso"),
            explanationText(
              "Il `FloatingActionButton.extended` è una versione estesa del FAB...",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "FloatingActionButton.extended",
              FloatingActionButton.extended(
                heroTag: "floatingButton2",
                backgroundColor: Colors.red.shade100,
                foregroundColor: Colors.red.shade900,
                splashColor: Colors.red.shade200,
                icon: const Icon(Icons.add),
                label: const Text("Email"),
                onPressed: cubit.toggleTap,
              ),
            ),
            propertyExample("Codice FloatingActionButton.extended:", const Text('''
FloatingActionButton.extended(
  heroTag: "floatingButton2",
  backgroundColor: Colors.red.shade100,
  foregroundColor: Colors.red.shade900,
  splashColor: Colors.red.shade200,
  icon: const Icon(Icons.add),
  label: const Text("Email"),
  onPressed: onButtonPressed,
),''')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: "floatingButton3",
        backgroundColor: Colors.red.shade100,
        foregroundColor: Colors.red.shade900,
        splashColor: Colors.red.shade200,
        icon: const Icon(Icons.add),
        label: const Text("Email"),
        onPressed: cubit.toggleTap,
      ),
    );
  }
}
