import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Flutter Tutorial'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Tutorial 0: Intro'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_0');
            },
          ),
          ListTile(
            title: const Text('Tutorial 1: Stateless Component'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_1');
            },
          ),
          ListTile(
            title: const Text('Tutorial 2: Stateful Component'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_2');
            },
          ),
          ListTile(
            title: const Text('Tutorial 3: Bottoni'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_3');
            },
          ),
          ListTile(
            title: const Text('Tutorial 4: Colori'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_4');
            },
          ),
          ListTile(
            title: const Text('Tutorial 5: Immagini'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_5');
            },
          ),
          ListTile(
            title: const Text('Tutorial 6: Contenitori'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_6');
            },
          ),
          ListTile(
            title: const Text('Tutorial 7: Card'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_7');
            },
          ),
          ListTile(
            title: const Text('Tutorial 8: Column & Row'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_8');
            },
          ),
          ListTile(
            title: const Text('Tutorial 9: Stack'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_9');
            },
          ),
          ListTile(
            title: const Text('Tutorial 10: SafeArea e Scroll'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_10');
            },
          ),
          ListTile(
            title: const Text('Tutorial 10: ListView'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_11');
            },
          ),
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
