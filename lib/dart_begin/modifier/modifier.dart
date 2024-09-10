import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialModifiers extends StatelessWidget {
  const DartTutorialModifiers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modificatori'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo e spiegazione della sezione sui modificatori
            sectionTitle("Modificatori in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "Dart offre tre principali modificatori per gestire l'inizializzazione e l'immutabilità delle variabili: `late`, `final` e `const`. "
              "Questi modificatori sono utili per ottimizzare l'uso della memoria e migliorare le prestazioni dell'applicazione, "
              "oltre a fornire un controllo più preciso sull'assegnazione dei valori delle variabili.",
            ),
            const SizedBox(height: 20),

            // Esempio di utilizzo dei modificatori in Dart
            sectionTitle("Esempio di Modifier"),
            const SizedBox(height: 10),
            propertyExample(
              "Modificatori: late, final e const",
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Descrizione dei modificatori in Dart:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.grey.shade100,
                    child: const Text(
                      '''
/// - `late` viene utilizzato per variabili il cui valore può essere assegnato in un secondo momento.
/// - `final` è utilizzato per variabili il cui valore è assegnato una sola volta e non cambierà.
/// - `const` viene utilizzato per dichiarare costanti con valori noti a tempo di compilazione.

/// - `final`:
///   1) Da usare quando il valore di una variabile sarà assegnato solo una volta e non cambierà.
///   2) Utile per garantire l'immutabilità di una variabile.
///   3) Prestazionalmente efficiente perché il compilatore può ottimizzare in base a questa informazione.

/// - `late`:
///   1) Da usare quando devi inizializzare una variabile in un secondo momento, ma vuoi evitare l'inizializzazione anticipata.
///   2) Utile in situazioni in cui la variabile potrebbe non essere inizializzata durante la dichiarazione, ma solo quando è effettivamente necessaria.
///   3) Attenzione: se non viene inizializzata prima dell'uso, può causare errori a runtime.

/// - `const`:
///   1) Da usare quando il valore di una variabile è noto a tempo di compilazione e non cambierà mai.
///   2) Utile per dichiarare costanti numeriche, stringhe o booleane.
///   3) Può portare a ottimizzazioni a livello di compilazione.
                      ''',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di utilizzo di `late`
            sectionTitle("Uso di `late`"),
            const SizedBox(height: 10),
            explanationText(
              "`late` permette di dichiarare variabili che verranno inizializzate in un secondo momento, "
              "evitando di allocare memoria prima che sia necessario. È utile quando non si conosce il valore al momento della dichiarazione.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di `late`",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
void late() {
  late String name;
  name = "Pinci"; // Inizializzo la variabile qui e la alloco.
  print("Valore late \$name"); // Stampa "Pinci"
}
                    ''',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di utilizzo di `final`
            sectionTitle("Uso di `final`"),
            const SizedBox(height: 10),
            explanationText(
              "`final` è utilizzato per dichiarare variabili il cui valore viene assegnato solo una volta e non può essere modificato. "
              "È particolarmente utile per garantire l'immutabilità di oggetti e valori che non devono cambiare dopo l'assegnazione iniziale.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di `final`",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
void finale() {
  final name1 = "Pinci"; // Inizializzo la variabile qui.
  final String name2 = "Cip";
  print("Valore final \$name1. Valore final con tipo \$name2"); // Stampa "Valore final Pinci. Valore final con tipo Cip"
}
                    ''',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di utilizzo di `const`
            sectionTitle("Uso di `const`"),
            const SizedBox(height: 10),
            explanationText(
              "`const` è usato per dichiarare costanti che sono note a tempo di compilazione. "
              "Queste costanti non vengono allocate in memoria durante l'esecuzione, migliorando l'efficienza e riducendo l'uso della memoria.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di `const`",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
void costante() {
  const a = 5;
  print("Costante \$a, non andrà a finire in memoria."); // Stampa "Costante 5, non andrà a finire in memoria."
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
Valore late Pinci
Valore final Pinci. Valore final con tipo Cip
Costante 5, non andrà a finire in memoria.
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
