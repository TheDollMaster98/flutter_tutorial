import 'package:flutter/material.dart';

class FlutterStartPage extends StatelessWidget {
  const FlutterStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Start'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Tutorial 0: Intro'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_0');
            },
          ),
          ListTile(
            title: const Text('Tutorial 0.5: Widget Component'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_0.5');
            },
          ),
          ListTile(
            title: const Text('Tutorial 1: Stateless Component'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_1');
            },
          ),
          ListTile(
            title: const Text('Tutorial 2: Stateful Component'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_2');
            },
          ),

          ListTile(
            title: const Text('Tutorial 3: Bottoni e InkWell'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_3');
            },
          ),
          ListTile(
            title: const Text('Tutorial 4: Colori'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_4');
            },
          ),
          ListTile(
            title: const Text('Tutorial 5: Immagini'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_5');
            },
          ),
          ListTile(
            title: const Text('Tutorial 6: Contenitori'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_6');
            },
          ),
          ListTile(
            title: const Text('Tutorial 7: Card'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_7');
            },
          ),
          ListTile(
            title: const Text('Tutorial 8: Column & Row'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_8');
            },
          ),
          ListTile(
            title: const Text('Tutorial 9: Stack'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_9');
            },
          ),
          ListTile(
            title: const Text('Tutorial 10: List, SafeArea e Scroll'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_10');
            },
          ),
          ListTile(
            title: const Text('Tutorial 11: ListView'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_11');
            },
          ),
          ListTile(
            title: const Text('Tutorial 12: GridView'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_12');
            },
          ),
          ListTile(
            title: const Text('Tutorial 13: PageView e Indicatori'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_13');
            },
          ),
          ListTile(
            title: const Text('Tutorial 14: Forms'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_14');
            },
          ),
          ListTile(
            title: const Text('Tutorial 15: Tab Bar'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_15');
            },
          ),
          ListTile(
            title: const Text('Tutorial 16: Drawer'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_16');
            },
          ),
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
