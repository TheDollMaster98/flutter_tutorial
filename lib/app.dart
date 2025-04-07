import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/core/router/app_router.dart';
import 'package:flutter_tutorial/core/theme/theme_cubit.dart';


class CompleteFlutterGuideApp extends StatelessWidget {
  const CompleteFlutterGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter 3 Guida',
            theme: theme,
            routerConfig: appRouter,
          );
        },
      ),
    );
  }
}
