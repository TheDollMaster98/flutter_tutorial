import 'package:flutter/material.dart';

class DartStartPage extends StatelessWidget {
  const DartStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Begin'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Tipi di Stato'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_tutorial_type');
            },
          ),
          ListTile(
            title: const Text('Tipi di Collezioni'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_tutorial_collectionType');
            },
          ),
          ListTile(
            title: const Text('Modificatori'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_tutorial_modifier');
            },
          ),
          ListTile(
            title: const Text('Operatori'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_tutorial_operators');
            },
          ),
          ListTile(
            title: const Text('Costruttori di Selezione'),
            onTap: () {
              Navigator.pushNamed(
                  context, '/dart_tutorial_selection_constructs');
            },
          ),
          ListTile(
            title: const Text('Costruttori di Iterazione'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_tutorial_selection_loops');
            },
          ),
          ListTile(
            title: const Text('Asserzioni'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_tutorial_assertions');
            },
          ),
          ListTile(
            title: const Text('Funzioni'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_tutorial_functions');
            },
          ),
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
