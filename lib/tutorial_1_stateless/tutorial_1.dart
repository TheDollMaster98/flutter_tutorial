import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tutorial_1_stateless/components/text_head_line.dart';


// Flutter si basa solo sui componenti, quindi anche il titolo può essere un componente
// Questa classe estende StatelessWidget
// che è la base per i widget che descrivono una parte dell'interfaccia utente in termini di altri widget più bassi.
class Tutorial1 extends StatelessWidget {
  final int value;
  final String word;
  final String word2;
  final TextStyle style;
  // Posso inizializzare nel costruttore le variabili così:
  const Tutorial1(
      this.word,
      this.value,
      {
        super.key,
        required this.word2,
        required this.style
      }
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextHeadline()
      ),
      body: Center(
          child: Text(
              "$word $word2 numero: $value", style: style
          )
      ),
    );
  }
}