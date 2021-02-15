,import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      width:double.infinity,
      height:300,
      padding:const EdgeInsets.all(15.0),
      decoration:BoxDecoration(
        image:DecorationImage(
          image:Image.asset('assets/images/bg.png').image,
          fit:BoxFit.contain
        ),
        gradient:LinearGradient(colors: [
          Colors.red,
          Colors.red,
          
        ],
        begin:Alignment.topCenter,
        end:Alignment.bottomCenter
        ),
      ),
      child:SafeArea(
        Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Row(
              
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:<Widget>[
                CircleAvatar(
                  backgroundColor:ColorfromRGBO(255,0,0,0.3),
                  child:IconButton(
                    icon:Icon(Icons.dehaze),
                    color:Colors.white,
                    onPressed:(){}
                  ),
                ),
                CircleAvatar(
                  backgroundColor:ColorfromRGBO(255,0,0,0.3),
                  child:IconButton(
                    icon:Icon(Icons.calendar_today),
                    color:Colors.white,
                    onPressed:(){}
                  ),
                ),
              ]
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:<Widget>[
                Container(
                  alignment:Alignment.centerLeft,
                  height:50.0,
                  height:150,
                  child:ListView(
                    scrollDirection:Axis.horizontal,
                    children:<Widget>[
                      
                    ]
                  ),
                ),
                Chip(
                  backgroundColor:ColorfromRGBO(255,0,0,0.3),
                  label:Text('02.06.2020', style:TextStyle(color:Colors.white)),

                ),
                CircleAvatar(
                  backgroundColor:ColorfromRGBO(255,0,0,0.5),
                  child:IconButton(
                    icon:Icon(Icons.insert_chart),
                    color:Colors.white,
                    tooltip:'показать график,
                    onPressed:(){}
                  ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}

