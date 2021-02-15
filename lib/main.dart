import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class _MyAppState extends State<MyApp>{
  /*
  String data = 'Toplevel';
  void _onChangeState(newData){
    setState({
      data=newData;

    });
  }
 */
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create:(context) => data
      child:MaterialApp(
        theme:ThemeData(
          primaryColor:Colors.red,
          accentColor:Colors.redAccent
          
        ),
      ),
      title:'Task App Provider',
      home:HomePage()
    );
}
class MyApp extends StatelessWidget {
  @override
  _MyAppState createState() => _MyAppState;
  // This widget is the root of your application.
  final String data='Toplevel data 0101';
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create:(context) => data
      child:
      ChangeNotifierProvider(
        MaterialApp(
          theme:ThemeData(
            primaryColor:Colors.red,
            accentColor:Colors.redAccent
            
          ),
        )
      )
    );
  }
}
class MyTextField extends StatefulWidget {
  final Function onChange;
  @override
  _MyAppState createState() => _MyAppState;
  // This widget is the root of your application.
  final String data='Toplevel data 0101';
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:(newData) =>Provider.of(context, listen: false).changeString(newData),
      //onChanged:(newData) => /* onChange(newData) */ context.read<Data>().changeString(newData),
    );
  }
}
class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  /*
  final Function onChange;
  final String data;
  HomePage({
    @required this.data,
    @required this.onChange 
  });
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      appBar:AppBar(
        title:Container(child:Text(context.watch<Data>().getData())),

      ),
      body:Center(
        child:Widget1(data: this.data, onChange: this.onChange),
      )
    );
  }
}

class Widget1 extends StatelessWidget {
  // This widget is the root of your application.
  
  /*
  final String data;
  final Function onChange;
  Widget1({
    @required this.data,
    @required this.onChanged
  });
  */
  @override
  Widget build(BuildContext context) {
    return Container(
        Widget2(data:data, onChange:onChange);
      
    );
  }
}

class Widget2 extends StatelessWidget {
 /*
  final String data;
  // This widget is the root of your application.
  Widget2({
    @required this.data,
    @required this.onChnage
  });
  */
  @override
  Widget build(BuildContext context) {
    return Container(
      Column(
        children:<Widget>[
          // Container(child:Text('widget2')),
          MyTextField(onChange: onChange),
          Widget3(data:data),
        ]
      )
    );
  }
}
class Widget3 extends StatelessWidget {
  // This widget is the root of your application.
  /*
  Widget3({
    @required data: this.data
  });
  */
  @override
  Widget build(BuildContext context) {
    return Container(
      //child:Text(context.watch<Data>().getData())
      Column(
        children:<Widget>[
          Container(
            child:Text(Provider.of<String>(context))
            child:Text(context.watch<String>())),
          Text(''),
        ]
      )
    );
  }
}

