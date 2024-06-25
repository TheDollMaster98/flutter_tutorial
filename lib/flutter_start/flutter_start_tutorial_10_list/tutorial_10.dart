import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class FlutterStartTutorial10 extends StatelessWidget {
  const FlutterStartTutorial10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List, SafeArea e Scroll'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Sezione per List
            sectionTitle("Lista con List"),
            const SizedBox(height: 10),
            explanationText(
              "Utilizza List per creare una lista di widget. Questo metodo è utile quando si ha un numero fisso e limitato di elementi.",
            ),
            propertyExample(
              "Esempio di List",
              Column(
                children: [
                  Text('Elemento 1', style: TextStyle(fontSize: 16)),
                  Text('Elemento 2', style: TextStyle(fontSize: 16)),
                  Text('Elemento 3', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Column(
  children: [
    Text('Elemento 1', style: TextStyle(fontSize: 16)),
    Text('Elemento 2', style: TextStyle(fontSize: 16)),
    Text('Elemento 3', style: TextStyle(fontSize: 16)),
  ],
),'''),
            ),
            const SizedBox(height: 20),

            // Sezione per List.generate
            sectionTitle("Lista con List.generate"),
            const SizedBox(height: 10),
            explanationText(
              "Utilizza List.generate per creare una lista di widget dinamicamente. Questo metodo è utile quando si ha un numero variabile di elementi.",
            ),
            propertyExample(
              "Esempio di List.generate",
              Column(
                children: List.generate(
                  5,
                  (index) => Text('Elemento $index',
                      style: const TextStyle(fontSize: 16)),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Column(
  children: List.generate(
    5,
    (index) => Text('Elemento \$index',
        style: const TextStyle(fontSize: 16)),
  ),
),'''),
            ),
            const SizedBox(height: 20),

            // Sezione per ListView.builder
            sectionTitle("ListView.builder"),
            const SizedBox(height: 10),
            explanationText(
              "Utilizza ListView.builder per creare la lista di widget. Questo metodo è più efficiente perché crea solo i widget che sono attualmente visibili sullo schermo.",
            ),
            propertyExample(
              "Esempio di ListView.builder",
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Elemento $index'),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
SizedBox(
  height: 200,
  child: ListView.builder(
    itemCount: 20,
    itemBuilder: (context, index) => ListTile(
      title: Text('Elemento \$index'),
    ),
  ),
),'''),
            ),
            const SizedBox(height: 20),

            // Sezione per ListView.separated
            sectionTitle("ListView.separated"),
            const SizedBox(height: 10),
            explanationText(
              "Utilizza ListView.separated per creare una lista di widget con divisori tra gli elementi. Puoi personalizzare i divisori per aggiungere logica o stile.",
            ),
            propertyExample(
              "Esempio di ListView.separated",
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: 20,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Elemento $index'),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: index % 2 == 0 ? Colors.blue : Colors.red,
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
SizedBox(
  height: 200,
  child: ListView.separated(
    itemCount: 20,
    itemBuilder: (context, index) => ListTile(
      title: Text('Elemento \$index'),
    ),
    separatorBuilder: (context, index) => Divider(
      color: index % 2 == 0 ? Colors.blue : Colors.red,
    ),
  ),
),'''),
            ),
            const SizedBox(height: 20),

            // Sezione per SafeArea
            sectionTitle("SafeArea"),
            const SizedBox(height: 10),
            explanationText(
              "SafeArea è un widget che inserisce il suo figlio con padding sufficiente a evitare "
              "le aree intrinsecamente difficili da usare del dispositivo, come la tacca, la barra di stato e le aree di comando.",
            ),
            propertyExample(
              "Esempio di SafeArea",
              SafeArea(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'Questo è un SafeArea',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
SafeArea(
  child: Container(
    color: Colors.blue,
    height: 100,
    child: const Center(
      child: Text(
        'Questo è un SafeArea',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  ),
),'''),
            ),
            const SizedBox(height: 20),

            // Sezione per SingleChildScrollView
            sectionTitle("SingleChildScrollView"),
            const SizedBox(height: 10),
            explanationText(
              "SingleChildScrollView è un widget che consente di scorrere il contenuto quando è più grande dello schermo disponibile. "
              "È utile per liste di elementi o contenuti lunghi.",
            ),
            propertyExample(
              "Esempio di SingleChildScrollView",
              Container(
                height: 200,
                color: Colors.green.shade100,
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      20,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Elemento $index',
                            style: const TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
Container(
  height: 200,
  color: Colors.green.shade100,
  child: SingleChildScrollView(
    child: Column(
      children: List.generate(
        20,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Elemento \$index',
              style: const TextStyle(fontSize: 16)),
        ),
      ),
    ),
  ),
),'''),
            ),
            const SizedBox(height: 20),

            // Sezione per Esempio Completo
            sectionTitle("Esempio Completo"),
            const SizedBox(height: 10),
            explanationText(
              "In questo esempio completo, utilizziamo sia SafeArea che SingleChildScrollView "
              "per mostrare una lista di 100 elementi con padding, evitando le aree critiche del dispositivo.",
            ),
            propertyExample(
              "Lista con SafeArea e SingleChildScrollView",
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      20,
                      (index) => InkWell(
                        onTap: () {
                          print("Clicked: ${index + 1} Pokémon");
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(
                            '#${index + 1} Pokémon',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            propertyExample(
              "Codice:",
              const Text('''
SafeArea(
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        20,
        (index) => InkWell(
          onTap: () {
            print("Clicked: \${index + 1} Pokémon");
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              '#\${index + 1} Pokémon',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    ),
  ),
),'''),
            ),
          ],
        ),
      ),
    );
  }
}
