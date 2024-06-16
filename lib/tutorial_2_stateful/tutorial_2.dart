import 'package:flutter/material.dart';

// HomePage è un StatefulWidget, il che significa che ha uno stato che può cambiare nel tempo.
class Tutorial2 extends StatefulWidget {
  // Questo è il valore che stai passando al tuo widget HomePage.
  final int value;
  const Tutorial2(this.value, {super.key});

  // Creiamo una nuova istanza di HomePageState ogni volta che Flutter decide di ricreare il widget HomePage.
  @override
  State<StatefulWidget> createState() => Tutorial2State();
}

// Questo è lo stato del tuo widget HomePage. Può cambiare nel tempo, per esempio a causa di interazioni dell'utente.
class Tutorial2State extends State<Tutorial2> {
  // Variabile che stai utilizzando nel tuo stato.
  // Ottieni dal widget HomePage quando viene inizializzato.
  late int value;
  late int initialValue;

  // initState è il primo metodo chiamato dopo che il widget è stato creato.
  // È chiamato solo una volta per la vita del widget.
  @override
  void initState() {
    // Qui stai assegnando il valore che hai ottenuto dal widget HomePage alla tua variabile 'value'.
    initialValue = widget.value;
    value = initialValue;
    super.initState();
  }

  // Metodo build. È chiamato ogni volta che Flutter decide di ridisegnare il tuo widget.
  @override
  Widget build(BuildContext context) {
    // Stai utilizzando il widget Scaffold per creare la struttura di base dell'app.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
      ),
      // Nel corpo dello Scaffold, stai visualizzando un testo al centro dello schermo.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Un StatefulWidget mantiene uno stato interno che può cambiare nel tempo, '
                    'come ad esempio quando un utente interagisce con il widget. \n'
                'Esempio: aumento, decremento e reset di un valore:',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Il valore cambia tramite setState:",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Decrementa il valore di 'value' di 1 ogni volta che il pulsante viene premuto.
                      value--;
                    });
                  },
                  child: const Text('-'),
                ),
                const SizedBox(width: 20),
                Text(
                  '$value',
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Incrementa il valore di 'value' di 1 ogni volta che il pulsante viene premuto.
                      value++;
                    });
                  },
                  child: const Text('+'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Resetta il valore di 'value' al valore iniziale.
                  value = initialValue;
                });
              },
              child: const Text('Resetta Valore'),
            ),
          ],
        ),
      ),
    );
  }
}