import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 3 Guida'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          // SliverGridDelegateWithFixedCrossAxisCount è una classe delegate che controlla la disposizione degli elementi in una griglia.
          // 'Sliver' è un termine che rappresenta una porzione scorrevole dell'interfaccia utente.
          // In questo caso, la griglia è una sliver, cioè una sezione che può essere scorsa verticalmente.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Numero di colonne nella griglia
            crossAxisSpacing: 16.0, // Spaziatura orizzontale tra gli elementi
            mainAxisSpacing: 16.0, // Spaziatura verticale tra gli elementi
            childAspectRatio: 3 /
                4, // Modifica il rapporto d'aspetto per rendere le card meno alte
          ),
          itemCount: sections.length,
          itemBuilder: (context, index) {
            final section = sections[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, section['route']!);
              },
              child: Card(
                color: Theme.of(context).cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        section['title']!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        section['description']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
