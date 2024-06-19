import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class Tutorial6 extends StatelessWidget {
  const Tutorial6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contenitori'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            sectionTitle("Container"),
            const SizedBox(height: 10),
            explanationText(
              "Container è un widget versatile che può essere utilizzato per disporre, posizionare e decorare con gli stili i suoi figli. "
              "È uno dei widget più utilizzati in Flutter. Può contenere un singolo figlio e applicare padding, margini, bordi, un colore di sfondo e altro ancora.",
            ),
            propertyExample(
              "Esempio di Container",
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text(
                  'Questo è un Container con padding, margine, colore di sfondo, bordi arrotondati e ombra.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            propertyExample(
              "Codice:",
              const Text('''
Container(
  padding: const EdgeInsets.all(16),
  margin: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.blue.shade100,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3),
      ),
    ],
   ),
child: const Text(
'Testo',
style: TextStyle(fontSize: 16),
textAlign: TextAlign.center,
),
),'''),
            ),
            explanationText(
              "Il Container possiamo vederlo come se fosse un div in HTML.",
            ),
            propertyExample(
              "Esempio di Container Avanzato",
              Container(
                width: 200,
                height: 200,
                // Non può stare insieme a decoration, visto che
                // è una sua shortcut/metodo/proprietà.
                // color: Colors.deepPurpleAccent,
                // decoration: posso definire altri stili oltre al colore.
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(16),
                  // Posso avere o borderRadius o shape per definire i bordi.
                  // shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      // Sfumatura:
                      blurRadius: 5,
                      // Quanto deve allargarsi al di fuori del contenitore.
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Card Container",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
BoxDecoration(
color: Colors.white,
border: Border.all(color: Colors.grey.shade300, width: 1),
borderRadius: BorderRadius.circular(16),
                  // Posso avere o borderRadius o shape per definire i bordi.
                  // shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      // Sfumatura:
                      blurRadius: 5,
                      // Quanto deve allargarsi al di fuori del contenitore.
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("SizedBox"),
            const SizedBox(height: 10),
            explanationText(
              "SizedBox è un widget semplice che viene utilizzato per specificare una dimensione esatta per il suo figlio. "
              "È utile quando si desidera dare a un widget una dimensione precisa se non ci sono stili da definire.",
            ),
            propertyExample(
              "Esempio di SizedBox",
              const SizedBox(
                width: 200,
                height: 100,
                child: Card(
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      'Questo è un SizedBox con larghezza e altezza specificate.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
SizedBox(
  width: 200,
  height: 100,
  child: Card(
    color: Colors.amber,
    child: Center(
      child: Text(
        'Questo è un SizedBox con larghezza e altezza specificate.',
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    ),
  ),
),'''),
            ),
            const SizedBox(height: 20),
            explanationText(
              "È possibile utilizzare SizedBox anche per dare spazio tra gli elementi.",
            ),
            propertyExample(
              "Esempio di Spaziatura con SizedBox",
              const Column(
                children: [
                  Text(
                    'Elemento 1',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Elemento 2',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            propertyExample(
              "Codice:",
              const Text('''
Text(
  'Elemento 1',
  style: TextStyle(fontSize: 16),
),
SizedBox(height: 20),
Text(
  'Elemento 2',
  style: TextStyle(fontSize: 16),
),'''),
            ),
            const SizedBox(height: 20),
            sectionTitle("Padding"),
            const SizedBox(height: 10),
            explanationText(
              "Padding è un widget che inserisce uno spazio vuoto attorno al suo figlio. "
              "È utile quando si desidera aggiungere spazio interno attorno a un widget.",
            ),
            propertyExample(
              "Esempio di Padding",
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.green,
                child: const Text(
                  'Questo è un Container con padding interno.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("Margin"),
            const SizedBox(height: 10),
            explanationText(
              "Margin è simile a Padding, ma aggiunge spazio esterno attorno a un widget. "
              "In Flutter, la proprietà margin è disponibile solo tramite il widget Container.",
            ),
            propertyExample(
              "Esempio di Margin",
              Container(
                margin: const EdgeInsets.all(16.0),
                color: Colors.red,
                child: const Text(
                  'Questo è un Container con margine esterno.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            sectionTitle("DecoratedBox"),
            const SizedBox(height: 10),
            explanationText(
              "DecoratedBox è un widget che consente di decorare il suo figlio con bordi, gradienti e altro ancora. "
              "Viene spesso utilizzato all'interno di Container per applicare decorazioni.",
            ),
            propertyExample(
              "Esempio di DecoratedBox",
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Questo è un DecoratedBox con un gradiente, bordi arrotondati e ombra.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
