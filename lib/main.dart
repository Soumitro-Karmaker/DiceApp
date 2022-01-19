import 'dart:math';

import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: MyApp(),
));
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int leftdice = 1;
  int rightdice = 2;
  int other = 3;
  rolldice(){
    setState(() {
      leftdice = Random().nextInt(6)+1;
      rightdice = Random().nextInt(6)+1;
      other = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body:Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  rolldice();
                } ,
                child: Image.asset('images/$leftdice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  rolldice();
                } ,
                child: Image.asset('images/$rightdice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  rolldice();
                } ,
                child: Image.asset('images/$other.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

