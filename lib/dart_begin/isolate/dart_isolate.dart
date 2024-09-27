import 'package:flutter/material.dart';

class DartTutorialIsolates extends StatelessWidget {
  const DartTutorialIsolates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isolates in Dart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Titolo e spiegazione degli isolates
            sectionTitle("Isolates in Dart"),
            const SizedBox(height: 10),
            explanationText(
              '''
Gli isolates in Dart offrono un modo per sfruttare le architetture multi-core, consentendo di eseguire codice in parallelo senza dover condividere memoria o stato con il thread principale. 
Gli isolates sono ideali per gestire operazioni intensive in modo concorrente, mantenendo l'integrità dei dati.
              ''',
            ),
            const SizedBox(height: 20),

            // Caratteristiche principali degli isolates
            sectionTitle("Caratteristiche principali"),
            const SizedBox(height: 10),
            explanationText(
              '''
1. Contesto Isolato:
   - Ogni isolate ha il proprio spazio di memoria e stack di chiamate.
   - Questo evita problemi di concorrenza legati alla condivisione di dati tra thread.

2. Comunicazione Asincrona:
   - La comunicazione tra gli isolates avviene tramite messaggi asincroni, senza condivisione diretta della memoria.

3. Creazione degli isolates:
   - Gli isolates vengono creati tramite la funzione `Isolate.spawn`.
              ''',
            ),
            const SizedBox(height: 20),

            // Esempio di codice che utilizza gli isolates
            sectionTitle("Esempio di utilizzo degli isolates"),
            const SizedBox(height: 10),
            explanationText(
              '''
In questo esempio, viene creato un nuovo isolate utilizzando `Isolate.spawn`, e la funzione `isolateFunction` viene eseguita in un contesto separato. La comunicazione tra l'isolato principale e quello secondario avviene tramite messaggi.
              ''',
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice d'esempio:",
              const Text(
                '''
void isolates() {
  // Creazione di un nuovo isolato e invio di un messaggio
  Isolate.spawn(isolateFunction, "Hello from main isolate!");
}

// Funzione che viene eseguita nel nuovo isolato
void isolateFunction(message) {
  print("Isolate received message: \$message");
}
                ''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Vantaggi degli isolates
            sectionTitle("Vantaggi degli isolates"),
            const SizedBox(height: 10),
            explanationText(
              '''
- Concorrenza efficiente: sfruttano il multi-core senza la complessità dei thread tradizionali.
- Isolamento: ogni isolato ha la propria memoria, riducendo i rischi associati alla condivisione dello stato.
- Scalabilità: gli isolati permettono di scalare le applicazioni su processori multi-core, migliorando le prestazioni in operazioni intensive.
              ''',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Funzione helper per creare un titolo di sezione
  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }

  // Funzione helper per creare del testo esplicativo
  Widget explanationText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16),
    );
  }

  // Funzione helper per formattare gli esempi di codice
  Widget propertyExample(String title, Widget content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        content,
      ],
    );
  }
}
