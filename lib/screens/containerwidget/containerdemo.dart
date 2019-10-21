import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            constraints: new BoxConstraints.expand(
              height:
                  Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
            ),
            decoration: new BoxDecoration(
              border: new Border.all(width: 2.0, color: Colors.red),
              color: Colors.grey,
              borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
              image: new DecorationImage(
                image: new NetworkImage(
                    'http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
                centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: new Text(
              'Hello World',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.black),
            ),
            transform: new Matrix4.rotationZ(0.3),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0, left: 120.0), // 容器外补白
            constraints: BoxConstraints.tightFor(width: 200.0,height: 150.0), // 卡片大小
            decoration: BoxDecoration(
              // 背景装饰
              gradient: RadialGradient(
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
                ),
              ]
            ),
            transform: Matrix4.rotationZ(.2),       // 卡片倾斜变换
            alignment: Alignment.center,
            child: Text(
              '520',
              style: TextStyle(color: Colors.white,fontSize: 40.0),
            ),
          ),
        ],
      ),
    );
  }
}
