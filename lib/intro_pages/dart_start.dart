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
            title: const Text('Type'),
            onTap: () {
              Navigator.pushNamed(context, '/dart_type');
            },
          ),
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
