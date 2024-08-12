import 'package:flutter/material.dart';
import 'package:module/s2.dart';

class Scr1 extends StatelessWidget {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: firstNumberController,
              decoration: InputDecoration(
                labelText: 'Enter first number',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: secondNumberController,
              decoration: InputDecoration(
                labelText: 'Enter second number',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int firstNumber = int.parse(firstNumberController.text);
                int secondNumber = int.parse(secondNumberController.text);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scr2(
                      firstNumber: firstNumber,
                      secondNumber: secondNumber,
                    ),
                  ),
                );
              },
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}
