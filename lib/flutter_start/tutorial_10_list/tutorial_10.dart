import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/tutorial_widgets.dart';

class Tutorial10 extends StatelessWidget {
  const Tutorial10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea e Scroll'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
