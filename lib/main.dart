import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Cubits/cubits.dart';
import 'package:untitled1/Statemangement/counterex/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => countercubit(),
      child: MaterialApp(
        home: Counter(
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
