// sections/cascade_notation_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class CascadeNotationSection extends StatelessWidget {
  const CascadeNotationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        sectionTitle("Cascate Notation"),
        const SizedBox(height: 10),
        explanationText(
          "La notazione a cascata (`..`) permette di chiamare più metodi su un oggetto in sequenza, "
          "evitando la necessità di ripetere l'oggetto per ogni chiamata. "
          "Questo rende il codice più conciso e leggibile, specialmente quando si modificano oggetti complessi.",
        ),
        const SizedBox(height: 10),
        explanationText(
          "È utile per eseguire più operazioni su un oggetto, come aggiungere elementi a una lista o configurare un oggetto complesso.",
        ),
        const SizedBox(height: 10),
        propertyExample(
          "Esempio di Cascate Notation",
          const Text(
            '''
void cascateNotation() {
  final list = ["Pippo", "Pluto", "Pinci", "Cip"];
  addItem("Giulio", list: list);
  print("Cascate Notation: \$list");
}

List<String> addItem(String item, {required List<String> list}) => list
  ..add(item)
  ..removeAt(0);
            ''',
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
