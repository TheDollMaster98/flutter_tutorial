import 'package:flutter/material.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_0_intro/flutter_start_tutorial_0.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_10_list/tutorial_10.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_11_listview/tutorial_11.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_1_stateless/tutorial_1.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_2_stateful/tutorial_2.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_3_buttons/tutorial_3.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_4_colors/tutorial_4.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_5_images/tutorial_5.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_6_containers/tutorial_6.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_7_card/tutorial_7.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_8_column_row/tutorial_8.dart';
import 'package:flutter_tutorial/flutter_start/flutter_start_tutorial_9_stack/tutorial_9.dart';

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
  '/tutorial_0': (context) => const FlutterStartTutorial0(),
  '/tutorial_1': (context) => const FlutterStartTutorial1(
        "Componente a cui non cambia lo stato.",
        12,
        word2: "Valore a caso.",
        style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
      ),
  '/tutorial_2': (context) => const FlutterStartTutorial2(20),
  '/tutorial_3': (context) => const FlutterStartTutorial3(),
  '/tutorial_4': (context) => const FlutterStartTutorial4(),
  '/tutorial_5': (context) => const FlutterStartTutorial5(),
  '/tutorial_6': (context) => const FlutterStartTutorial6(),
  '/tutorial_7': (context) => const FlutterStartTutorial7(),
  '/tutorial_8': (context) => const FlutterStartTutorial8(),
  '/tutorial_9': (context) => const FlutterStartTutorial9(),
  '/tutorial_10': (context) => const FlutterStartTutorial10(),
  '/tutorial_11': (context) => const FlutterStartTutorial11(),
};

Route<dynamic> onUnknownRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => const NotFoundPage(),
  );
}