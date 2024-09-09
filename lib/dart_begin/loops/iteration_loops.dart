import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialIterationLoops extends StatelessWidget {
  const DartTutorialIterationLoops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cicli di Iterazione in Dart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo e spiegazione generale dei cicli di iterazione
            sectionTitle("Cicli di Iterazione in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "I cicli di iterazione permettono di eseguire un blocco di codice ripetutamente fino a quando una condizione è vera. "
              "Dart supporta vari tipi di cicli: `for`, `while`, `do-while`, e cicli sulle collezioni con `for-in` e `forEach`. "
              "Questi costrutti sono fondamentali per iterare su dati o ripetere operazioni.",
            ),
            const SizedBox(height: 20),

            // Esempio di for loop
            sectionTitle("Ciclo for"),
            const SizedBox(height: 10),
            explanationText(
              "Il ciclo `for` è utilizzato quando si conosce il numero esatto di iterazioni. "
              "Può includere istruzioni di controllo come `continue` per saltare un'iterazione o `break` per uscire dal ciclo.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di ciclo for",
              const Text(
                '''
void forLoop() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Salta l'iterazione quando i è 2
    } else if (i > 3) {
      break; // Esce dal ciclo quando i è maggiore di 3
    }
    print("ciao nel for loop \${i + 1}");
  }
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di while loop
            sectionTitle("Ciclo while"),
            const SizedBox(height: 10),
            explanationText(
              "Il ciclo `while` continua a eseguire il blocco di codice finché la condizione è vera. "
              "La condizione viene valutata prima di ogni iterazione, quindi il ciclo potrebbe non eseguire alcuna iterazione se la condizione è falsa dall'inizio.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di ciclo while",
              const Text(
                '''
void whileLoop() {
  int i = 0;

  while (i < 5) {
    print("ciao nel while \${i + 1}");
    i++;
  }
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di do-while loop
            sectionTitle("Ciclo do-while"),
            const SizedBox(height: 10),
            explanationText(
              "Il ciclo `do-while` esegue il blocco di codice almeno una volta, poiché la condizione è valutata alla fine di ogni iterazione.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di ciclo do-while",
              const Text(
                '''
void doWhileLoop() {
  int i = 0;

  do {
    print("ciao nel do while \${i + 1}");
    i++;
  } while (i < 5);
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di iterazione su collezioni
            sectionTitle("Iterazione su Collezioni"),
            const SizedBox(height: 10),
            explanationText(
              "Dart offre cicli specifici per iterare su collezioni come `List`, `Set` e `Map`. "
              "Puoi usare `for-in` per scorrere gli elementi di una collezione, o `forEach` per applicare una funzione a ogni elemento.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di iterazione su collezioni",
              const Text(
                '''
void collectionLoop() {
  final list = ["Pippo", "Pinci", "Cip"];

  for (final name in list) {
    print("loop nella lista \$name");
  }

  list.forEach((name) {
    print("forEach: loop nella lista \$name");
  });
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
----------------------Ciclo for----------------------
ciao nel for loop 1
ciao nel for loop 2
ciao nel for loop 4
----------------------Ciclo while----------------------
ciao nel while 1
ciao nel while 2
ciao nel while 3
ciao nel while 4
ciao nel while 5
----------------------Ciclo do-while----------------------
ciao nel do while 1
ciao nel do while 2
ciao nel do while 3
ciao nel do while 4
ciao nel do while 5
----------------------Iterazione su collezioni----------------------
loop nella lista Pippo
loop nella lista Pinci
loop nella lista Cip
forEach: loop nella lista Pippo
forEach: loop nella lista Pinci
forEach: loop nella lista Cip
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
