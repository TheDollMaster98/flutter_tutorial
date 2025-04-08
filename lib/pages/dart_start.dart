import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/menu_list_tile.dart';

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
        children: const [
          MenuListTile(title: 'Tipi di Stato', route: '/dart_tutorial_type'),
          MenuListTile(title: 'Tipi di Collezioni', route: '/dart_tutorial_collectionType'),
          MenuListTile(title: 'Modificatori', route: '/dart_tutorial_modifier'),
          MenuListTile(title: 'Operatori', route: '/dart_tutorial_operators'),
          MenuListTile(title: 'Costruttori di Selezione', route: '/dart_tutorial_selection_constructs'),
          MenuListTile(title: 'Costruttori di Iterazione', route: '/dart_tutorial_loops'),
          MenuListTile(title: 'Asserzioni', route: '/dart_tutorial_assertions'),
          MenuListTile(title: 'Funzioni', route: '/dart_tutorial_functions'),
          MenuListTile(title: 'Classi', route: '/dart_tutorial_classes'),
          MenuListTile(title: 'Chiamate Asincrone', route: '/dart_tutorial_async'),
          MenuListTile(title: 'Isolates', route: '/dart_tutorial_isolates'),
        ],
      ),
    );
  }
}
