import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NavigationCubit extends Cubit<void> {
  NavigationCubit() : super(null);

  void goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    }
  }
}
