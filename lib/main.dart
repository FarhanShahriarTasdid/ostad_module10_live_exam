import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}


class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Exam Module 10',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Need Blood',
          //textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
            color: Colors.white,

          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,)),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.black45,
              child: Icon(Icons.bloodtype_outlined,size: 80,color: Colors.red,),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Donate blood',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),)
          ],
        ),
      ),
    );
  }
}