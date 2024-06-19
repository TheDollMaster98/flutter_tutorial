import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial0 extends StatelessWidget {
  const FlutterStartTutorial0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intro'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Importazioni"),
            const SizedBox(height: 10),
            explanationText(
              "Importa il pacchetto flutter/material.dart che è un pacchetto di comandi di design moderno fornito da Flutter.",
            ),
            explanationText(
              "Importa il file home_page.dart dal pacchetto intro_flutter_0/pages.",
            ),
            propertyExample(
              "Importazioni",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
import 'package:flutter/material.dart';
import 'package:intro_flutter_0/pages/home_page.dart';
                    ''',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("Main"),
            const SizedBox(height: 10),
            explanationText(
              "Il punto di ingresso principale per l'applicazione.",
            ),
            explanationText(
              "runApp prende come argomento un Widget che sarà l'elemento radice dell'app.",
            ),
            propertyExample(
              "Main",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
void main() {
  runApp(App());
}
                    ''',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("App"),
            const SizedBox(height: 10),
            explanationText(
              "App è un widget senza stato che descrive parte dell'interfaccia utente dell'app.",
            ),
            explanationText(
              "Ogni nuova app Flutter deve sovrascrivere il metodo build.",
            ),
            explanationText(
              "Il metodo build descrive i widget che compongono l'interfaccia utente principale dell'app.",
            ),
            explanationText(
              "MaterialApp è un widget predefinito in Flutter che include una serie di funzionalità.",
            ),
            explanationText(
              "Questo include la chiamata a Navigator che gestisce la pila di route.",
            ),
            explanationText(
              "In questo caso, la home page dell'app è HomePage().",
            ),
            propertyExample(
              "App",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
                    ''',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("HomePage"),
            const SizedBox(height: 10),
            explanationText(
              "Importa il pacchetto flutter/material.dart che è un pacchetto di comandi di design moderno fornito da Flutter.",
            ),
            explanationText(
              "HomePage è un widget senza stato che descrive la pagina principale dell'app.",
            ),
            explanationText(
              "Ogni widget Flutter deve sovrascrivere il metodo build.",
            ),
            explanationText(
              "Il metodo build descrive i widget che compongono l'interfaccia utente principale del widget.",
            ),
            explanationText(
              "Scaffold è un widget predefinito in Flutter che fornisce una struttura base per l'interfaccia utente.",
            ),
            explanationText(
              "AppBar è una barra delle applicazioni con opzionali pulsanti di azione e titolo.",
            ),
            explanationText(
              "Il titolo dell'AppBar.",
            ),
            explanationText(
              "Lo stile del testo del titolo.",
            ),
            explanationText(
              "Centra il titolo dell'AppBar.",
            ),
            explanationText(
              "Il corpo dell'applicazione. In questo caso, un widget Center che centra il suo widget figlio.",
            ),
            explanationText(
              "Il widget figlio del widget Center.",
            ),
            explanationText(
              "Lo stile del testo.",
            ),
            propertyExample(
              "HomePage",
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '''
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tutorial 1",
          style: TextStyle(fontSize: 20, color: Colors.purple),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Testo viola!",
          style: TextStyle(fontSize: 20, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
                    ''',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
