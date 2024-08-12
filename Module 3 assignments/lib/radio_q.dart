import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  String operation = 'Add'; // Default operation
  double? result;

  void calculateResult() {
    double num1 = double.parse(number1Controller.text);
    double num2 = double.parse(number2Controller.text);

    setState(() {
      switch (operation) {
        case 'Add':
          result = num1 + num2;
          break;
        case 'Subtract':
          result = num1 - num2;
          break;
        case 'Multiply':
          result = num1 * num2;
          break;
        case 'Divide':
          result = num2 != 0 ? num1 / num2 : null;
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: number1Controller,
              decoration: InputDecoration(
                labelText: 'Enter first number',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: number2Controller,
              decoration: InputDecoration(
                labelText: 'Enter second number',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Text('Choose an operation:'),
            Row(
              children: [
                Radio<String>(
                  value: 'Add',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Add'),
                Radio<String>(
                  value: 'Subtract',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Subtract'),
                Radio<String>(
                  value: 'Multiply',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Multiply'),
                Radio<String>(
                  value: 'Divide',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Divide'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateResult,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: ${result ?? ""}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
