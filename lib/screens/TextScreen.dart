import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text的使用'),
      ),
      body: new Container(
        child: new Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Flutter学习基础' * 6,

              /// 文本对齐方式，对齐的参考系是Text Widget本身，只有Text的宽度大于文本内容长度时，指定此属性才有意义
              textAlign: TextAlign.center,

              /// TextStyle属性,
              style: new TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[500],
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  //下划线
                  decorationStyle: TextDecorationStyle.dashed // 下划线是虚线
                  ),
            ),
            Text(
              '学习Flutter教程' * 8,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '文本相对于当前字体的缩放因子',
              textScaleFactor: 1.5,
            ),

            /// TextSpan,对一个Text内容的不同部分按照不同的样式显示
            RichText(
              text: TextSpan(
                text: 'Hello',
                style: TextStyle(color: Colors.blue),
                children: <TextSpan>[
                  TextSpan(
                    text: 'bold',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'world',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),

            DefaultTextStyle(
              // 设置默认文本样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Hello World'),
                  Text('I am Jack'),
                  Text(
                    'I am Jack',
                    style: TextStyle(inherit: false, color: Colors.grey),
                  ),
                  RaisedButton(
                    child: Text('RaisedButton'),
                    color: Colors.blue,
                    //按钮背景颜色
                    //  textColor: Colors.white, //按钮文字颜色
                    colorBrightness: Brightness.dark,
                    //按钮主题，默认是浅色主题,为了保证按钮文字颜色为浅色
                    splashColor: Colors.grey,
                    //点击时，水波动画中水波的颜色
                    highlightColor: Colors.red[500],
                    //按钮按下时的背景颜色
                    disabledColor: Colors.yellow[500],
                    //按钮禁用时的背景颜色
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    //外形
                    elevation: 2.0,
                    //正常状态下的阴影
                    highlightElevation: 8.0,
                    //按下时的阴影
                    disabledElevation: 0.0,
                    // 禁用时的阴影
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text('FlatButton'),
                    color: Colors.blue,
                    //按钮背景颜色
                    //  textColor: Colors.white, //按钮文字颜色
                    colorBrightness: Brightness.dark,
                    //按钮主题，默认是浅色主题,为了保证按钮文字颜色为浅色
                    splashColor: Colors.grey,
                    //点击时，水波动画中水波的颜色
                    highlightColor: Colors.red[500],
                    //按钮按下时的背景颜色
                    disabledColor: Colors.yellow[500],
                    //按钮禁用时的背景颜色
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    //外形
                    onPressed: () {},
                  ),
                  OutlineButton(
                    child: Text('OutlineButton'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            PopupMenuButton(
              //  icon: Icon(Icons.menu),
              child: Text('请选择'),
              tooltip: '长按提示',
              initialValue: 'home',
              padding: EdgeInsets.all(0.0),
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                    child: Text('首页'),
                    value: 'home',
                  ),
                  PopupMenuItem<String>(
                    child: Text('热映'),
                    value: 'hotshow',
                  ),
                  PopupMenuItem<String>(
                    child: Text('排行'),
                    value: 'ranklist',
                  ),
                  PopupMenuItem<String>(
                    child: Text('我的'),
                    value: 'mine',
                  ),
                ];
              },
              onSelected: (String action) {
                switch (action) {
                  case 'home':
                    print('首页');
                    break;
                  case 'hotshow':
                    print('热映');
                    break;
                  case 'ranklist':
                    print('排行');
                    break;
                  case 'mine':
                    print('我的');
                    break;
                }
              },
              onCanceled: () {
                print('oncancle');
              },
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  child: Text('按键一'),
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  textColor: Colors.black,
                  highlightedBorderColor: Colors.grey,
                  onPressed: (){},
                ),
                OutlineButton(
                  child: Text('按键二'),
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                  textColor: Colors.black,
                  highlightedBorderColor: Colors.grey,
                  onPressed: (){},
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Approve'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
