import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Cubits/cubits.dart';
import 'package:untitled1/Cubits/state.dart';
import 'package:untitled1/Statemangement/counterex/dashboard.dart';

class Counter extends StatelessWidget {
  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<countercubit, counterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(title: const Text('Demo')),
            body: const Center(
              child: Dashboard(),
            ),
            floatingActionButton: Row(
              children: [
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                     BlocProvider.of<countercubit>(context).increment();
                  },

                ),
                FloatingActionButton(
                  child: const Icon(Icons.minimize),
                  onPressed: () {
                    BlocProvider.of<countercubit>(context).decrement();
                  },

                )
              ],
            )

        );
      },
    );
  }
}
