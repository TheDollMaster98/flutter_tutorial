import 'package:flutter_tutorial/core/router/%20routes_pages.dart';
import 'package:flutter_tutorial/core/router/routes_dart_begin.dart';
import 'package:flutter_tutorial/core/router/routes_flutter_advanced.dart';
import 'package:flutter_tutorial/core/router/routes_flutter_basic.dart';
import 'package:flutter_tutorial/pages/not_found_page.dart';
import 'package:go_router/go_router.dart';


final GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/home_page',
  errorBuilder: (context, state) => const NotFoundPage(),
  routes: [
    ...baseRoutes,
    ...dartBeginRoutes,
    ...flutterBasicRoutes,
    ...flutterAdvancedRoutes,
  ],
);
