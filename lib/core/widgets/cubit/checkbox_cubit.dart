import 'package:flutter_bloc/flutter_bloc.dart';

class CheckboxState {
  final bool? isChecked;
  final bool? isCheckedTile;

  const CheckboxState({this.isChecked, this.isCheckedTile = true});

  CheckboxState copyWith({bool? isChecked, bool? isCheckedTile}) {
    return CheckboxState(
      isChecked: isChecked ?? this.isChecked,
      isCheckedTile: isCheckedTile ?? this.isCheckedTile,
    );
  }
}

class CheckboxCubit extends Cubit<CheckboxState> {
  CheckboxCubit() : super(const CheckboxState());

  void toggleCheck(bool? value) {
    emit(state.copyWith(isChecked: value));
  }

  void toggleCheckTile(bool? value) {
    emit(state.copyWith(isCheckedTile: value));
  }
}
