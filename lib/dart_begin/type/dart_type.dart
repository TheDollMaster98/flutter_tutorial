import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialTypes extends StatelessWidget {
  const DartTutorialTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart: Tipi di Dato'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo e spiegazione della sezione sui tipi di dato
            sectionTitle("Tipi di Dato in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "Dart supporta vari tipi di dato come;"
              "int, double, String, bool, dynamic, const, final, e late. \n"
              "Puoi dichiarare variabili con `var` per permettere a Dart di inferire il tipo automaticamente, "
              "o specificare esplicitamente il tipo se necessario. Vediamo alcuni esempi:",
            ),
            const SizedBox(height: 20),

            // Esempio di utilizzo dei tipi di dato in Dart
            sectionTitle("Esempio di Tipi di Dato"),
            const SizedBox(height: 10),
            propertyExample(
              "Tipi di Dato in Dart",
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Esempio di dichiarazione dei tipi di dato in Dart:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.grey.shade100,
                    child: const Text(
                      '''
void type() {
  // Uso di var, Dart inferisce il tipo automaticamente
  var pippo = "Pippo"; // **String**
  var a = 5; // **int**

  print(pippo); // Output: Pippo
  print(a);     // Output: 5

  // Uso di dynamic
  dynamic pinci;
  pinci = "Pinci"; // diventa **String**
  pinci = 10; // cambia in **int**
  print(pinci); // Output: 10

  // Dichiarazione con tipo specifico
  String ciao = "ciao";
  int b = 5;
  double c = 3.5;
  print(ciao); // Output: ciao
  print(b);    // Output: 5
  print(c);    // Output: 3.5

  // **bool**
  bool boolean = true;
  print(boolean); // Output: true

  // Conversioni numeriche
  var x = 0xFAFA; // Esadecimale **int**
  var y = 1.5e5;  // Esponenziale **double**
  print(x); // Output: 64250
  print(y); // Output: 150000.0

  // **const** e **final**
  const pi = 3.14; // **const**: valore immutabile a compile-time
  final DateTime now = DateTime.now(); // **final**: valore immutabile, ma determinato a runtime
  print(pi);  // Output: 3.14
  print(now); // Output: (data e ora correnti)

  // **late**: variabile dichiarata ma inizializzata successivamente
  late String greeting;
  greeting = "Hello, World!";
  print(greeting); // Output: Hello, World!

  // Interpolazione stringhe
  var string1 = "ciao";
  print("Interpolazione: \$string1"); // Output: Interpolazione: ciao
  print("Lunghezza: \${string1.length}"); // Output: Lunghezza: 4
}
                      ''',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            // Output del codice esemplificativo
            sectionTitle("Output del Codice"),
            explanationText(
              "Eseguendo il codice sopra, otterrai il seguente output:",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Output:",
              const Text(
                '''
------------------------type------------------------
Pippo
5
10
ciao
5
3.5
true
64250
150000.0
3.14
(data e ora correnti)
Hello, World!
Interpolazione: ciao
Lunghezza: 4
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
