import 'package:flutter_bloc/flutter_bloc.dart';

class StatelessCubit extends Cubit<String> {
  StatelessCubit() : super("Stateless");

  void updateTitle(String newTitle) {
    emit(newTitle);
  }
}
