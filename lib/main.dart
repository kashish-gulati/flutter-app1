import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  int _i;
  void answer(){
    setState(() {
      _i=0;
    });
    print('Answer Button Pressed');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test App 1')),
        body: Column(children: <Widget>[
          Text(
            'Question 1 : Placeholder Sentence placeholding the area for a non-placeholder sentence?',style: TextStyle(fontSize: 20)
          ),
          Row(children: <Widget>[
            RaisedButton(onPressed: answer, child: Text('Set to 0')),
            RaisedButton(onPressed: () =>setState(() => print('Answer ${_i++} Pressed')) , child: Text('Increment'))
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
          Row(children: <Widget>[
            RaisedButton(onPressed: () => setState(() {print('Answer 3 Pressed');_i-=4;}), child: Text('Subtract 4')),
            RaisedButton(onPressed: null, child: Text('Option 4')),
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
          Text('$_i was selected')
        ]),
      ),
    );
  }
}
