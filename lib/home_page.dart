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
            title: const Text('Tutorial 1: Stateful Component'),
            onTap: () {
              Navigator.pushNamed(context, '/tutorial_1');
            },
          ),
          ListTile(
            title: const Text('Tutorial 2: Stateless Component'),
            onTap: () {
              Navigator.pushNamed(
                  context, '/tutorial_2_custom_component_stateless');
            },
          ),
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
