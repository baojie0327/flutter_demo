import 'package:flutter/material.dart';

/// IndexStack

class IndexStackScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('IndexStack'),
      ),
      body: Container(
        child: IndexedStack(
          index: 2,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage('http://img8.zol.com.cn/bbs/upload/23765/23764201.jpg'),
              radius: 100.0,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Jackson',style: TextStyle(fontSize: 18.0),),
                ],
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage('http://img8.zol.com.cn/bbs/upload/23765/23764208.jpg'),
              radius: 100.0,
            ),

          ],
        ),
      ),
    );
  }

}