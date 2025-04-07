import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/widgets/text_head_line.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';
import 'package:flutter_tutorial/features/flutter_basic/cubit/stateless_cubit.dart';

// Flutter si basa solo sui componenti, quindi anche il titolo può essere un componente.
// Questa classe estende StatelessWidget, che è la base per i widget che descrivono
// una parte dell'interfaccia utente in termini di altri widget più bassi.
class StatelessPage extends StatelessWidget {
  final int value;
  final String word;
  final String word2;
  final TextStyle style;

  // Posso inizializzare nel costruttore le variabili così:
  const StatelessPage(this.word, this.value,
      {super.key, required this.word2, required this.style});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => StatelessCubit(),
      child: _StatelessView(
        value: value,
        word: word,
        word2: word2,
        style: style,
      ),
    );
  }
}

class _StatelessView extends StatelessWidget {
  final int value;
  final String word;
  final String word2;
  final TextStyle style;

  const _StatelessView({
    required this.value,
    required this.word,
    required this.word2,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextHeadline(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("StatelessWidget"),
            const SizedBox(height: 10),
            explanationText(
              "Un StatelessWidget descrive una parte dell'interfaccia utente che non può cambiare. "
                  "Esempio di visualizzazione di un testo che include parole e un numero passato come parametri:",
            ),
            const SizedBox(height: 20),
            propertyExample(
              "Il valore non cambia e rimane statico:",
              Center(
                child: Text(
                  "$word $word2 numero: $value",
                  style: style,
                  textAlign:
                  TextAlign.center, // Assicura che il testo sia centrato
                ),
              ),
            ),
            const SizedBox(height: 40),
            sectionTitle("Struttura di un StatelessWidget"),
            const SizedBox(height: 10),
            explanationText(
              "Esempio di un widget senza stato che mostra come definire e utilizzare un StatelessWidget.",
            ),
            propertyExample(
              "StatelessWidget",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  // Costruttore del widget con Key opzionale
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Costruisce l'interfaccia utente del widget
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Sono un StatelessWidget!',
        style: TextStyle(fontSize: 24),
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
