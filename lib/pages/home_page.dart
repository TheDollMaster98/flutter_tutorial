import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          // SliverGridDelegateWithFixedCrossAxisCount è un delegate che
          // specifica il layout di una griglia con un numero fisso di colonne.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Numero di colonne nella griglia
            crossAxisSpacing: 16.0, // Spazio orizzontale tra le colonne
            mainAxisSpacing: 16.0, // Spazio verticale tra le righe
            childAspectRatio:
                2 / 3, // Rapporto di aspetto dei figli (larghezza/altezza)
          ),
          itemCount: sections.length, // Numero di elementi nella griglia
          itemBuilder: (context, index) {
            final section = sections[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, section['route']!);
              },
              child: Card(
                color: Colors.pink.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
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
