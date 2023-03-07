import 'package:flutter/material.dart';
import 'package:untitled1/Statemangement/counterex/counter1.dart';
import 'package:untitled1/Statemangement/counterex/counter2.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        width: 500,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dashboard", style: TextStyle(fontSize: 60)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Counter1(),
                SizedBox(width: 20),
                Counter2(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
