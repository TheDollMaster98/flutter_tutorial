import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> sections = [
      {
        'title': 'Dart Begin',
        'description':
            'Il corso ideale per assicurarsi delle solide basi prima di tuffarsi nel mondo Flutter.',
        'route': '/dart_begin'
      },
      {
        'title': 'Flutter Start',
        'description':
            'Scopri cos\'è Flutter, i componenti, come fare chiamate HTTP e gestire i JSON.',
        'route': '/flutter_start'
      },
      {
        'title': 'Flutter Advanced',
        'description':
            'Sviluppa app complesse con più schermate, salva dati in locale e gestisci lo stato globale con il BLoC.',
        'route': '/flutter_advanced'
      },
      {
        'title': 'Flutter Architecture',
        'description':
            'Approfondisci i concetti di Mapper, Provider, Repository e BLoC con un esperto Flutter.',
        'route': '/flutter_architecture'
      },
      {
        'title': 'Flutter Focus',
        'description':
            'Implementa l\'autenticazione, i temi, la dark mode e scopri 6 librerie indispensabili.',
        'route': '/flutter_focus'
      },
      {
        'title': 'Flutter Pro',
        'description':
            'Pubblicazione sugli store, plugin nativi, testing, responsive, animazioni, multilingue per veri professionisti!',
        'route': '/flutter_pro'
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 2 / 3,
          ),
          itemCount: sections.length,
          itemBuilder: (context, index) {
            final section = sections[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, section['route']!);
              },
              child: Card(
                color: Colors.blue.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        section['title']!,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
