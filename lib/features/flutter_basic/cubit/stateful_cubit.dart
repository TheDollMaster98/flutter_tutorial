import 'package:flutter_bloc/flutter_bloc.dart';

class StatefulCubit extends Cubit<int> {
  final int _initialValue;

  StatefulCubit(this._initialValue) : super(_initialValue);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
  void reset() => emit(_initialValue);
}
