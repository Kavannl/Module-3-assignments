import 'package:flutter/material.dart';

class Scr2 extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  Scr2({required this.firstNumber, required this.secondNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];
    for (int i = firstNumber + 1; i < secondNumber; i++) {
      numbers.add(i);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers Between'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(numbers[index].toString()),
          );
        },
      ),
    );
  }
}
