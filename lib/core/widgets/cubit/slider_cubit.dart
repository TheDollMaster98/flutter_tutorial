import 'package:flutter_bloc/flutter_bloc.dart';

/// Cubit che gestisce il valore dello slider
class SliderCubit extends Cubit<double> {
  SliderCubit() : super(0);

  // Metodo per aggiornare il valore dello slider
  void updateSlider(double value) => emit(value);
}
