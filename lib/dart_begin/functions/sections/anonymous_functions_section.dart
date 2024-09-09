// sections/anonymous_functions_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class AnonymousFunctionsSection extends StatelessWidget {
  const AnonymousFunctionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        sectionTitle("Funzioni Anonime"),
        const SizedBox(height: 10),
        explanationText(
          "Le funzioni anonime, o lambda, sono funzioni che non hanno un nome e vengono utilizzate direttamente dove sono definite. "
          "Sono comunemente usate come callback o funzioni di ordine superiore.",
        ),
        const SizedBox(height: 10),
        explanationText(
          "Una funzione anonima può essere assegnata a una variabile, passata come parametro o eseguita immediatamente. "
          "Questo permette di creare funzioni rapide e leggere per operazioni specifiche senza dover dichiarare una funzione separata.",
        ),
        const SizedBox(height: 10),
        propertyExample(
          "Esempio di funzione anonima",
          const Text(
            '''
typedef funcMaggiorenne = bool Function(int);

void anonymousFunc() {
  final funcMaggiorenne funcMaggiorenneScope = (int eta) => eta >= 18;
  printMagg(funcMaggiorenneScope);
}

void printMagg(bool Function(int) isMaggiorenne, {int eta = 18}) {
  print(isMaggiorenne(eta) ? "Maggiorenne" : "Minorenne");
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
