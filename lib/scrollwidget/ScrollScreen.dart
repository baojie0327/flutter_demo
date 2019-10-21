import 'package:flutter/material.dart';

class ScrollScreen extends StatefulWidget {
  @override
  ScrollState createState() => ScrollState();
}

class ScrollState extends State<ScrollScreen> {
  // 数据源
  List<String> titles = <String>['SingleChildScrollView','GirdView','CustomScrollView'];
  List<String> subTitles = <String>['single','gridview','customscrollview'];
  List<Icon> icons = <Icon>[new Icon(Icons.screen_rotation),
  new Icon(Icons.grid_on),
  new Icon(Icons.center_focus_weak)];

  Widget buildListTitle(BuildContext context, String titleItem,
      String subTitleItem, Icon iconItem, int index) {
    return new ListTile(
      leading: iconItem,
      title: new Text(
        titleItem,
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text(
        titleItem,
        style: TextStyle(fontSize: 14.0),
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.green,
      ),
      onTap: () {
        switch (index) {
          case 0:
            Navigator.of(context).pushNamed('/singlechildscrolluse');
            break;
          case 1:
            Navigator.of(context).pushNamed('/gridviewuse');
            break;
          case 2:
            Navigator.of(context).pushNamed('/customscrollviewuse');
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('可滚动组件'),
      ),
      body: new Container(
        child: new ListView.builder(
            padding: EdgeInsets.all(6.0),
            itemCount: titles.length,
            itemBuilder: (BuildContext context, int index) {
              return new Column(
                children: <Widget>[
                  buildListTitle(context, titles[index], subTitles[index],
                      icons[index], index),
                  new Divider(
                    height: 0.5,
                    color: Colors.grey[500],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
