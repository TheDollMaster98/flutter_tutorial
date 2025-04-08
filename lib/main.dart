import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/app.dart';
import 'package:flutter_tutorial/core/cubit/navigation_back_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavigationCubit())
      ],
      child: const CompleteFlutterGuideApp(),
    ),
  );
}
