import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial17 extends StatelessWidget {
  const FlutterStartTutorial17({super.key});

  // Mostra un dialogo personalizzato per l'invio di email
  void showEmailDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Componi la tua email",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              const TextField(
                minLines: 3,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Il tuo messaggio",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
              const Divider(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.red.shade100),
                    foregroundColor:
                        MaterialStatePropertyAll(Colors.red.shade900),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Spedisci Email"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Mostra un SimpleDialog con opzioni
  void showSimple(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text("Scegli la tipologia di email da mandare"),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context),
            child: const Text("Singolo destinatario"),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context),
            child: const Text("Multipli destinatari"),
          ),
        ],
      ),
    );
  }

  // Mostra un AlertDialog per errori di invio email
  void showEmailError(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Gmail è down"),
        content: const Text("Il servizio non è attualmente disponibile!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancella"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red.shade100,
        foregroundColor: Colors.red.shade900,
        splashColor: Colors.red.shade200,
        icon: const Icon(Icons.add),
        label: const Text("Email"),
        onPressed: () => showSimple(context),
      ),
      body: Center(child: buildBody(context)),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sectionTitle("Dialog"),
          const SizedBox(height: 10),
          explanationText(
            "I Dialog sono finestre di dialogo che appaiono sopra il contenuto principale della schermata. "
            "Sono utilizzati per richiedere all'utente una decisione o un'azione, o per mostrare informazioni importanti.",
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempio di `Dialog` Personalizzato"),
          const SizedBox(height: 10),
          propertyExample(
            "Dialog Personalizzato",
            ElevatedButton(
              onPressed: () => showEmailDialog(context),
              child: const Text("Mostra Dialog Personalizzato"),
            ),
          ),
          propertyExample(
            "Codice Dialog Personalizzato:",
            const Text('''
showDialog(
  context: context,
  builder: (context) => Dialog(
    backgroundColor: Colors.white,
    child: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Componi la tua email",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          const TextField(
            minLines: 3,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: "Il tuo messaggio",
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
          const Divider(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red.shade100),
                foregroundColor: MaterialStatePropertyAll(Colors.red.shade900),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("Spedisci Email"),
            ),
          )
        ],
      ),
    ),
  ),
);
'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempio di `SimpleDialog`"),
          const SizedBox(height: 10),
          propertyExample(
            "SimpleDialog",
            ElevatedButton(
              onPressed: () => showSimple(context),
              child: const Text("Mostra SimpleDialog"),
            ),
          ),
          propertyExample(
            "Codice SimpleDialog:",
            const Text('''
showDialog(
  context: context,
  builder: (context) => SimpleDialog(
    title: const Text("Scegli la tipologia di email da mandare"),
    children: [
      SimpleDialogOption(
        onPressed: () => Navigator.pop(context),
        child: const Text("Singolo destinatario"),
      ),
      SimpleDialogOption(
        onPressed: () => Navigator.pop(context),
        child: const Text("Multipli destinatari"),
      ),
    ],
  ),
);
'''),
          ),
          const SizedBox(height: 20),
          sectionTitle("Esempio di `AlertDialog`"),
          const SizedBox(height: 10),
          propertyExample(
            "AlertDialog",
            ElevatedButton(
              onPressed: () => showEmailError(context),
              child: const Text("Mostra AlertDialog"),
            ),
          ),
          propertyExample(
            "Codice AlertDialog:",
            const Text('''
showDialog(
  context: context,
  builder: (context) => AlertDialog(
    title: const Text("Gmail è down"),
    content: const Text("Il servizio non è attualmente disponibile!"),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("Cancella"),
      ),
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("OK"),
      ),
    ],
  ),
);
'''),
          ),
        ],
      ),
    );
  }
}
