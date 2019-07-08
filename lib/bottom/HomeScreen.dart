import 'package:flutter/material.dart';
import 'package:flutter_demo/intentData.dart';
import 'package:flutter_demo/rudiment.dart';

///首页

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('flutter_demo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_time),
            tooltip: 'Alarm',
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new RudimentScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.add_call),
            tooltip: 'Alarm',
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new RudimentScreen()));
            },
          ),
        ],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
//                Navigator.push(
//                  context,
//                  new MaterialPageRoute(
//                      builder: (context) => new RudimentScreen()),
//                );
                Navigator.of(context).pushNamed('/rudiment');
              },
              child: Text(
                '入门',
                style: TextStyle(fontSize: 15),
              ),
              color: Colors.red[500],
            ),
            new RaisedButton(
              onPressed: () async {
                String result = await Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new IntentScreen('传递过来的值')));
                if (result != null) {
                  print(result);
                }
              },
              child: Text(
                '跳转传值',
                style: TextStyle(fontSize: 15),
              ),
              color: Colors.red[500],
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/constainer');
              },
              child: Text(
                'Container',
                style: TextStyle(fontSize: 15),
              ),
              color: Colors.red[500],
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/stateful');
              },
              child: Text(
                '有状态组件的使用',
                style: TextStyle(fontSize: 15),
              ),
              color: Colors.red[500],
            )
          ],
        ),
      ),
    );
  }
}
