import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubits/cubits.dart';
import '../../Cubits/state.dart';

class Counter2 extends StatelessWidget {
  const Counter2({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<countercubit, counterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Card(
          elevation: 6,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Center(
              child: Text('${BlocProvider.of<countercubit>(context).counter}', style: TextStyle(fontSize: 40)),
            ),
          ),
        );
      },
    );
  }
}
