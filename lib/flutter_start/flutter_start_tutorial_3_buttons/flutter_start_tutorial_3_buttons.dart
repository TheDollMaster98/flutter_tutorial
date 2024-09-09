import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorialButtons extends StatefulWidget {
  const FlutterStartTutorialButtons({super.key});

  @override
  FlutterStartTutorial3State createState() => FlutterStartTutorial3State();
}

class FlutterStartTutorial3State extends State<FlutterStartTutorialButtons> {
  bool _isTapped = false;

  // Questo è un metodo che viene chiamato quando il pulsante viene premuto.
  void onButtonPressed() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottoni e InkWell'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo della sezione per i bottoni
            sectionTitle("I vari tipi di bottoni in Flutter"),
            const SizedBox(height: 20),
            // Spiegazione del TextButton
            sectionTitle("Bottone con testo"),
            explanationText(
              "TextButton: mostra un testo che descrive l'azione.",
            ),
            const SizedBox(height: 10),
            // Esempio di TextButton
            propertyExample(
              "TextButton",
              TextButton(
                onPressed: onButtonPressed,
                child: const Text(
                  "Text Button",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice TextButton:",
              const Text('''
TextButton(
  onPressed: onButtonPressed,
  child: const Text(
    "Text Button",
     style: TextStyle(fontSize: 30),
  ),
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Bottone ombreggiato"),
            // Spiegazione dell'ElevatedButton
            explanationText(
              "ElevatedButton: pulsante con inchiostro splash e ombreggiatura.",
            ),
            const SizedBox(height: 10),
            // Esempio di ElevatedButton
            propertyExample(
              "ElevatedButton",
              ElevatedButton(
                onPressed: onButtonPressed,
                child: const Text(
                  "Elevated Button",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice ElevatedButton:",
              const Text('''
ElevatedButton(
  onPressed:onButtonPressed,
  child: const Text(
    "Elevated Button",
    style: TextStyle(fontSize: 30),
  ),
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Bottone con icona"),
            // Spiegazione dell'IconButton
            explanationText(
              "IconButton: pulsante con un'icona senza testo.",
            ),
            const SizedBox(height: 10),
            // Esempio di IconButton
            propertyExample(
              "IconButton",
              IconButton(
                onPressed: onButtonPressed,
                icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
              ),
            ),
            const SizedBox(height: 10),
            // Esempio di IconButton
            propertyExample(
              "Codice IconButton:",
              const Text('''
IconButton(
  onPressed: onButtonPressed,
  icon: const Icon(Icons.plus_one, size: 50, color: Colors.pink),
),'''),
            ),
            const SizedBox(height: 20),
            // Spiegazione dell'InkWell
            sectionTitle("InkWell"),
            explanationText(
              "InkWell è un widget che reagisce ai tocchi, mostrando un'animazione di splash quando viene toccato. "
              "È utile per rendere tappabili i widget non interattivi come i Container o le Card.",
            ),
            const SizedBox(height: 10),
            // Esempio di InkWell
            propertyExample(
              "InkWell",
              InkWell(
                onTap: onButtonPressed,
                splashColor: Colors.purpleAccent,
                child: Card(
                  color:
                      _isTapped ? Colors.blue.shade200 : Colors.blue.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Tocca qui',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
InkWell(
  onTap: onButtonPressed,
  splashColor: Colors.purpleAccent,
  child: Card(
    color: _isTapped ? Colors.blue.shade200 : Colors.blue.shade100,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Container(
      width: double.infinity,
      height: 100,
      alignment: Alignment.center,
      child: const Text(
        'Tocca qui',
        style: TextStyle(fontSize: 24),
      ),
    ),
  ),
),'''),
            ),
            const SizedBox(height: 20),
            // Sezione del FloatingActionButton
            sectionTitle("FloatingActionButton"),
            explanationText(
              "Il `FloatingActionButton` (FAB) è un pulsante circolare che rappresenta l'azione principale della tua applicazione. "
              "Il FAB è solitamente posizionato nella parte inferiore destra dello schermo usando la proprietà `floatingActionButton` dello `Scaffold`. "
              "Questo pulsante è progettato per attirare l'attenzione e viene utilizzato per azioni principali come l'aggiunta di un nuovo elemento, l'invio di un messaggio, ecc.",
            ),
            const SizedBox(height: 10),
            // Esempio di FloatingActionButton
            propertyExample(
              "FloatingActionButton",
              FloatingActionButton(
                heroTag: "floatingButton1", // Tag univoco
                onPressed: onButtonPressed,
                child: const Icon(Icons.add),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice FloatingActionButton:",
              const Text('''
FloatingActionButton(
  heroTag: "floatingButton1",
  onPressed: onButtonPressed,
  child: const Icon(Icons.add),
),'''),
            ),
            const SizedBox(height: 20),
            // Spiegazione dell'uso di FloatingActionButton.extended
            sectionTitle("FloatingActionButton Esteso"),
            explanationText(
              "Il `FloatingActionButton.extended` è una versione estesa del FAB, che consente di aggiungere un'etichetta di testo accanto all'icona. "
              "Questo pulsante è utile quando vuoi che l'azione principale sia più descrittiva o quando vuoi offrire più contesto sull'azione che verrà eseguita.",
            ),
            const SizedBox(height: 10),
            // Esempio di FloatingActionButton.extended
            propertyExample(
              "FloatingActionButton.extended",
              FloatingActionButton.extended(
                heroTag: "floatingButton2", // Tag univoco
                backgroundColor: Colors.red.shade100,
                foregroundColor: Colors.red.shade900,
                splashColor: Colors.red.shade200,
                icon: const Icon(Icons.add),
                label: const Text("Email"),
                onPressed: onButtonPressed,
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice FloatingActionButton.extended:",
              const Text('''
FloatingActionButton.extended(
  heroTag: "floatingButton2", // Tag univoco per evitare conflitti con altri FloatingActionButton
  backgroundColor: Colors.red.shade100,
  foregroundColor: Colors.red.shade900,
  splashColor: Colors.red.shade200,
  icon: const Icon(Icons.add),
  label: const Text("Email"),
  onPressed: onButtonPressed,
),'''),
            ),
          ],
        ),
      ),
      // Posizionamento del FloatingActionButton
      floatingActionButton: FloatingActionButton.extended(
        heroTag: "floatingButton3", // Tag univoco
        backgroundColor: Colors.red.shade100,
        foregroundColor: Colors.red.shade900,
        splashColor: Colors.red.shade200,
        icon: const Icon(Icons.add),
        label: const Text("Email"),
        onPressed: onButtonPressed,
      ),
    );
  }
}
