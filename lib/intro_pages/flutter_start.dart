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
            title: const Text('Intro'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_intro');
            },
          ),
          ListTile(
            title: const Text('Widget Component'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_widget');
            },
          ),
          ListTile(
            title: const Text('Stateless Component'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_stateless');
            },
          ),
          ListTile(
            title: const Text('Stateful Component'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_stateful');
            },
          ),

          ListTile(
            title: const Text('Bottoni e InkWell'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_buttons');
            },
          ),
          ListTile(
            title: const Text('Colori'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_colors');
            },
          ),
          ListTile(
            title: const Text('Immagini'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_images');
            },
          ),
          ListTile(
            title: const Text('Contenitori'),
            onTap: () {
              Navigator.pushNamed(
                  context, '/flutter_start_tutorial_containers');
            },
          ),
          ListTile(
            title: const Text('Card'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_card');
            },
          ),
          ListTile(
            title: const Text('Column & Row'),
            onTap: () {
              Navigator.pushNamed(
                  context, '/flutter_start_tutorial_column_row');
            },
          ),
          ListTile(
            title: const Text('Stack'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_stack');
            },
          ),
          ListTile(
            title: const Text('List, SafeArea e Scroll'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_list');
            },
          ),
          ListTile(
            title: const Text('ListView'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_listview');
            },
          ),
          ListTile(
            title: const Text('GridView'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_gridview');
            },
          ),
          ListTile(
            title: const Text('PageView e Indicatori'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_pageview');
            },
          ),
          ListTile(
            title: const Text('Forms'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_form');
            },
          ),
          ListTile(
            title: const Text('Tutorial: Tab Bar'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_tabbar');
            },
          ),
          ListTile(
            title: const Text('Tutorial: Drawer'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_drawer');
            },
          ),
          ListTile(
            title: const Text('Tutorial: Dialog'),
            onTap: () {
              Navigator.pushNamed(context, '/flutter_start_tutorial_dialog');
            },
          ),
          // Aggiungi altre voci di tutorial qui...
        ],
      ),
    );
  }
}
