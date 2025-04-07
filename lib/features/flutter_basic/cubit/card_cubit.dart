import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit che gestisce il contatore click per la card interattiva
class CardCubit extends Cubit<int> {
  CardCubit() : super(0);

  void incrementCounter() {
    emit(state == 10 ? 0 : state + 1);
  }
}
