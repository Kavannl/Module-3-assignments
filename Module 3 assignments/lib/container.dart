import 'package:flutter/material.dart';

class Containerr extends StatelessWidget {
  const Containerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 400,
              color: Colors.red,
            ),
          ),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 190,
                    width: 190,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 190,
                  width: 190,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 190,
                    width: 190,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 190,
                  width: 190,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 120,
                    width: 120,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
