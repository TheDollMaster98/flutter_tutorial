import 'package:flutter_bloc/flutter_bloc.dart';

/// Enum che rappresenta le varianti di Card disponibili
enum CardVariant {
  basic,
  normal,
  pro,
}

/// Cubit per gestire lo stato dei radio button
class RadioButtonCubit extends Cubit<CardVariant> {
  RadioButtonCubit() : super(CardVariant.basic);

  /// Metodo per cambiare il valore selezionato
  void selectVariant(CardVariant variant) {
    emit(variant);
  }
}
