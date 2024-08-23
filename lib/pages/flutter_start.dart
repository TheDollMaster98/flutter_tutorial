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
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_0',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 0.5: Widget Component'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_0.5',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 1: Stateless Component'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_1',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 2: Stateful Component'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_2',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 3: Bottoni e InkWell'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_3',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 4: Colori'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_4',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 5: Immagini'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_5',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 6: Contenitori'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_6',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 7: Card'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_7',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 8: Column & Row'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_8',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 9: Stack'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_9',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 10: List, SafeArea e Scroll'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_10',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 11: ListView'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_11',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 12: GridView'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_12',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 13: PageView e Indicatori'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_13',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 14: Forms'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_14',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 15: Tab Bar'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_15',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 16: Drawer'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_16',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          ListTile(
            title: const Text('Tutorial 17: Dialog'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/flutter_start_tutorial_17',
                ModalRoute.withName('/home_page'),
              );
            },
          ),
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
