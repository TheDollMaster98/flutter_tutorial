import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FibonacciSection extends StatelessWidget {
  const FibonacciSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        sectionTitle("Funzione Fibonacci"),
        explanationText(
          "La seguente funzione calcola il numero di Fibonacci utilizzando la ricorsione.",
        ),
        const SizedBox(height: 10),
        propertyExample(
          "Esempio di Fibonacci",
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              explanationText(
                "Definizione della funzione `firstFunc` che utilizza la funzione `fibonacci` per calcolare il numero di Fibonacci di 20.",
              ),
              const SizedBox(height: 10),
              explanationText(
                "Definizione della funzione `fibonacci` che calcola il numero di Fibonacci in modo ricorsivo:",
              ),
              const SizedBox(height: 10),
              const Text(
                '''
void firstFunc() {
  var i = 20;
  print('fibonacci(\$i) = \${fibonacci(i)}');
}

int fibonacci(int n) {
  return n < 2 ? n : (fibonacci(n - 1) + fibonacci(n - 2));
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
