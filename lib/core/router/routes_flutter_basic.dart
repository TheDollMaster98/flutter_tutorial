import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/features/flutter_basic/flutter_basics_home.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/buttons_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/card_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/colors_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/column_row_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/containers_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/dialog_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/drawer_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/form_widgets_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/gridview_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/images_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/list_safe_scroll_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/listview_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/pageview_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/stack_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/stateful_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/stateless_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/tabbar_tutorial_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/theory_page.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/tutorial_intro.dart';
import 'package:flutter_tutorial/features/flutter_basic/pages/widgets_intro_page.dart';

final List<GoRoute> flutterBasicRoutes = [
  GoRoute(path: '/flutter_basic', builder: (context, state) => const FlutterBasicHomePage()),
  GoRoute(path: '/flutter_basic_theory', builder: (context, state) => const TheoryPage()),
  GoRoute(path: '/flutter_basic_intro', builder: (context, state) => const IntroPage()),
  GoRoute(path: '/flutter_basic_widget', builder: (context, state) => const WidgetsIntroPage()),
  GoRoute(path: '/flutter_basic_stateless', builder: (context, state) => const StatelessPage("Componente a cui non cambia lo stato.", 12, word2: "Valore a caso.", style: TextStyle(fontSize: 30, color: Colors.pinkAccent))),
  GoRoute(path: '/flutter_basic_stateful', builder: (context, state) => const StatefulPage(20)),
  GoRoute(path: '/flutter_basic_buttons', builder: (context, state) => const ButtonsPage()),
  GoRoute(path: '/flutter_basic_colors', builder: (context, state) => const ColorsPage()),
  GoRoute(path: '/flutter_basic_images', builder: (context, state) => const ImagesPage()),
  GoRoute(path: '/flutter_basic_containers', builder: (context, state) => const ContainersPage()),
  GoRoute(path: '/flutter_basic_card', builder: (context, state) => const CardPage()),
  GoRoute(path: '/flutter_basic_column_row', builder: (context, state) => const ColumnRowPage()),
  GoRoute(path: '/flutter_basic_stack', builder: (context, state) => const StackPage()),
  GoRoute(path: '/flutter_basic_list', builder: (context, state) => const ListSafeScrollPage()),
  GoRoute(path: '/flutter_basic_listview', builder: (context, state) => const ListViewPage()),
  GoRoute(path: '/flutter_basic_gridview', builder: (context, state) => const GridViewPage()),
  GoRoute(path: '/flutter_basic_pageview', builder: (context, state) => const PageViewPage()),
  GoRoute(path: '/flutter_basic_form', builder: (context, state) => const FormWidgetsPage()),
  GoRoute(path: '/flutter_basic_tabbar', builder: (context, state) => const TabBarPage()),
  GoRoute(path: '/flutter_basic_drawer', builder: (context, state) => const DrawerPage()),
  GoRoute(path: '/flutter_basic_dialog', builder: (context, state) => const DialogPage()),
];
