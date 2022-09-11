import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;
  String get resultpharase {
    String resultText = '';
    if (result >= 30)
      resultText = 'obese';
    else if (result >= 25 && result < 30)
      resultText = 'overWeight';
    else if (result >= 18 && result < 25)
      resultText = 'normal';
    else
      resultText = 'Thin';
    return resultText;
  }

  const Result(
      {super.key,
      required this.result,
      required this.isMale,
      required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Gender: ${isMale ? 'Male' : 'Female'}',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Result: ${result.toStringAsFixed(1)}',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Healthness: ${resultpharase}',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            Text(
              'age: ${age}',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
