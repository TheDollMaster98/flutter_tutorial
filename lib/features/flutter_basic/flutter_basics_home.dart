import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          _FlutterBasicItem(title: 'Teoria', routeName: '/flutter_basic_theory'),
          _FlutterBasicItem(title: 'Intro', routeName: '/flutter_basic_intro'),
          _FlutterBasicItem(title: 'Widget Component', routeName: '/flutter_basic_widget'),
          _FlutterBasicItem(title: 'Stateless Component', routeName: '/flutter_basic_stateless'),
          _FlutterBasicItem(title: 'Stateful Component', routeName: '/flutter_basic_stateful'),
          _FlutterBasicItem(title: 'Bottoni e InkWell', routeName: '/flutter_basic_buttons'),
          _FlutterBasicItem(title: 'Colori', routeName: '/flutter_basic_colors'),
          _FlutterBasicItem(title: 'Immagini', routeName: '/flutter_basic_images'),
          _FlutterBasicItem(title: 'Contenitori', routeName: '/flutter_basic_containers'),
          _FlutterBasicItem(title: 'Card', routeName: '/flutter_basic_card'),
          _FlutterBasicItem(title: 'Column & Row', routeName: '/flutter_basic_column_row'),
          _FlutterBasicItem(title: 'Stack', routeName: '/flutter_basic_stack'),
          _FlutterBasicItem(title: 'List, SafeArea e Scroll', routeName: '/flutter_basic_list'),
          _FlutterBasicItem(title: 'ListView', routeName: '/flutter_basic_listview'),
          _FlutterBasicItem(title: 'GridView', routeName: '/flutter_basic_gridview'),
          _FlutterBasicItem(title: 'PageView e Indicatori', routeName: '/flutter_basic_pageview'),
          _FlutterBasicItem(title: 'Forms', routeName: '/flutter_basic_form'),
          _FlutterBasicItem(title: 'Tab Bar', routeName: '/flutter_basic_tabbar'),
          _FlutterBasicItem(title: 'Drawer', routeName: '/flutter_basic_drawer'),
          _FlutterBasicItem(title: 'Dialog', routeName: '/flutter_basic_dialog'),
        ],
      ),
    );
  }
}

class _FlutterBasicItem extends StatelessWidget {
  final String title;
  final String routeName;

  const _FlutterBasicItem({
    required this.title,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () => context.go(routeName),
    );
  }
}
