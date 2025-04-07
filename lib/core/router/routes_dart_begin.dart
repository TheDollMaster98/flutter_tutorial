import 'package:go_router/go_router.dart';
import 'package:flutter_tutorial/features/dart_begin/type/dart_type.dart';
import 'package:flutter_tutorial/features/dart_begin/collection_type/dart_collection_type.dart';
import 'package:flutter_tutorial/features/dart_begin/modifier/modifier.dart';
import 'package:flutter_tutorial/features/dart_begin/operations/operations.dart';
import 'package:flutter_tutorial/features/dart_begin/Selection_builders/selection_constructs.dart';
import 'package:flutter_tutorial/features/dart_begin/loops/iteration_loops.dart';
import 'package:flutter_tutorial/features/dart_begin/assertions/assertions.dart';
import 'package:flutter_tutorial/features/dart_begin/functions/functions_page.dart';
import 'package:flutter_tutorial/features/dart_begin/class/class_page.dart';
import 'package:flutter_tutorial/features/dart_begin/async/dart_async.dart';
import 'package:flutter_tutorial/features/dart_begin/isolate/dart_isolate.dart';

final List<GoRoute> dartBeginRoutes = [
  GoRoute(path: '/dart_tutorial_type', builder: (context, state) => const DartTutorialTypes()),
  GoRoute(path: '/dart_tutorial_collectionType', builder: (context, state) => const DartTutorialCollectionType()),
  GoRoute(path: '/dart_tutorial_modifier', builder: (context, state) => const DartTutorialModifiers()),
  GoRoute(path: '/dart_tutorial_operators', builder: (context, state) => const DartTutorialOperators()),
  GoRoute(path: '/dart_tutorial_selection_constructs', builder: (context, state) => const DartTutorialSelectionConstructs()),
  GoRoute(path: '/dart_tutorial_loops', builder: (context, state) => const DartTutorialIterationLoops()),
  GoRoute(path: '/dart_tutorial_assertions', builder: (context, state) => const DartTutorialAssertions()),
  GoRoute(path: '/dart_tutorial_functions', builder: (context, state) => const FunctionsPage()),
  GoRoute(path: '/dart_tutorial_classes', builder: (context, state) => const ClassesPage()),
  GoRoute(path: '/dart_tutorial_async', builder: (context, state) => const AsyncPage()),
  GoRoute(path: '/dart_tutorial_isolates', builder: (context, state) => const DartTutorialIsolates()),
];
