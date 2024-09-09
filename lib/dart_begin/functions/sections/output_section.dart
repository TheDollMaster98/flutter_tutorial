// sections/output_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class OutputSection extends StatelessWidget {
  const OutputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        sectionTitle("Output del Codice"),
        explanationText(
          "Eseguendo i codici sopra, otterrai i seguenti output:",
        ),
        const SizedBox(height: 10),
        propertyExample(
          "Output:",
          const Text(
            '''
----------------------------Funzione Fibonacci----------------------------
fibonacci(20) = 6765

---------------Funzioni con Parametri Opzionali---------------
Minorenne
Meow
Bark
Si piove

---------------Funzioni Anonime---------------
Maggiorenne

---------------Scope delle Funzioni---------------
Funzione scope di b in f: B
Funzione scope in g: C
Funzione scope di a in D: A
Funzione scope di d in h: D

---------------Cascate Notation---------------
Cascate Notation: [Pluto, Pinci, Cip, Giulio]
            ''',
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
