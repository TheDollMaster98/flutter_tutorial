import 'package:flutter_tutorial/features/flutter_advanced/flutter_advanced_commands_tools/dart_commands.dart';
import 'package:flutter_tutorial/features/flutter_advanced/flutter_advanced_commands_tools/flutter_commands.dart';
import 'package:flutter_tutorial/features/flutter_advanced/flutter_advanced_commands_tools/publication_steps.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> flutterAdvancedRoutes = [
  GoRoute(
    path: '/flutter_advanced_dart_commands',
    builder: (context, state) => const DartCommands(),
  ),
  GoRoute(
    path: '/flutter_advanced_flutter_commands',
    builder: (context, state) => const FlutterCommands(),
  ),
  GoRoute(
    path: '/flutter_advanced_publication',
    builder: (context, state) => const PublicationSteps(),
  ),
];
