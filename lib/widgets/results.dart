import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/bloc/calculator/calculator_bloc.dart';
import 'sub_result.dart';

import 'line_separator.dart';
import 'main_result.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstResult),
            SubResult(text: state.operation),
            SubResult(text: state.secondResult),
            LineSeparator(),
            MainResultText(text: state.mathResult),
          ],
        );
      },
    );
  }
}
