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
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
