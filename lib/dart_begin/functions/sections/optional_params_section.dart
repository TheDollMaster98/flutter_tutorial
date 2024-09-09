import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class OptionalParamsSection extends StatelessWidget {
  const OptionalParamsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        sectionTitle("Funzioni con Parametri Opzionali"),
        const SizedBox(height: 10),
        explanationText(
          "In Dart, i parametri delle funzioni possono essere opzionali. "
          "Ci sono due tipi di parametri opzionali: posizionali (racchiusi tra `[]`) e nominati (racchiusi tra `{}`). "
          "I parametri opzionali nominati possono avere un valore di default specificato, rendendo il codice più leggibile e flessibile.",
        ),
        const SizedBox(height: 10),
        explanationText(
          "I parametri opzionali posizionali devono essere forniti nella stessa sequenza in cui sono dichiarati, mentre "
          "i parametri opzionali nominati possono essere forniti in qualsiasi ordine e devono essere specificati per nome.",
        ),
        const SizedBox(height: 10),
        propertyExample(
          "Esempio di funzioni con parametri opzionali e funzioni anonime",
          const Text(
            '''
void secondFunc() {
  final eta = 17;
  final num1 = 2;
  var num2;

  printMagg2(isMaggiorenne2, eta);
  printBark(isCatOrDog, num1);
  printBark(isCatOrDog, num2);
  pioggia(num: eta);
}

bool isMaggiorenne2(int eta) => eta >= 18;

void printMagg2(bool Function(int) func, [int eta = 18]) {
  print(func(eta) ? "Maggiorenne" : "Minorenne");
}

int isCatOrDog(int num) => num % 2 == 0 ? 0 : 1;

void printBark(int Function(int) func, [int? num]) {
  print(func(num ?? 5) == 0 ? "Meow" : "Bark");
}

void pioggia({int num = 7}) {
  num > 5 ? print("Si piove") : print("Non piove");
}
            ''',
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
