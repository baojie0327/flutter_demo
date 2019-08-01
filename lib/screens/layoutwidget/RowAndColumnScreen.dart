import 'package:flutter/material.dart';


/// Layout Widget，Row and Column


class RowAndColumnScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Row And Column'),
      ),
      body: new Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 主轴对齐方式
              children: <Widget>[
                Text('hello world '),
                Text('I am Jackson'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,  // 子Widgets在Row所占用的水平空间内对齐方式
              mainAxisAlignment: MainAxisAlignment.center, // MainAxisSize.min时无意义
              children: <Widget>[
                Text('hello world '),
                Text('I am Jackson'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,  // 文本方向是从右到左
              children: <Widget>[
                Text('hello world '),
                Text('I am Jackson'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,    // Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下
              children: <Widget>[
                Text('hello world ',style: TextStyle(fontSize: 30.0),),
                Text('I am Jackson'),
              ],
            ),
          ],
        ),
      ),
    );
  }

}