import 'package:equatable/equatable.dart';

abstract class BmiState extends Equatable {
  const BmiState();

  @override
  List<Object?> get props => [];
}

class BmiInitialState extends BmiState {}

class BmiCalculatedState extends BmiState {
  final double bmi;
  final String category;

  const BmiCalculatedState({required this.bmi, required this.category});

  @override
  List<Object?> get props => [bmi, category];
}
