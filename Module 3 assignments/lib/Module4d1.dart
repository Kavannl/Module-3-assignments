import 'package:flutter/material.dart';

class M4d1 extends StatelessWidget {
  const M4d1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Menu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                    Icon(Icons.telegram,size: 40,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 34,
                      width: 80,
                      child: Center(child: Text("Kienza",style: TextStyle(fontWeight: FontWeight.w800),)),
                      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(width: 18,),
                    Container(
                      height: 34,
                      width: 80,
                      child: Center(child: Text("Mamam",style: TextStyle(fontWeight: FontWeight.w800),)),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(5)),
                    ),SizedBox(width: 18,),
                    Container(
                      height: 34,
                      width: 80,
                      child: Center(child: Text("Tanuki",style: TextStyle(fontWeight: FontWeight.w800),)),
                      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(5)),
                    ),SizedBox(width: 18,),
                    Container(
                      height: 38,
                      width: 80,
                      child: Center(child: Text("Gasticki",style: TextStyle(fontWeight: FontWeight.w800),)),
                      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20),
                child: Row(
                  children: [
                    Text("All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 18,),

                    Text("Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    SizedBox(width: 18,),

                    Text("Pizza",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    SizedBox(width: 18,),

                    Text("Asian",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    SizedBox(width: 18,),

                    Text("Burger",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    SizedBox(width: 18,),

                    Text("Desert",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    SizedBox(width: 18,),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70,left: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            height: 100,
                            width: 180,
                            child: Image.asset("assets/vege.jpg",)),
                        Text("Vegetables And\n Poached Egg",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.black,),
                            Text("(11)",)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70,left: 20),
                    child: Column(
                      children: [
                         ClipRRect(
                           borderRadius:BorderRadius.circular(20),
                                child: Image.asset("assets/avo.jpg",fit: BoxFit.cover,height: 100,width: 100,)
                         ),
                        Text("Vegetables And\n Poached Egg",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        const Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.black,),
                            Icon(Icons.star,color: Colors.black,),
                            Text("(11)",)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
