import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsCubit extends Cubit<bool> {
  ButtonsCubit() : super(false);

  void toggleTap() => emit(!state);
}
