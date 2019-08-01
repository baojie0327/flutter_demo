import 'package:flutter/material.dart';
import 'package:flutter_demo/intentData.dart';
import 'package:flutter_demo/rudiment.dart';

///首页

class HomeScreen extends StatefulWidget {

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  // 数据源
  List<String> titleItems = <String>[
    '入门',
    '跳转传值',
    'Container',
    '有状态的组件',
    'Text，Button的使用',
    '图片的使用',
    '选择框的使用',
    '输入',
    'Layout Widgets',
    'Container Widgets'
  ];
  List<String> subTitleItems = <String>[
    'flutter',
    'ios',
    'android',
    'java',
    'text',
    'image',
    'select',
    'input',
    'layout',
    'container'
  ];
  List<Icon> iconItems = <Icon>[
    new Icon(Icons.add_call),
    new Icon(Icons.share),
    new Icon(Icons.access_alarm),
    new Icon(Icons.add),
    new Icon(Icons.text_fields),
    new Icon(Icons.image),
    new Icon(Icons.select_all),
    new Icon(Icons.input),
    new Icon(Icons.layers),
    new Icon(Icons.import_contacts)
  ];

  Widget buildListTitle(BuildContext context, String titleItem,
      String subTitleItem, Icon iconItem, int index) {
    return new ListTile(
      leading: iconItem,
      title: new Text(
        titleItem,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: new Text(
        subTitleItem,
        style: TextStyle(fontSize: 14),
      ),
      trailing: new Icon(
        Icons.arrow_right,
        color: Colors.green,
      ),
      onTap: () async {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new RudimentScreen()),
            );
            break;
          case 1:
            String result = await Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new IntentScreen('传递过来的值')));
            if (result != null) {
              print(result);
            }
            break;
          case 2:
            Navigator.of(context).pushNamed('/constainer');
            break;
          case 3:
            Navigator.of(context).pushNamed('/stateful');
            break;
          case 4:
            Navigator.of(context).pushNamed('/textuse');
            break;
          case 5:
            Navigator.of(context).pushNamed('/imageuse');
            break;
          case 6:
            Navigator.of(context).pushNamed('/selectuse');
            break;
          case 7:
            Navigator.of(context).pushNamed('/inputuse');
            break;
          case 8:
            Navigator.of(context).pushNamed('/layoutputuse');
            break;
          case 9:
            Navigator.of(context).pushNamed('/containersuse');
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('首页'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_call),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new RudimentScreen()));
            },
          )
        ],
      ),
      body: new Container(
          child: new ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: titleItems.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: new Column(
              children: <Widget>[
                buildListTitle(context, titleItems[index], subTitleItems[index],
                    iconItems[index], index),
                new Divider(
                  height: 0.5,
                  color: Colors.grey[500],
                )
              ],
            ),
          );
        },
      )),
    );
  }
}
