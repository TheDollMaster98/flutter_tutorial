import 'package:flutter/material.dart';

// DART START:
import 'package:flutter_tutorial/intro_pages/dart_start.dart';
import 'package:flutter_tutorial/dart_begin/type/dart_type.dart';
import 'package:flutter_tutorial/dart_begin/collection_type/dart_collection_type.dart';
import 'package:flutter_tutorial/dart_begin/modifier/modifier.dart';
import 'package:flutter_tutorial/dart_begin/Selection_builders/selection_constructs.dart';
import 'package:flutter_tutorial/dart_begin/loops/iteration_loops.dart';
import 'package:flutter_tutorial/dart_begin/operations/operations.dart';

//FLUTTER START:
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_intro/flutter_start_tutorial_intro.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_0_widget/flutter_start_tutorial_0_widget.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_1_stateless/flutter_start_tutorial_1_stateless.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_2_stateful/flutter_start_tutorial_2_stateful.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_3_buttons/flutter_start_tutorial_3_buttons.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_4_colors/flutter_start_tutorial_4_colors.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_5_images/flutter_start_tutorial_5.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_6_containers/flutter_start_tutorial_6.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_7_card/flutter_start_tutorial_7.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_8_column_row/flutter_start_tutorial_8.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_9_stack/flutter_start_tutorial_9.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_10_list/flutter_start_tutorial_10.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_11_listview/flutter_start_tutorial_11.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_12_gridview/flutter_start_tutorial_12.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_13_pageview/flutter_start_tutorial_13.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_14_form/flutter_start_tutorial_14.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_15_tabbar/flutter_start_tutorial_15.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_16_drawer/flutter_start_tutorial_16.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_17_dialog/flutter_start_tutorial_17.dart';

//PAGE:
import 'package:flutter_tutorial/intro_pages/flutter_start.dart';
import 'package:flutter_tutorial/intro_pages/home_page.dart';
import 'package:flutter_tutorial/intro_pages/working_in_progress_page.dart';
import 'package:flutter_tutorial/intro_pages/not_found_page.dart';

Map<String, WidgetBuilder> routes = {
  //PAGE:
  '/home_page': (context) => const HomePage(),
  '/dart_begin': (context) => const DartStartPage(),
  '/flutter_start': (context) => const FlutterStartPage(),
  '/flutter_advanced': (context) => const WorkingInProgressPage(),
  '/flutter_architecture': (context) => const WorkingInProgressPage(),
  '/flutter_focus': (context) => const WorkingInProgressPage(),
  '/flutter_pro': (context) => const WorkingInProgressPage(),
  // DART START:
  '/dart_tutorial_type': (context) => const DartTutorialTypes(),
  '/dart_tutorial_collectionType': (context) =>
      const DartTutorialCollectionType(),
  '/dart_tutorial_modifier': (context) => const DartTutorialModifiers(),
  '/dart_tutorial_operators': (context) => const DartTutorialOperators(),
  '/dart_tutorial_selection_constructs': (context) =>
      const DartTutorialSelectionConstructs(),
  '/dart_tutorial_loops': (context) => const DartTutorialIterationLoops(),
  // '/dart_tutorial_': (context) => const WorkingInProgressPage(),
  //FLUTTER START:
  '/flutter_start_tutorial_intro': (context) =>
      const FlutterStartTutorialIntro(),
  '/flutter_start_tutorial_widget': (context) =>
      const FlutterStartTutorialWidget(),
  '/flutter_start_tutorial_stateless': (context) =>
      const FlutterStartTutorialStatelessWidget(
        "Componente a cui non cambia lo stato.",
        12,
        word2: "Valore a caso.",
        style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
      ),
  '/flutter_start_tutorial_stateful': (context) =>
      const FlutterStartTutorialStatefulWidget(20),
  '/flutter_start_tutorial_buttons': (context) =>
      const FlutterStartTutorialButtons(),
  '/flutter_start_tutorial_colors': (context) =>
      const FlutterStartTutorialColors(),
  //WIP per il refactory dei nomi delle rotte e dei file:
  '/flutter_start_tutorial_img': (context) => const FlutterStartTutorial5(),
  '/flutter_start_tutorial_containers': (context) =>
      const FlutterStartTutorial6(),
  '/flutter_start_tutorial_card': (context) => const FlutterStartTutorial7(),
  '/flutter_start_tutorial_column_row': (context) =>
      const FlutterStartTutorial8(),
  '/flutter_start_tutorial_stack': (context) => const FlutterStartTutorial9(),
  '/flutter_start_tutorial_list': (context) => const FlutterStartTutorial10(),
  '/flutter_start_tutorial_listview': (context) =>
      const FlutterStartTutorial11(),
  '/flutter_start_tutorial_gridview': (context) =>
      const FlutterStartTutorial12(),
  '/flutter_start_tutorial_pageview': (context) =>
      const FlutterStartTutorial13(),
  '/flutter_start_tutorial_form': (context) => const FlutterStartTutorial14(),
  '/flutter_start_tutorial_tabber': (context) => const FlutterStartTutorial15(),
  '/flutter_start_tutorial_drawer': (context) => const FlutterStartTutorial16(),
  '/flutter_start_tutorial_dialog': (context) => const FlutterStartTutorial17(),
  // '/flutter_start_tutorial_': (context) => const FlutterStartTutorial(),
};

Route<dynamic> onUnknownRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => const NotFoundPage(),
  );
}
