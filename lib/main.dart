import 'package:flutter/material.dart';

import './ques.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  int _i;
  void answerHandler(){
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
          Question(
            'Question 1 : Placeholder Sentence placeholding the area for a non-placeholder sentence?'),
          Answer(1,"Option 1",() => setState(()=>_i=1)),
          Answer(2,"Option 2",() => setState(()=>_i=0)),
          Answer(3,"Option 3",() => setState(()=>_i=0)),
          Answer(4,"Option 4",() => setState(()=>_i=0)),
          (_i!=null)?(_i==1)?Text("Correct",style: TextStyle(color: Colors.green),):Text("Incorrect",style: TextStyle(color: Colors.red),):Container(),
        ]),
      ),
    );
  }
}
