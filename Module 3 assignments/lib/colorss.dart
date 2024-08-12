import 'package:flutter/material.dart';

class Colorss extends StatefulWidget {
  const Colorss({super.key});

  @override
  State<Colorss> createState() => _ColorssState();
}

class _ColorssState extends State<Colorss> {
  Color _selectedColor = Colors.white;

  void _setColor(Color? color) {
    setState(() {
      _selectedColor = color ?? Colors.white;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selector'),
      ),
      body: Container(
        color: _selectedColor, // Set the background color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select a color:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            RadioListTile<Color>(
              title: Text('Red'),
              value: Colors.red,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile<Color>(
              title: Text('Green'),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile<Color>(
              title: Text('Blue'),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile<Color>(
              title: Text('Yellow'),
              value: Colors.yellow,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
          ],
        ),
      ),
    );
  }
}
