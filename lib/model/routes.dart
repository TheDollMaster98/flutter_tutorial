import 'package:flutter/material.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_0_intro/flutter_start_tutorial_0.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_10_list/flutter_start_tutorial_10.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_11_listview/flutter_start_tutorial_11.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_12_gridview/flutter_start_tutorial_12.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_13_pageview/flutter_start_tutorial_13.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_14_form/flutter_start_tutorial_14.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_15_tabbar/flutter_start_tutorial_15.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_1_stateless/flutter_start_tutorial_1.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_2_stateful/flutter_start_tutorial_2.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_3_buttons/flutter_start_tutorial_3.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_4_colors/flutter_start_tutorial_4.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_5_images/flutter_start_tutorial_5.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_6_containers/flutter_start_tutorial_6.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_7_card/flutter_start_tutorial_7.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_8_column_row/flutter_start_tutorial_8.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_9_stack/flutter_start_tutorial_9.dart';

import 'package:flutter_tutorial/pages/flutter_start.dart';
import 'package:flutter_tutorial/pages/working_in_progress_page.dart';
import 'package:flutter_tutorial/pages/not_found_page.dart';

Map<String, WidgetBuilder> routes = {
  //PAGE:
  '/dart_begin': (context) => const WorkingInProgressPage(),
  '/flutter_start': (context) => const FlutterStartPage(),
  '/flutter_advanced': (context) => const WorkingInProgressPage(),
  '/flutter_architecture': (context) => const WorkingInProgressPage(),
  '/flutter_focus': (context) => const WorkingInProgressPage(),
  '/flutter_pro': (context) => const WorkingInProgressPage(),
  //FLUTTER START:
  '/flutter_start_tutorial_0': (context) => const FlutterStartTutorial0(),
  '/flutter_start_tutorial_1': (context) => const FlutterStartTutorial1(
        "Componente a cui non cambia lo stato.",
        12,
        word2: "Valore a caso.",
        style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
      ),
  '/flutter_start_tutorial_2': (context) => const FlutterStartTutorial2(20),
  '/flutter_start_tutorial_3': (context) => const FlutterStartTutorial3(),
  '/flutter_start_tutorial_4': (context) => const FlutterStartTutorial4(),
  '/flutter_start_tutorial_5': (context) => const FlutterStartTutorial5(),
  '/flutter_start_tutorial_6': (context) => const FlutterStartTutorial6(),
  '/flutter_start_tutorial_7': (context) => const FlutterStartTutorial7(),
  '/flutter_start_tutorial_8': (context) => const FlutterStartTutorial8(),
  '/flutter_start_tutorial_9': (context) => const FlutterStartTutorial9(),
  '/flutter_start_tutorial_10': (context) => const FlutterStartTutorial10(),
  '/flutter_start_tutorial_11': (context) => const FlutterStartTutorial11(),
  '/flutter_start_tutorial_12': (context) => const FlutterStartTutorial12(),
  '/flutter_start_tutorial_13': (context) => const FlutterStartTutorial13(),
  '/flutter_start_tutorial_14': (context) => const FlutterStartTutorial14(),
  '/flutter_start_tutorial_15': (context) => const FlutterStartTutorial15(),
};

Route<dynamic> onUnknownRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => const NotFoundPage(),
  );
}
