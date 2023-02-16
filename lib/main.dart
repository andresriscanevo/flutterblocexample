import 'package:flutter_example/bloc/calculator/calculator_bloc.dart';
import 'package:flutter_example/screens/calculador_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<CalculatorBloc>(create: (_) => CalculatorBloc())
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material',
      home: CalculatorScreen(),
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.blueGrey),
    );
  }
}
