import 'package:flutter/material.dart';

class FlutterAdvancedtPage extends StatelessWidget {
  const FlutterAdvancedtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Advanced'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Comandi Dart'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_advanced_dart_commands');
            },
          ),
          ListTile(
            title: const Text('Comandi Flutter'),
            onTap: () {
              Navigator.pushNamed(
                  context, '/flutter_advanced_flutter_commands');
            },
          ),
          ListTile(
            title: const Text('Comandi Pubblicazione'),
            onTap: () {
              Navigator.pushNamed(context, '/fflutter_advanced_publication');
            },
          )
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
