import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

class TilesTutorialPage extends StatelessWidget {
  const TilesTutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool switchValue = false;
    bool checkboxValue = false;

    return Scaffold(
      appBar: AppBar(title: const Text("Tiles")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sectionTitle("ListTile"),
            explanationText(
              "ListTile è un widget che permette di creare una riga composta da titolo, sottotitolo, icona iniziale e finale.",
            ),
            propertyExample(
              "Esempio di ListTile",
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("Titolo"),
                subtitle: Text("Sottotitolo"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            sectionTitle("SwitchListTile"),
            explanationText(
              "SwitchListTile combina una ListTile con uno switch, utile per abilitare/disabilitare funzionalità.",
            ),
            propertyExample(
              "Esempio di SwitchListTile",
              StatefulBuilder(
                builder: (context, setState) {
                  return SwitchListTile(
                    value: switchValue,
                    onChanged: (bool newValue) {
                      setState(() => switchValue = newValue);
                    },
                    title: const Text("Attiva funzione"),
                    subtitle: const Text("Esempio con switch"),
                    secondary: const Icon(Icons.settings),
                  );
                },
              ),
            ),

            sectionTitle("CheckboxListTile"),
            explanationText(
              "CheckboxListTile combina una ListTile con una checkbox, utile per selezioni multiple.",
            ),
            propertyExample(
              "Esempio di CheckboxListTile",
              StatefulBuilder(
                builder: (context, setState) {
                  return CheckboxListTile(
                    value: checkboxValue,
                    onChanged: (bool? newValue) {
                      setState(() => checkboxValue = newValue ?? false);
                    },
                    title: const Text("Accetto le condizioni"),
                    subtitle: const Text("Checkbox di esempio"),
                    secondary: const Icon(Icons.check_box),
                  );
                },
              ),
            ),

            sectionTitle("ExpansionTile"),
            explanationText(
              "ExpansionTile consente di espandere una sezione per mostrare contenuti nascosti.",
            ),
            propertyExample(
              "Esempio di ExpansionTile",
              const ExpansionTile(
                leading: Icon(Icons.info),
                title: Text("Dettagli"),
                subtitle: Text("Tocca per espandere"),
                children: [
                  ListTile(title: Text("Dettaglio 1")),
                  ListTile(title: Text("Dettaglio 2")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
