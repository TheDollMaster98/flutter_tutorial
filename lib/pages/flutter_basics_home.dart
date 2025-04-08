import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/widgets/menu_list_tile.dart';

class FlutterBasicHomePage extends StatelessWidget {
  const FlutterBasicHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basic'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          MenuListTile(title: 'Teoria', route: '/flutter_basic_theory'),
          MenuListTile(title: 'Intro', route: '/flutter_basic_intro'),
          MenuListTile(title: 'Widget Component', route: '/flutter_basic_widget'),
          MenuListTile(title: 'Stateless Component', route: '/flutter_basic_stateless'),
          MenuListTile(title: 'Stateful Component', route: '/flutter_basic_stateful'),
          MenuListTile(title: 'Bottoni e InkWell', route: '/flutter_basic_buttons'),
          MenuListTile(title: 'Colori', route: '/flutter_basic_colors'),
          MenuListTile(title: 'Immagini', route: '/flutter_basic_images'),
          MenuListTile(title: 'Contenitori', route: '/flutter_basic_containers'),
          MenuListTile(title: 'Card', route: '/flutter_basic_card'),
          MenuListTile(title: 'Column & Row', route: '/flutter_basic_column_row'),
          MenuListTile(title: 'Stack', route: '/flutter_basic_stack'),
          MenuListTile(title: 'List, SafeArea e Scroll', route: '/flutter_basic_list'),
          MenuListTile(title: 'ListView', route: '/flutter_basic_listview'),
          MenuListTile(title: 'GridView', route: '/flutter_basic_gridview'),
          MenuListTile(title: 'PageView e Indicatori', route: '/flutter_basic_pageview'),
          MenuListTile(title: 'Tile', route: '/flutter_basic_tile'),
          MenuListTile(title: 'Forms', route: '/flutter_basic_form'),
          MenuListTile(title: 'Tab Bar', route: '/flutter_basic_tabbar'),
          MenuListTile(title: 'Drawer', route: '/flutter_basic_drawer'),
          MenuListTile(title: 'Dialog', route: '/flutter_basic_dialog'),
        ],
      ),
    );
  }
}
