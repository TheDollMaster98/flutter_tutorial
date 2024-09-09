// sections/scope_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class ScopeSection extends StatelessWidget {
  const ScopeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        sectionTitle("Scope delle Funzioni"),
        const SizedBox(height: 10),
        explanationText(
          "Lo scope in Dart si riferisce alla visibilità delle variabili e funzioni all'interno del codice. "
          "Le variabili dichiarate all'interno di una funzione sono accessibili solo all'interno di quella funzione, "
          "rendendo lo scope locale alla funzione stessa.",
        ),
        const SizedBox(height: 10),
        explanationText(
          "L'uso corretto dello scope aiuta a prevenire conflitti di nome e a mantenere il codice organizzato e comprensibile. "
          "Esempi di scope includono variabili locali, variabili globali, e variabili che esistono solo all'interno di funzioni annidate.",
        ),
        const SizedBox(height: 10),
        propertyExample(
          "Esempio di Scope",
          const Text(
            '''
void funcScope() {
  var a = "A";
  void f() {
    var b = "B";
    print(" Funzione scope di b in f: \$b");
    void g() {
      var c = "C";
      print(" Funzione scope in g: \$c");
      void h() {
        var d = "D";
        print(" Funzione scope di a in D: \$a");
        print(" Funzione scope di d in h: \$d");
      }
      h();
    }
    g();
  }
  f();
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
