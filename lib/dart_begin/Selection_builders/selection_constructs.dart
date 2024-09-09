import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialSelectionConstructs extends StatelessWidget {
  const DartTutorialSelectionConstructs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Costruttori di Selezione in Dart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo e spiegazione generale dei costruttori di selezione
            sectionTitle("Costruttori di Selezione in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "I costruttori di selezione in Dart, come `if-else` e `switch-case`, "
              "permettono di eseguire blocchi di codice diversi in base a condizioni specifiche. "
              "Questi costruttori sono fondamentali per controllare il flusso del programma in base a valori o condizioni.",
            ),
            const SizedBox(height: 20),

            // Esempio di if-else
            sectionTitle("if-else"),
            const SizedBox(height: 10),
            explanationText(
              "L'istruzione `if-else` consente di eseguire blocchi di codice diversi in base a una o più condizioni. "
              "Se la condizione nell'`if` è vera, esegue il blocco corrispondente, altrimenti passa all'`else` o agli `else if` successivi.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di if-else",
              const Text(
                '''
void ifElse() {
  final eta = 20;
  String? tipo;

  if (eta < 10) {
    tipo = "Bambino";
  } else if (eta > 10 && eta < 18) {
    tipo = "Adolescente";
  } else if (eta > 18 && eta < 60) {
    tipo = "Adulto";
  } else {
    tipo = "Anziano";
  }

  print("All'età di \$eta anni, sei un \$tipo");
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di switch-case
            sectionTitle("switch-case"),
            const SizedBox(height: 10),
            explanationText(
              "L'istruzione `switch-case` è utilizzata per eseguire blocchi di codice diversi in base al valore di una variabile. "
              "È ideale quando si hanno molte condizioni che confrontano lo stesso valore.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di switch-case",
              const Text(
                '''
void switchCase() {
  var stato = 3;
  var tipo;

  switch (stato) {
    case 1:
      tipo = "Aperto";
      break;
    case 2:
      tipo = "Chiuso";
      break;
    case 3:
      tipo = "Socchiuso";
      break;
    default:
      tipo = "Sconosciuto";
  }

  print("Stato: \$tipo");
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Output del codice esemplificativo
            sectionTitle("Output del Codice"),
            explanationText(
              "Eseguendo i codici sopra, otterrai i seguenti output:",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Output:",
              const Text(
                '''
----------------------Costruttori di selezione----------------------
All'età di 20 anni, sei un Adulto

Stato: Socchiuso
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
