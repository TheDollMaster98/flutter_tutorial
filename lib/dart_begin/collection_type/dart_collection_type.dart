import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialCollectionType extends StatelessWidget {
  const DartTutorialCollectionType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collezioni in Dart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Spiegazione delle collezioni
            sectionTitle("Collezioni in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "In Dart, una collezione è una struttura di dati che permette di gestire un insieme di elementi correlati. "
              "Le collezioni sono utilizzate per immagazzinare, organizzare e manipolare gruppi di oggetti, che possono essere dello stesso tipo o di tipi diversi. "
              "Le collezioni più comuni includono List, Set, e Map. "
              "Sono fondamentali per gestire dati complessi all'interno delle applicazioni in modo flessibile ed efficiente.",
            ),
            const SizedBox(height: 20),

            // Esempio di List
            sectionTitle("List (Array)"),
            const SizedBox(height: 10),
            explanationText(
              "Una List è una collezione ordinata di elementi che può contenere duplicati. "
              "Gli elementi in una lista sono accessibili tramite indici.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di List",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
void list() {
  List list = [];
  print(list);

  List<String> newList = ["pinci", "cip", "pippo"];
  print(newList);
  print("Stampa il valore della cella n2: " + newList[1].toString());

  var listNewListNum = [1, 2, 3, 8, 9, 11, 5];
  print(listNewListNum);

  // Aggiungo alla fine della lista:
  listNewListNum.add(6);
  print("Aggiungo alla fine della lista il valore 6: " + listNewListNum.toString());

  // Rimuovo il valore 3:
  listNewListNum.remove(3);
  print("Rimosso il valore numero 3: " + listNewListNum.toString());

  // Rimuovo il valore nell'indice 2:
  listNewListNum.removeAt(2);
  print("Rimosso il valore nell'indice 2: " + listNewListNum.toString());
}''',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Set
            sectionTitle("Set"),
            const SizedBox(height: 10),
            explanationText(
              "Un Set è una collezione di elementi unici e non ordinati. "
              "A differenza delle liste, un set non permette duplicati e non utilizza indici per l'accesso agli elementi, "
              "ma puoi vedere se un elemento è presente utilizzando il metodo `.contains()`.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Set",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
void set() {
  Set mySet = {"pinci", "cip", 10, true};
  print("Il mio primo set: \$mySet");

  mySet.add(10.5);
  print("Posso usare add nei set: \$mySet");

  mySet.contains(10);
  print("Posso vedere se 10 è nel mio set: \$mySet");

  mySet.contains(30);
  print("Posso vedere se 30 è nel mio set: \$mySet");

  mySet.remove(10);
  print("Posso rimuovere un elemento specifico, nel mio caso 10: \$mySet");

  Set<String> mySet2 = {"pinci", "cip"};
  print("Set tipizzato: \$mySet2");
}''',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di Map
            sectionTitle("Dizionari (Map)"),
            const SizedBox(height: 10),
            explanationText(
              "Un Dizionario (Map) è una collezione di coppie chiave-valore, dove ogni chiave è unica. "
              "I dizionari sono ideali per gestire dati strutturati e accessibili tramite chiavi, come i dizionari in altri linguaggi.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di Map",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
// uso typedef per definire degli alias se ho più tipi, o tipi innestati:
typedef mapStringInt = Map<String, int>;

/// Mappe chiave - valore.
void dictionary() {
  var dictionary = {"name": "Pinci", "age": 10, 10: "Voto!"};
  print("Il mio primo dizionario: \$dictionary");

  print("Stampami il valore nella chiave name: \${dictionary["name"]}");
  print("Stampami il valore nella chiave ciao non presente nel dizionario: \${dictionary["ciao"]}");

  dictionary["velocità"] = 10;
  print("Per aggiungere una nuova chiave - valore al dizionario: \$dictionary");

  dictionary.remove(10);
  print("Per rimuovere una valore dal dizionario (rimosso 10: 'Voto!'): \$dictionary");

  print("Quanti elementi possiede il mio dizionario? \${dictionary.length}");

  // Problema di più tipi in una mappa:
  mapStringInt dictionary2 = {
    "Pinci": 10,
    "Cip": 33,
    "pippo": 77,
  };

  print(dictionary2);
}''',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Sezione Output Finale
            sectionTitle("Output Finale"),
            const SizedBox(height: 10),
            explanationText(
              "Qui sotto trovi l'output combinato degli esempi delle collezioni in Dart. "
              "Questo mostra come Dart gestisce le collezioni List, Set e Map.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Output",
              const Text(
                '''
// Output di List
[]
["pinci", "cip", "pippo"]
Stampa il valore della cella n2: cip
[1, 2, 3, 8, 9, 11, 5]
Aggiungo alla fine della lista il valore 6: [1, 2, 3, 8, 9, 11, 5, 6]
Rimosso il valore numero 3: [1, 2, 8, 9, 11, 5, 6]
Rimosso il valore nell'indice 2: [1, 2, 9, 11, 5, 6]

// Output di Set
Il mio primo set: {pinci, cip, 10, true}
Posso usare add nei set: {pinci, cip, 10, true, 10.5}
Posso vedere se 10 è nel mio set: true
Posso vedere se 30 è nel mio set: false
Posso rimuovere un elemento specifico, nel mio caso 10: {pinci, cip, true, 10.5}
Set tipizzato: {pinci, cip}

// Output di Map
Il mio primo dizionario: {name: Pinci, age: 10, 10: Voto!}
Stampami il valore nella chiave name: Pinci
Stampami il valore nella chiave ciao non presente nel dizionario: null
Per aggiungere una nuova chiave - valore al dizionario: {name: Pinci, age: 10, 10: Voto!, velocità: 10}
Per rimuovere una valore dal dizionario (rimosso 10: 'Voto!'): {name: Pinci, age: 10, velocità: 10}
Quanti elementi possiede il mio dizionario? 3
{Pinci: 10, Cip: 33, pippo: 77}
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
