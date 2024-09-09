import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';
import 'sections/fibonacci_section.dart';
import 'sections/optional_params_section.dart';
import 'sections/anonymous_functions_section.dart';
import 'sections/scope_section.dart';
import 'sections/cascade_notation_section.dart';
import 'sections/output_section.dart';

class FunctionsPage extends StatelessWidget {
  const FunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart: Funzioni'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Funzioni in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "Le funzioni in Dart sono blocchi di codice che eseguono operazioni specifiche e possono essere riutilizzati in "
              "diverse parti del programma. Le funzioni possono accettare parametri, restituire valori, e possono essere dichiarate "
              "con vari livelli di visibilità e flessibilità (es. funzioni anonime, lambdas, funzioni con parametri opzionali).",
            ),
            const SizedBox(height: 10),
            explanationText(
              "Una funzione in Dart è strutturata in modo semplice ma flessibile. "
              "Ecco le parti principali che compongono una funzione in Dart:",
            ),
            const SizedBox(height: 10),
            explanationText(
              "- Nome della Funzione: Identifica la funzione e permette di richiamarla nel codice.",
            ),
            explanationText(
              "- Parametri: Racchiusi tra parentesi tonde, opzionali, che permettono di passare valori alla funzione.",
            ),
            explanationText(
              "- Tipo di Ritorno: Indica il tipo di valore che la funzione restituirà, opzionale se la funzione non restituisce nulla (`void`).",
            ),
            explanationText(
              "- Corpo della Funzione: Contiene il blocco di codice che verrà eseguito quando la funzione è chiamata. Può restituire un valore con `return`.",
            ),
            const SizedBox(height: 20),
            sectionTitle("Struttura di una Funzione"),
            const SizedBox(height: 10),
            explanationText(
              "Esempio di struttura di una funzione in Dart:",
            ),
            const SizedBox(height: 10),
            // Mostra un esempio di struttura di una funzione
            propertyExample(
              "Esempio di Funzione",
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  explanationText(
                    "- Dichiarazione della Funzione:\n`tipoDiRitorno nomeFunzione(tipo parametro) { \n...\n }`",
                  ),
                  const SizedBox(height: 10),
                  explanationText(
                    "- Esempio Completo:",
                  ),
                  const SizedBox(height: 10),
                  explanationText(
                    '''
int somma(int a, int b) {
  // Esegue la somma di a e b
  return a + b; // Restituisce il risultato della somma
}

// Funzione principale che utilizza la funzione somma
void main() {
  int risultato = somma(3, 5); // Chiama la funzione somma con 3 e 5
  print('Il risultato è: \$risultato'); // Stampa il risultato: Il risultato è: 8
}
                    ''',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Richiama le singole sezioni
            const FibonacciSection(),
            const OptionalParamsSection(),
            const AnonymousFunctionsSection(),
            const ScopeSection(),
            const CascadeNotationSection(),
            const OutputSection(),
          ],
        ),
      ),
    );
  }
}
