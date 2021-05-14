import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(  MaterialApp( home: HomePage(),
    theme: ThemeData( brightness: Brightness.light, primaryColor: Colors.blue,
        accentColor: Colors.cyan[600])) );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Hello World') ), body: Dice() );
  }
}

class Dice extends StatefulWidget{
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice>{
  int number = 3;
  @override
  Widget build(BuildContext context) {
    return  Center( child: Row(  children:[
    Expanded( child: TextButton( onPressed: () { rolDice(); }, child: Image.asset('assets/dado$number.png')))
    ]));
  }

  void rolDice() {
    setState(() { number = Random().nextInt(6)+1; });
  }
}