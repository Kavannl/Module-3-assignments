import 'package:flutter/material.dart';

class Imagess extends StatefulWidget {
  const Imagess({super.key});

  @override
  State<Imagess> createState() => _ImagessState();
}

class _ImagessState extends State<Imagess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Surrounded by Images'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top Image
              Image.asset(
                'assets/mount.jpg', // Replace with your image asset path
                height: 100,
                width: 100
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Left Image
                  Image.asset(
                    'assets/mount.jpg', // Replace with your image asset path
                    height: 100,
                    width: 100,
                  ),
                  // Center Text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'kav',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  // Right Image
                  Image.asset(
                    'assets/mount.jpg', // Replace with your image asset path
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              // Bottom Image
              Image.asset(
                'assets/mount.jpg', // Replace with your image asset path
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
