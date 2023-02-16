part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathResult;
  final String firstResult;
  final String secondResult;
  final String operation;

  CalculatorState(
      {this.mathResult = '40',
      this.firstResult = '30',
      this.secondResult = '10',
      this.operation = '+'});
  CalculatorState copyWith({
    final String? mathResult,
    final String? firstResult,
    final String? secondResult,
    final String? operation,
  }) =>
      CalculatorState(
          mathResult: mathResult ?? this.mathResult,
          firstResult: firstResult ?? this.firstResult,
          secondResult: secondResult ?? this.secondResult,
          operation: operation ?? this.operation);
}
