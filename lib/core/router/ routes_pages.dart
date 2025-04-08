import 'package:flutter_tutorial/pages/flutter_basics_home.dart';
import 'package:flutter_tutorial/pages/dart_start.dart';
import 'package:flutter_tutorial/pages/flutter_advanced.dart';
import 'package:flutter_tutorial/pages/home_page.dart';
import 'package:flutter_tutorial/pages/working_in_progress_page.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> baseRoutes = [
  GoRoute(
    path: '/home_page',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/dart_begin',
    builder: (context, state) => const DartStartPage(),
  ),
  GoRoute(
    path: '/flutter_basic',
    builder: (context, state) => const FlutterBasicHomePage(),
  ),
  GoRoute(
    path: '/flutter_advanced',
    builder: (context, state) => const FlutterAdvancedtPage(),
  ),
  GoRoute(
    path: '/flutter_architecture',
    builder: (context, state) => const WorkingInProgressPage(),
  ),
  GoRoute(
    path: '/flutter_focus',
    builder: (context, state) => const WorkingInProgressPage(),
  ),
  GoRoute(
    path: '/flutter_pro',
    builder: (context, state) => const WorkingInProgressPage(),
  ),
];
