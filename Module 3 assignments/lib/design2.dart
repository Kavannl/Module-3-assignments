import 'package:flutter/material.dart';

class Design2 extends StatelessWidget {
  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange,
          ),
          Positioned(
            top: 250,
              child: Container(
                width: 410,
                height: 615,
                decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(60))),
              ),
          ),
          Positioned(
            top: 160,
              left: 130,
              child: CircleAvatar(
                radius: 80,
                  child: Image.asset('assets/soba.jpg',height: 115,))
          ),
          Positioned(
            top: 350,
            left: 120,
            child: Column(
              children: [
                Text("Sei Ua Samun Phrai",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.alarm_sharp,color: Colors.blue,),
                    Text("50min",style: TextStyle(fontWeight: FontWeight.w800)),
                    SizedBox(width: 20,),
                    Icon(Icons.star,color: Colors.amber,),
                    Text("4.8",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 23,),
                    Icon(Icons.local_fire_department_rounded,color: Colors.red,),
                    Text("325",style: TextStyle(fontWeight: FontWeight.w800),)
                  ],
                ),
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(40)),
                  height: 40,
                  width: 200,
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Text("S12",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(width: 20,),
                      Container(
                        height: double.infinity,
                        width: 128,
                        decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(70)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.remove),
                            Container(
                              height: 30,
                              width: 30,
                              child: Center(child: Text("1",style: TextStyle(fontWeight: FontWeight.bold),),),
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(100)),
                            ),
                            Icon(Icons.add)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Positioned(
            top: 530,
              left: 24,
              child: Text("Ingredients",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          Positioned(
            top: 570,
            left: 24,
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset("assets/noodle.jpg",height: 35,),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
                SizedBox(width: 18,),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset("assets/noodle.jpg",height: 35,),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
                SizedBox(width: 18,),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset("assets/noodle.jpg",height: 35,),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
                SizedBox(width: 18,),
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset("assets/noodle.jpg",height: 35,),
                      ),
                      Text("Noodle"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
              top: 680,
              left: 25,
              child: Text("About",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),)
          ),
          Positioned(
              top: 720,
              left: 25,
              child: Text("The foods are made with good quality ingredients and\n make with healthy contents of veges and fruits enjoy\n your dish.",style: TextStyle(fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
