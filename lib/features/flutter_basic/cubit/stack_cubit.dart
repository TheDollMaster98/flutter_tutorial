import 'package:flutter_bloc/flutter_bloc.dart';

class StackCubit extends Cubit<int> {
  StackCubit() : super(0);

  // Metodo di esempio per futura espansione
  void increment() => emit(state + 1);
}
