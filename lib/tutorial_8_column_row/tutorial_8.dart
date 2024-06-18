import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tutorial_8_column_row/widgets/tutorial_8_widgets.dart';

class Tutorial8 extends StatelessWidget {
  const Tutorial8({super.key});

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
            const SizedBox(height: 40),
            // Aggiungi altre proprietà e esempi di stile qui...
          ],
        ),
      ),
    );
  }
}
