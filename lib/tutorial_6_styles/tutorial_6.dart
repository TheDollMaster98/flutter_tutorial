import 'package:flutter/material.dart';
import 'package:flutter_tutorial/tutorial_6_styles/widgets/tutorial_6_widgets.dart';

class Tutorial6 extends StatelessWidget {
  const Tutorial6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posizionamento'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    coloredBox(Colors.blue),
                    coloredBox(Colors.green),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    coloredBox(Colors.blue),
                    coloredBox(Colors.green),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    coloredBox(Colors.blue),
                    coloredBox(Colors.green),
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
                    children: [
                      coloredBox(Colors.blue),
                      coloredBox(Colors.green),
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
                    children: [
                      coloredBox(Colors.blue),
                      coloredBox(Colors.green),
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
                    children: [
                      coloredBox(Colors.blue),
                      coloredBox(Colors.green),
                      coloredBox(Colors.red),
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
            const SizedBox(height: 40),
            // Aggiungi altre proprietà e esempi di stile qui...
          ],
        ),
      ),
    );
  }
}
