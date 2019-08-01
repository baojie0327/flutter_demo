import 'package:flutter/material.dart';

/// 流式布局
class FlowScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              alignment: WrapAlignment.start,
              children: <Widget>[
               Chip(
                 label: new Text('android'),
                 avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A'),),
               ),
                Chip(
                  label: new Text('java'),
                  avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('J'),),
                ),
                Chip(
                  label: new Text('ios'),
                  avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('I'),),
                ),
                Chip(
                  label: new Text('python'),
                  avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('P'),),
                ),
                Chip(
                  label: new Text('flutter'),
                  avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('F'),),
                ),
                Chip(
                  label: new Text('javascript'),
                  avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('J'),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}