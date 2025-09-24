import 'package:bmi_provider/bloc/bmi_event.dart';
import 'package:bmi_provider/bloc/bmi_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiBloc extends Bloc<BmiEvent, BmiState> {
  BmiBloc() : super(BmiInitialState()) {
    on((event, emit) {});
  }

  void selectGender(Gender gender) {}
}
