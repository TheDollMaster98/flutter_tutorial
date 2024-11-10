import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial8 extends StatelessWidget {
  const FlutterStartTutorial8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column & Row'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Esempio di una Row normale
            sectionTitle("Widget Row"),
            const SizedBox(height: 10),
            explanationText(
              "Il widget Row dispone i suoi figli in una riga orizzontale.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Row normale",
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.grey.shade100,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Elemento 1", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 10),
                    Text("Elemento 2", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 10),
                    Text("Elemento 3", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Elemento 1", style: TextStyle(fontSize: 20)),
    SizedBox(width: 10),
    Text("Elemento 2", style: TextStyle(fontSize: 20)),
    SizedBox(width: 10),
    Text("Elemento 3", style: TextStyle(fontSize: 20)),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            // Esempio di una Column normale
            sectionTitle("Widget Column"),
            const SizedBox(height: 10),
            explanationText(
              "Il widget Column dispone i suoi figli in una colonna verticale.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Column normale",
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey.shade100,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Riga 1", style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                    Text("Riga 2", style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                    Text("Riga 3", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Riga 1", style: TextStyle(fontSize: 20)),
    SizedBox(height: 10),
    Text("Riga 2", style: TextStyle(fontSize: 20)),
    SizedBox(height: 10),
    Text("Riga 3", style: TextStyle(fontSize: 20)),
  ],
),'''),
            ),
            const SizedBox(height: 40),
            // Titolo della sezione per MainAxisAlignment
            sectionTitle("MainAxisAlignment"),
            const SizedBox(height: 10),
            // Testo che spiega l'uso di MainAxisAlignment
            explanationText(
              "La proprietà MainAxisAlignment controlla la posizione dei widget figli lungo l'asse principale dell'area disponibile.",
            ),
            const SizedBox(height: 10),
            // Esempio di utilizzo di MainAxisAlignment.center
            propertyExample(
              "MainAxisAlignment.center",
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    coloredBox(Colors.blue),
                    const SizedBox(width: 10),
                    coloredBox(Colors.green),
                    const SizedBox(width: 10),
                    coloredBox(Colors.red),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    coloredBox(Colors.blue),
    SizedBox(width: 10),
    coloredBox(Colors.green),
    SizedBox(width: 10),
    coloredBox(Colors.red),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            // Esempio di utilizzo di MainAxisAlignment.start
            propertyExample(
              "MainAxisAlignment.start",
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    coloredBox(Colors.blue),
                    const SizedBox(width: 10),
                    coloredBox(Colors.green),
                    const SizedBox(width: 10),
                    coloredBox(Colors.red),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    coloredBox(Colors.blue),
    SizedBox(width: 10),
    coloredBox(Colors.green),
    SizedBox(width: 10),
    coloredBox(Colors.red),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            // Esempio di utilizzo di MainAxisAlignment.end
            propertyExample(
              "MainAxisAlignment.end",
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    coloredBox(Colors.blue),
                    const SizedBox(width: 10),
                    coloredBox(Colors.green),
                    const SizedBox(width: 10),
                    coloredBox(Colors.red),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    coloredBox(Colors.blue),
    SizedBox(width: 10),
    coloredBox(Colors.green),
    SizedBox(width: 10),
    coloredBox(Colors.red),
  ],
),'''),
            ),
            const SizedBox(height: 40),
            // Titolo della sezione per CrossAxisAlignment
            sectionTitle("CrossAxisAlignment"),
            const SizedBox(height: 10),
            // Testo che spiega l'uso di CrossAxisAlignment
            explanationText(
              "La proprietà CrossAxisAlignment controlla la posizione dei widget figli lungo l'asse trasversale dell'area disponibile.",
            ),
            const SizedBox(height: 10),
            // Esempio di utilizzo di CrossAxisAlignment.center
            propertyExample(
              "CrossAxisAlignment.center",
              Center(
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.grey.shade100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      coloredBox(Colors.blue),
                      const SizedBox(width: 10),
                      coloredBox(Colors.green),
                      const SizedBox(width: 10),
                      coloredBox(Colors.red),
                    ],
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    coloredBox(Colors.blue),
    SizedBox(width: 10),
    coloredBox(Colors.green),
    SizedBox(width: 10),
    coloredBox(Colors.red),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            // Esempio di utilizzo di CrossAxisAlignment.start
            propertyExample(
              "CrossAxisAlignment.start",
              Center(
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.grey.shade100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      coloredBox(Colors.blue),
                      const SizedBox(width: 10),
                      coloredBox(Colors.green),
                      const SizedBox(width: 10),
                      coloredBox(Colors.red),
                    ],
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    coloredBox(Colors.blue),
    SizedBox(width: 10),
    coloredBox(Colors.green),
    SizedBox(width: 10),
    coloredBox(Colors.red),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            // Esempio di utilizzo di CrossAxisAlignment.end
            propertyExample(
              "CrossAxisAlignment.end",
              Center(
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.grey.shade100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      coloredBox(Colors.blue),
                      const SizedBox(width: 10),
                      coloredBox(Colors.green),
                      const SizedBox(width: 10),
                      coloredBox(Colors.red),
                    ],
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    coloredBox(Colors.blue),
    SizedBox(width: 10),
    coloredBox(Colors.green),
    SizedBox(width: 10),
    coloredBox(Colors.red),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "CrossAxisAlignment.stretch",
              Center(
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.grey.shade100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      coloredBox(Colors.blue),
                      const SizedBox(width: 10),
                      coloredBox(Colors.green),
                      const SizedBox(width: 10),
                      coloredBox(Colors.red),
                    ],
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    coloredBox(Colors.blue),
    SizedBox(width: 10),
    coloredBox(Colors.green),
    SizedBox(width: 10),
    coloredBox(Colors.red),
  ],
),'''),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "CrossAxisAlignment.baseline",
              Center(
                child: Container(
                  width: 300,
                  height: 100,
                  color: Colors.grey.shade100,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:
                        TextBaseline.alphabetic, // Aggiungi questa linea
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Blu',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Verde',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Rosso',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Row(
  crossAxisAlignment: CrossAxisAlignment.baseline,
  textBaseline: TextBaseline.alphabetic,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      'Blu',
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
      ),
    ),
    SizedBox(width: 10),
    Text(
      'Verde',
      style: TextStyle(
        fontSize: 40,
        color: Colors.green,
      ),
    ),
    SizedBox(width: 10),
    Text(
      'Rosso',
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
      ),
    ),
  ],
),'''),
            ),
            const SizedBox(height: 40),
            // Titolo della sezione per TextAlign
            sectionTitle("TextAlign"),
            const SizedBox(height: 10),
            // Testo che spiega l'uso di TextAlign
            explanationText(
              "La proprietà TextAlign controlla l'allineamento del testo all'interno di un widget di testo.",
            ),
            const SizedBox(height: 10),
            // Esempio di utilizzo di TextAlign.center
            propertyExample(
              "TextAlign.center",
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Testo centrato",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  "Testo centrato",
  textAlign: TextAlign.center,
  style: TextStyle(fontSize: 20),
),'''),
            ),
            const SizedBox(height: 20),
            // Esempio di utilizzo di TextAlign.start
            propertyExample(
              "TextAlign.start",
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Testo allineato a sinistra",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  "Testo allineato a sinistra",
  textAlign: TextAlign.start,
  style: TextStyle(fontSize: 20),
),'''),
            ),
            const SizedBox(height: 20),
            // Esempio di utilizzo di TextAlign.end
            propertyExample(
              "TextAlign.end",
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Testo allineato a destra",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  "Testo allineato a destra",
  textAlign: TextAlign.end,
  style: TextStyle(fontSize: 20),
),'''),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "TextAlign.justify",
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Testo giustificato",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  "Testo giustificato",
  textAlign: TextAlign.justify,
  style: TextStyle(fontSize: 20),
),'''),
            ),
            const SizedBox(height: 40),

            // Expanded e Flexible
            sectionTitle("Widget Expanded e Flexible"),
            const SizedBox(height: 10),
            explanationText(
              "I widget Expanded e Flexible sono utilizzati all'interno di Row e Column per gestire lo spazio disponibile in modo flessibile. "
              "Expanded occupa tutto lo spazio rimanente, mentre Flexible permette di specificare quanto spazio occupare in proporzione.",
            ),
            const SizedBox(height: 10),
            // Esempio di Expanded
            propertyExample(
              "Esempio di Expanded",
              Container(
                height: 100,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: const Center(
                          child: Text("Expanded",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      color: Colors.red,
                      child: const Center(
                        child: Text("Fixed Width",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice Expanded:",
              const Text('''
Row(
  children: [
    Expanded(
      child: Container(
        color: Colors.blue,
        child: Center(child: Text("Expanded", style: TextStyle(color: Colors.white))),
      ),
    ),
    Container(
      width: 100,
      color: Colors.red,
      child: Center(child: Text("Fixed Width", style: TextStyle(color: Colors.white))),
    ),
  ],
),'''),
            ),
            const SizedBox(height: 20),

            // Esempio di Flexible
            propertyExample(
              "Esempio di Flexible",
              Container(
                height: 100,
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                        child: const Center(
                          child: Text("Flexible 2",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                        child: const Center(
                          child: Text("Flexible 1",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            propertyExample(
              "Codice Flexible:",
              const Text('''
Row(
  children: [
    Flexible(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: Center(child: Text("Flexible 2", style: TextStyle(color: Colors.white))),
      ),
    ),
    Flexible(
      flex: 1,
      child: Container(
        color: Colors.green,
        child: Center(child: Text("Flexible 1", style: TextStyle(color: Colors.white))),
      ),
    ),
  ],
),'''),
            ),
            const SizedBox(height: 20),

            // Aggiunta di Wrap
            sectionTitle("Wrap"),
            const SizedBox(height: 10),
            explanationText(
              "Il widget Wrap posiziona i figli in più righe o colonne automaticamente, adattandosi allo spazio disponibile. "
              "È utile per layout reattivi con un numero variabile di elementi.",
            ),
            propertyExample(
              "Esempio di Wrap",
              const Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: [
                  Chip(label: Text("Tag 1")),
                  Chip(label: Text("Tag 2")),
                  Chip(label: Text("Tag 3")),
                  Chip(label: Text("Tag 4")),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Aggiunta di Positioned (con spiegazione relativa a Stack)
            sectionTitle("Positioned (con Stack)"),
            const SizedBox(height: 10),
            explanationText(
              "Il widget Positioned è utilizzato per posizionare i suoi figli in modo assoluto all'interno di un widget Stack. "
              "È ideale per layout in cui gli elementi devono essere posizionati con precisione.",
            ),
            propertyExample(
              "Esempio di Stack con Positioned",
              Stack(
                children: [
                  Container(width: 200, height: 200, color: Colors.blue),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(Icons.star, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
