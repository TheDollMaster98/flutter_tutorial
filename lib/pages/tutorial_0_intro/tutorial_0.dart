import 'package:flutter/material.dart';

class Tutorial0 extends StatelessWidget {
  const Tutorial0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const <Widget>[
          // Sezione Importazioni
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''
// Importa il pacchetto flutter/material.dart che è un pacchetto di comandi di design moderno fornito da Flutter.
import 'package:flutter/material.dart';
// Importa il file home_page.dart dal pacchetto intro_flutter_0/pages.
import 'package:intro_flutter_0/pages/home_page.dart';
                ''',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          // Sezione Main
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''
// Il punto di ingresso principale per l'applicazione.
void main() {
  // runApp prende come argomento un Widget che sarà l'elemento radice dell'app.
  runApp(App());
}
                ''',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          // Sezione App
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''
// App è un widget senza stato che descrive parte dell'interfaccia utente dell'app.
class App extends StatelessWidget {
  // Ogni nuova app Flutter deve sovrascrivere il metodo build.
  // Il metodo build descrive i widget che compongono l'interfaccia utente principale dell'app.
  @override
  Widget build(BuildContext context) {
    // MaterialApp è un widget predefinito in Flutter che include una serie di funzionalità.
    // Questo include la chiamata a Navigator che gestisce la pila di route.
    // In questo caso, la home page dell'app è HomePage().
    return MaterialApp(home: HomePage());
  }
}
                ''',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          // Sezione HomePage
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '''
// Importa il pacchetto flutter/material.dart che è un pacchetto di comandi di design moderno fornito da Flutter.
import 'package:flutter/material.dart';

// HomePage è un widget senza stato che descrive la pagina principale dell'app.
class HomePage extends StatelessWidget {
  // Ogni widget Flutter deve sovrascrivere il metodo build.
  // Il metodo build descrive i widget che compongono l'interfaccia utente principale del widget.
  @override
  Widget build(BuildContext context) {
    // Scaffold è un widget predefinito in Flutter che fornisce una struttura base per l'interfaccia utente.
    return Scaffold(
      // AppBar è una barra delle applicazioni con opzionali pulsanti di azione e titolo.
      appBar: AppBar(
        // Il titolo dell'AppBar.
        title: Text(
          "Tutorial 1",
          // Lo stile del testo del titolo.
          style: TextStyle(fontSize: 20, color: Colors.purple),
        ),
        // Centra il titolo dell'AppBar.
        centerTitle: true,
      ),
      // Il corpo dell'applicazione. In questo caso, un widget Center che centra il suo widget figlio.
      body: Center(
        // Il widget figlio del widget Center.
        child: Text(
          "Testo viola!",
          // Lo stile del testo.
          style: TextStyle(fontSize: 20, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
                ''',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
