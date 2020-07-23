import 'package:flutter/material.dart';

class RudimentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('入门组件'),
      ),
      body: new Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.display1.fontSize * 0.1 + 200.0,
        ),
      //  margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(8.0),
        // color: Colors.amber[600],
        alignment: Alignment.center,
        //    width: 200,
        //   height: 500,
        child: new Column(
          children: <Widget>[
            
            // Row测试
            new Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '这是第一行',
                  //  textAlign: TextAlign.right,              // 文本对齐方式
                    textDirection: TextDirection.rtl,            // 文本方向
                    style: new TextStyle(
                      decorationColor: const Color(0xffDC143C),  // 线的颜色
                      decoration: TextDecoration.lineThrough,    // 线的显示方式
                      decorationStyle: TextDecorationStyle.double,  // 线的装饰风格
                      wordSpacing: 0.0,
                      letterSpacing: 1.0,                        // 字之间的间隙
                      fontStyle: FontStyle.italic,              // 文字样式，斜体和正常
                      fontSize: 20.0,                           // 文字大小
                      fontWeight: FontWeight.bold,              // 字体粗细
                      color: const Color(0xffc71585),           // 文字颜色
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '这是第二行'*6,
                    textDirection: TextDirection.rtl,  //
                    maxLines: 2,    // 最大行数
                  ),
                ),
                Expanded(
                  child: Text(
                    '这是第三行，多余长度会截断的，不信你可以试试',
                    textAlign: TextAlign.center,
                    softWrap: false,   // 是否自动换行
                    overflow: TextOverflow.ellipsis,  // 文字超出屏幕后的处理方式
                  ),
                )
              ],
              
            ),

            new RichText(
              text:TextSpan(
                text: '这段文字',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12.0
                ),
                children:  [
                  
                ]

              ),
            ),



            // column测试
            new Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Jsckson',
                textAlign: TextAlign.start,),
                Text('James'),
                Text('Lucy')
              ],
            ),


            /*****   返回按键  *****/
            new RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                '返回',
                style: TextStyle(fontSize: 15),
              ),
              color: Colors.red[500],
            ),
          ],
        ),
      ),
    );
  }
}
