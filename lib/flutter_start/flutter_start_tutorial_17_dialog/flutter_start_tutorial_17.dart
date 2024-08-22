import 'package:flutter/material.dart';
// import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial17 extends StatelessWidget {
  const FlutterStartTutorial17({super.key});

  void showEmailDialog(BuildContext context) {
    // context: è dentro il metodo build, non avendolo lo passo nella funzione.
    // builder: funzione che prende un build context
    showDialog(
      context: context,
      // Il container non prende tutto, ma è come se fosse racchiuso in una safeArea
      // mostrando la parte sopra e sotto
      builder: (context) => Dialog(
        //se uso bgColor del dialog, i bordi si smussano:
        backgroundColor: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            // metto axisSize per fargli prendere solo lo spazio che gli serve
            // altezza asse y:
            mainAxisSize: MainAxisSize.min,
            //allineo a sx:
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
              // gli sto dicendo min e max di righe su quale l'utente può scrivere
              // che siano pari a 5, in caso scrolla giù
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
                      // Posso specificare per ogni tipologia di stato il colore corrispettivo
                      // es. hover, focus, normale, ecc.
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.red.shade100),
                      // idem come su, ma per il testo:
                      foregroundColor:
                          MaterialStatePropertyAll(Colors.red.shade900)),
                  // chiudo la modale:
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

  void showEmailError(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Il servizio non è attualmente disponibile!"),
            ));
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
        // onPressed: () => showEmailDialog(context),
        onPressed: () => showEmailError(context),
      ),
      body: Center(child: body()),
    );
  }
}

Widget body() => const Text(
      "Empty.",
      style: TextStyle(fontSize: 32),
    );
