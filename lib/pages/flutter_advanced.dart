import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/menu_list_tile.dart';

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
        children: const [
          MenuListTile(title: 'Comandi Dart', route: '/flutter_advanced_dart_commands'),
          MenuListTile(title: 'Comandi Flutter', route: '/flutter_advanced_flutter_commands'),
          MenuListTile(title: 'Comandi Pubblicazione', route: '/flutter_advanced_publication'),
        ],
      ),
    );
  }
}
