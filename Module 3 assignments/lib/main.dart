import 'package:flutter/material.dart';
import 'Module4d1.dart';
import 'design2.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (M4d1()),
    );
  }
}
