import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class DartTutorialAssertions extends StatelessWidget {
  const DartTutorialAssertions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart: Assertions'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo e spiegazione delle asserzioni
            sectionTitle("Asserzioni in Dart"),
            const SizedBox(height: 10),
            explanationText(
              "Le asserzioni (assertions) sono dichiarazioni che esprimono condizioni "
              "che dovrebbero essere vere in un determinato punto del codice durante lo sviluppo dell'applicazione. "
              "Sono utilizzate principalmente per scopi di debugging e testing. "
              "Se l'asserzione fallisce (condizione falsa), viene lanciata un'eccezione che interrompe l'esecuzione del programma. "
              "Le asserzioni sono attive solo in modalità di sviluppo e vengono rimosse nella versione di produzione.",
            ),
            const SizedBox(height: 20),

            // Esempio di asserzione vera
            sectionTitle("Asserzione Vera"),
            const SizedBox(height: 10),
            explanationText(
              "Questo esempio verifica che l'età sia maggiore o uguale a 18 utilizzando un'asserzione. "
              "Se la condizione è vera, il codice continua a funzionare senza problemi.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di asserzione vera",
              const Text(
                '''
void assertionsTrue() {
  var eta = 20;
  
  // L'assertion verifica che l'età sia maggiore o uguale a 18.
  assert(eta >= 18);

  print("Hai accesso a questa funzionalità");
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Esempio di asserzione falsa
            sectionTitle("Asserzione Falsa"),
            const SizedBox(height: 10),
            explanationText(
              "Questo esempio verifica che l'età sia maggiore o uguale a 18. "
              "Se la condizione è falsa, l'asserzione fallisce e interrompe l'esecuzione, "
              "mostrando un errore durante il debug.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di asserzione falsa",
              const Text(
                '''
void assertionsFalse() {
  var eta = 10;
  
  // L'assertion verifica che l'età sia maggiore o uguale a 18.
  assert(eta >= 18);

  print("Non hai accesso a questa funzionalità");
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Output del codice esemplificativo
            sectionTitle("Output del Codice"),
            explanationText(
              "Eseguendo i codici sopra, otterrai i seguenti output (le asserzioni sono attive solo in modalità di sviluppo):",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Output:",
              const Text(
                '''
----------------------Asserzione Vera----------------------
Hai accesso a questa funzionalità
----------------------Asserzione Falsa----------------------
Unhandled exception:
'file:///path/to/file.dart': Failed assertion: line X pos Y: 'eta >= 18': is not true.
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
