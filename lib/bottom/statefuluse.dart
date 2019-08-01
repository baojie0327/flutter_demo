import 'package:flutter/material.dart';

/// 有状态的组件
/// 1.创建一个继承自StatefulWidget的类，来表示你要定义的可变控件
/// 2.创建一个继承自State的类来处理这个可变控件的状态和显示样式（build方法）
/// 3.当用户交互发生时，可以调用setState方法告诉组件需要重绘

class StatefulUseScreen extends StatefulWidget {
  @override
  ThisState createState() => new ThisState();
}

class ThisState extends State<StatefulUseScreen> {
  int _counter = 0;

  void _increseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _descCounter(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('状态组件'),
      ),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('$_counter'),
            new Container(
              margin: EdgeInsets.all(8.0),
              child:new RaisedButton(
                onPressed: _increseCounter,
                child: Text('+'),
                color: Colors.red[500],

              ),
            ),
            new Container(
              margin: EdgeInsets.all(8.0),
              child: new RaisedButton(
                onPressed: _descCounter,
                child: Text('-'),
                color: Colors.green[500],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
