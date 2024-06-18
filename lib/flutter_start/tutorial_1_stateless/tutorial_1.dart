import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';
import 'package:flutter_tutorial/flutter_start/tutorial_1_stateless/components/text_head_line.dart';

// Flutter si basa solo sui componenti, quindi anche il titolo può essere un componente.
// Questa classe estende StatelessWidget, che è la base per i widget che descrivono
// una parte dell'interfaccia utente in termini di altri widget più bassi.
class Tutorial1 extends StatelessWidget {
  final int value;
  final String word;
  final String word2;
  final TextStyle style;

  // Posso inizializzare nel costruttore le variabili così:
  const Tutorial1(this.word, this.value,
      {super.key, required this.word2, required this.style});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextHeadline(),
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
