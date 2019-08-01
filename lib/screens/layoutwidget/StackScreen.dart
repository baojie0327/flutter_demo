import 'package:flutter/material.dart';

/// 层叠布局

class StackScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title:Text('层叠布局'),
      ),
      body: ConstrainedBox(  //通过ConstrainedBox来确保Stack占满屏幕
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,  // 决定如何去对齐没有定位（没有使用Positioned）或部分定位的子widget
          fit: StackFit.loose,        // 决定没有定位的子widget如何去适应Stack的大小。StackFit.loose表示使用子widget的大小，StackFit.expand表示扩伸到Stack的大小。
          children: <Widget>[
            Positioned(
              left: 18.0,             // 只指定了水平方向的定位(left)，所以属于部分定位，即垂直方向上没有定位，那么它在垂直方向对齐方式则会按照alignment指定的对齐方式对齐，即垂直方向居中
              child: Text('I am Jack'),
            ),
            Container(
              child: Text('hello world',style: TextStyle(color: Colors.white),),
              color: Colors.red,
            ),

            Positioned(
              top: 18.0,
              child: Text('Your friend'),
            ),
          ],
        ),
      ),
    );
  }

}