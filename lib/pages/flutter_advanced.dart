import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FlutterAdvancedtPage extends StatelessWidget {
  const FlutterAdvancedtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Advanced'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Comandi Dart'),
            onTap: () => context.go('/flutter_advanced_dart_commands'),
          ),
          ListTile(
            title: const Text('Comandi Flutter'),
            onTap: () => context.go('/flutter_advanced_flutter_commands'),
          ),
          ListTile(
            title: const Text('Comandi Pubblicazione'),
            onTap: () => context.go('/flutter_advanced_publication'),
          ),
        ],
      ),
    );
  }
}
