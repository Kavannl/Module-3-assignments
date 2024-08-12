import 'package:flutter/material.dart';

class River extends StatelessWidget {
  const River({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset('assets/mount.jpg')),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(title: Text("Oeschinen Lake Campground",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
              subtitle: Text("Kandersteg, Switzerland"),
              trailing: Icon(Icons.star,color: Colors.red,),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call,color: Colors.blue,),
                  Text('CALL',style: TextStyle(fontSize: 15,color: Colors.blue),)
                ],
              ),
              Column(
                children: [Icon(Icons.navigation,color: Colors.blue,),
                Text('ROUTE',style: TextStyle(color: Colors.blue),)
                ],
              ),
              Column(
                children: [Icon(Icons.share,color: Colors.blue,),
                  Text('SHARE',style: TextStyle(color: Colors.blue),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
