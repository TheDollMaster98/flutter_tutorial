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
              Navigator.pushNamed(
                  context, '/tutorial_3');
            },
          ),
          ListTile(
            title: const Text('Tutorial 2: Stateful Component'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_2');
            },
          ),

          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
