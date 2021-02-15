import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.White,
      body:Column(
          children:<Widget>[
              TopBar(),
          ],
      ),
      floatingActionButton:FloationActionButton(
          child:Icon(Icons.add),
          onPressed:(){},
          elevation:5,
          tooltip:"добавить новую задачу"
          
      )
    );
  }
}

