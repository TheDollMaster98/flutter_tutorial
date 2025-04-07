import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBackCubit extends Cubit<void> {
   NavigationBackCubit() : super(null);

  void goBack(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    } else {
      Navigator.of(context).pushNamed('/home_page');
    }
  }
}
