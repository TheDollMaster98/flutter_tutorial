import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DartStartPage extends StatelessWidget {
  const DartStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Begin'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Tipi di Stato'),
            onTap: () => context.go('/dart_tutorial_type'),
          ),
          ListTile(
            title: const Text('Tipi di Collezioni'),
            onTap: () => context.go('/dart_tutorial_collectionType'),
          ),
          ListTile(
            title: const Text('Modificatori'),
            onTap: () => context.go('/dart_tutorial_modifier'),
          ),
          ListTile(
            title: const Text('Operatori'),
            onTap: () => context.go('/dart_tutorial_operators'),
          ),
          ListTile(
            title: const Text('Costruttori di Selezione'),
            onTap: () => context.go('/dart_tutorial_selection_constructs'),
          ),
          ListTile(
            title: const Text('Costruttori di Iterazione'),
            onTap: () => context.go('/dart_tutorial_loops'),
          ),
          ListTile(
            title: const Text('Asserzioni'),
            onTap: () => context.go('/dart_tutorial_assertions'),
          ),
          ListTile(
            title: const Text('Funzioni'),
            onTap: () => context.go('/dart_tutorial_functions'),
          ),
          ListTile(
            title: const Text('Classi'),
            onTap: () => context.go('/dart_tutorial_classes'),
          ),
          ListTile(
            title: const Text('Chiamate Asincrone'),
            onTap: () => context.go('/dart_tutorial_async'),
          ),
          ListTile(
            title: const Text('Isolates'),
            onTap: () => context.go('/dart_tutorial_isolates'),
          ),
        ],
      ),
    );
  }
}
