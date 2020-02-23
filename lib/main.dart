import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answer(){
    print('Answer Button Pressed');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test App 1')),
        body: Column(children: <Widget>[
          Text(
            'Question 1 : Placeholder Sentence placeholding the area for a non-placeholder sentence?',style: TextStyle(fontSize: 20)
          ),
          Row(children: <Widget>[
            RaisedButton(onPressed: answer, child: Text('Option 1')),
            RaisedButton(onPressed: () => print('Answer 2 Pressed') , child: Text('Option 2'))
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,),
          Row(children: <Widget>[
            RaisedButton(onPressed: () {print('Answer 3 Pressed');}, child: Text('Option 3')),
            RaisedButton(onPressed: null, child: Text('Option 4')),
          ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,)
        ]),
      ),
    );
  }
}
