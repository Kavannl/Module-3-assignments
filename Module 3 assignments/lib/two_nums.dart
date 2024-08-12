import 'package:flutter/material.dart';

class TwoNums extends StatefulWidget {
  const TwoNums({super.key});

  @override
  State<TwoNums> createState() => _TwoNumsState();

}
class _TwoNumsState extends State<TwoNums> {
  final TextEditingController _controller = TextEditingController();
  String _reversedNumber = '';
  void _reverseNumber() {
    String inputText = _controller.text;
    if (inputText.isNotEmpty) {
      String reversedText = inputText
          .split('')
          .reversed
          .join('');
      setState(() {
        _reversedNumber = reversedText;
      });
    } else {
      setState(() {
        _reversedNumber = '';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "enter text",
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1
                    )
                  )
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: 300,
            child: TextField(
              controller: TextEditingController(text: _reversedNumber),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: _reverseNumber , child: Text("Click"))
        ],
      ),
    );
  }
}


