import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialTypes extends StatelessWidget {
  const DartTutorialTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipi di Dato e Null Safety'),
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
              "Dart supporta vari tipi di dato come int, double, String, bool, dynamic, const, final, e late. "
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
  var pippo = "Pippo"; // String
  var a = 5; // int

  print(pippo); // Output: Pippo
  print(a);     // Output: 5

  // Uso di dynamic
  dynamic pinci;
  pinci = "Pinci"; // diventa String
  pinci = 10; // cambia in int
  print(pinci); // Output: 10

  // Dichiarazione con tipo specifico
  String ciao = "ciao";
  int b = 5;
  double c = 3.5;
  print(ciao); // Output: ciao
  print(b);    // Output: 5
  print(c);    // Output: 3.5

  // bool
  bool boolean = true;
  print(boolean); // Output: true

  // Conversioni numeriche
  var x = 0xFAFA; // Esadecimale int
  var y = 1.5e5;  // Esponenziale double
  print(x); // Output: 64250
  print(y); // Output: 150000.0

  // const e final
  const pi = 3.14; // const: valore immutabile a compile-time
  final DateTime now = DateTime.now(); // final: valore immutabile, ma determinato a runtime
  print(pi);  // Output: 3.14
  print(now); // Output: (data e ora correnti)

  // late: variabile dichiarata ma inizializzata successivamente
  late String greeting;
  greeting = "Hello, World!";
  print(greeting); // Output: Hello, World!
}
                      ''',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Sezione sulla Null Safety
            sectionTitle("Null Safety"),
            const SizedBox(height: 10),
            explanationText(
              "La null safety è attiva di default in Dart dalla versione 2.14+. "
              "Essa garantisce che le variabili dichiarate non possano contenere valori nulli a meno che non siano dichiarate come tali, "
              "aggiungendo un punto interrogativo `?` dopo il tipo. Questo aiuta a prevenire errori a runtime legati ai valori nulli.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Null Safety",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
void nullSafety() {
  // Uso di var, tipo dynamic
  var a; 
  print("Valore di a: \$a"); // Stamperà null

  // Stringa nullable con null safety
  String? b; 
  print("Valore di b: \$b"); // Stamperà null

  // Lista di stringhe
  List<String> names = ["Pippo", "Pluto", "Cip"];

  // Stringa nullable
  String? pinci;
  pinci = "Pinci";

  // Aggiunta di un valore nullable alla lista
  names.add(pinci); 
  print("Aggiunto un valore nullable \$pinci a \$names");
}
                    ''',
                    style: TextStyle(fontSize: 14),
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
------------------------Null Safety------------------------
Valore di a: null
Valore di b: null
Aggiunto un valore nullable Pinci a [Pippo, Pluto, Cip, Pinci]
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
