import 'package:flutter/material.dart';

class MyFontSz extends StatefulWidget {
  const MyFontSz({super.key});

  @override
  State<MyFontSz> createState() => _MyFontSzState();
}

class _MyFontSzState extends State<MyFontSz> {
  double fontSize = 16.0;

  void increaseFontSize() {
    setState(() {
      fontSize += 2;
    });
  }

  void decreaseFontSize() {
    setState(() {
      if (fontSize > 2) {
        fontSize -= 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size increase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Kavan',
              style: TextStyle(fontSize: fontSize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decreaseFontSize,
                  child: Text('Decrease'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: increaseFontSize,
                  child: Text('Increase'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
