import 'package:flutter/material.dart';

class Showw extends StatefulWidget {
  const Showw({super.key});

  @override
  State<Showw> createState() => _ShowwState();
}

class _ShowwState extends State<Showw> {
  bool isChecked = false;

  void _toggleCheckbox(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: _toggleCheckbox,
                ),
                Text('Show Text'),
              ],
            ),
            SizedBox(height: 20),
            if (isChecked)
              Text(
                'Shown!',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
