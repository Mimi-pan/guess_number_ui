import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GUESS THE NUMBER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GUESS THE NUMBER')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            decoration: BoxDecoration(color: Colors.pink),
            child:Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/pic.png',width:100,height:100,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('GUESS',style:TextStyle(fontSize: 40,color: Colors.black),),
                            Text('THE NUMBER',style:TextStyle(fontSize: 20,color: Colors.black),),
                          ],)
                      ],
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: TextField(),
                    ),
                    ElevatedButton(onPressed: (){},child: Text('GUESS'),),
                  ],
                )
            )
        ),
      ),
    );
  }
}
