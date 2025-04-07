import 'package:flutter_bloc/flutter_bloc.dart';

/// Cubit per gestire lo stato degli switch (normale e Tile)
class SwitchButtonCubit extends Cubit<(bool, bool)> {
  SwitchButtonCubit() : super((false, false));

  void toggleSwitch(bool value) => emit((value, state.$2));
  void toggleSwitchTile(bool value) => emit((state.$1, value));
}
