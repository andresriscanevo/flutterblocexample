import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:async';
part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<ResetAC>((event, emit) async {
      emit(CalculatorState(
          mathResult: '0',
          firstResult: '0',
          secondResult: '0',
          operation: 'none'));
    });
    on<AddNumber>((event, emit) async {
      emit(state.copyWith(
        mathResult: (state.mathResult == '0')
            ? event.number
            : state.mathResult + event.number,
      ));
    });
    on<ChangeNegPos>((event, emit) async {
      emit(state.copyWith(
          mathResult: state.mathResult.contains('-')
              ? state.mathResult.replaceFirst('-', '')
              : '-${state.mathResult}'));
    });
    on<DelNumber>((event, emit) async {
      emit(state.copyWith(
          mathResult: state.mathResult.length > 1
              ? state.mathResult.substring(0, state.mathResult.length - 1)
              : '0'));
    });
    on<OperatorEntry>((event, emit) async {
      emit(state.copyWith(
          firstResult: state.mathResult,
          mathResult: '0',
          operation: event.operation,
          secondResult: '0'));
    });
    on<calculateResult>((event, emit) async {
      final double num1 = double.parse(state.firstResult);
      final double num2 = double.parse(state.mathResult);
      double result = 0.0;

      if (state.operation == '+') {
        result = num1 + num2;
      } else if (state.operation == '-') {
        result = num1 - num2;
      } else if (state.operation == '*') {
        result = num1 * num2;
      } else if (state.operation == '/') {
        result = num1 / num2;
      }

      emit(CalculatorState(
        mathResult: result.toString(),
        firstResult: num1.toString(),
        secondResult: num2.toString(),
        operation: state.operation.toString(),
      ));
    });
  }
}
