import 'package:flutter/material.dart';

class RudimentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('入门'),
      ),
      body: new Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.display1.fontSize * 0.1 + 200.0,
        ),
      //  margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(8.0),
        color: Colors.amber[600],
        alignment: Alignment.center,
        //    width: 200,
        //   height: 500,
        child: new Column(
          children: <Widget>[
            
            // Row测试
            new Row(
              children: <Widget>[
                Expanded(
                  child: Text('Row测试',textAlign: TextAlign.center,),
                ),
                Expanded(
                  child: Text('这是一个行',textAlign: TextAlign.center,),
                ),
                Expanded(
                  child: Text('就是一行',textAlign: TextAlign.center,),
                )
              ],
              
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
