part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class ResetAC extends CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;
  AddNumber(this.number);
}

class ChangeNegPos extends CalculatorEvent {}

class DelNumber extends CalculatorEvent {}

class OperatorEntry extends CalculatorEvent {
  final String operation;

  OperatorEntry(this.operation);
}

class calculateResult extends CalculatorEvent {}
