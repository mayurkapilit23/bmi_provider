import 'package:equatable/equatable.dart';

enum Gender { none, male, female }

abstract class BmiEvent extends Equatable {
  const BmiEvent();

  @override
  List<Object?> get props => [];
}

class GenderSelectionEvent extends BmiEvent {
  final bool isSelected;

  const GenderSelectionEvent(this.isSelected);

  @override
  List<Object?> get props => [isSelected];
}

class SwitchHeightUnitEvent extends BmiEvent {}

class FtSectionEvent extends BmiEvent {}

class CmSectionEvent extends BmiEvent {}

class LbsSectionEvent extends BmiEvent {}

class KgSectionEvent extends BmiEvent {}

class BmiCalculateEvent extends BmiEvent {}
