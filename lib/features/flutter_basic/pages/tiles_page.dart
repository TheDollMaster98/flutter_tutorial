import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/tutorial_widgets.dart';

class TilesPage extends StatelessWidget {
  const TilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool switchValue = false;
    bool checkboxValue = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tiles"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ListTile
            sectionTitle("ListTile"),
            const SizedBox(height: 10),
            explanationText(
              "ListTile è un widget che permette di creare una riga composta da titolo, sottotitolo, icona iniziale e finale.",
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Esempio di ListTile",
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("Titolo"),
                subtitle: Text("Sottotitolo"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            propertyExample("Codice di ListTile", const Text('''
ListTile(
  leading: Icon(Icons.person),
  title: Text("Titolo"),
  subtitle: Text("Sottotitolo"),
  trailing: Icon(Icons.arrow_forward_ios),
)
''')),

            const SizedBox(height: 20),
            // SwitchListTile
            sectionTitle("SwitchListTile"),
            const SizedBox(height: 10),
            explanationText(
              "SwitchListTile combina una ListTile con uno switch, utile per abilitare/disabilitare funzionalità.",
            ),
            const SizedBox(height: 10),
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
            propertyExample("Codice di SwitchListTile", const Text('''
SwitchListTile(
  value: switchValue,
  onChanged: (bool newValue) {
    setState(() => switchValue = newValue);
  },
  title: Text("Attiva funzione"),
  subtitle: Text("Esempio con switch"),
  secondary: Icon(Icons.settings),
)
''')),

            const SizedBox(height: 20),
            // CheckboxListTile
            sectionTitle("CheckboxListTile"),
            const SizedBox(height: 10),
            explanationText(
              "CheckboxListTile combina una ListTile con una checkbox, utile per selezioni multiple.",
            ),
            const SizedBox(height: 10),
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
            propertyExample("Codice di CheckboxListTile", const Text('''
CheckboxListTile(
  value: checkboxValue,
  onChanged: (bool? newValue) {
    setState(() => checkboxValue = newValue ?? false);
  },
  title: Text("Accetto le condizioni"),
  subtitle: Text("Checkbox di esempio"),
  secondary: Icon(Icons.check_box),
)
''')),

            const SizedBox(height: 20),
            // ExpansionTile
            sectionTitle("ExpansionTile"),
            const SizedBox(height: 10),
            explanationText(
              "ExpansionTile consente di espandere una sezione per mostrare contenuti nascosti.",
            ),
            const SizedBox(height: 10),
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
            propertyExample("Codice di ExpansionTile", const Text('''
ExpansionTile(
  leading: Icon(Icons.info),
  title: Text("Dettagli"),
  subtitle: Text("Tocca per espandere"),
  children: [
    ListTile(title: Text("Dettaglio 1")),
    ListTile(title: Text("Dettaglio 2")),
  ],
)
''')),
          ],
        ),
      ),
    );
  }
}
