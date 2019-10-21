import 'package:flutter/material.dart';

class FunctionScreen extends StatefulWidget {
  @override
  FunctionState createState() => FunctionState();
}

class FunctionState extends State<FunctionScreen> {
  // 数据源
  List<String> titleItems = <String>[
    '导航返回拦截',
    '数据共享',
    '跨组件状态共享',
    'FutureBuilder',
    'StreamBuilder',
    'Dialog',
  ];
  List<String> subTitleItems = <String>[
    'willpopscope',
    'InheritedWidget',
    'Provider',
    'FutureBuilder',
    'StreamBuilder',
    'Dialog',
  ];
  List<Icon> iconItems = <Icon>[
    new Icon(Icons.wifi_lock),
    new Icon(Icons.share),
    new Icon(Icons.report_problem),
    new Icon(Icons.fullscreen_exit),
    new Icon(Icons.view_stream),
    new Icon(Icons.dehaze)
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
            Navigator.of(context).pushNamed('/willpopscopeuse');
            break;
          case 1:
            Navigator.of(context).pushNamed('/inherited');
            break;
          case 2:
            Navigator.of(context).pushNamed('/provider');
            break;
          case 3:
            Navigator.of(context).pushNamed('/FutureBuilder');
            break;
          case 4:
            Navigator.of(context).pushNamed('/StreamBuilder');
            break;
          case 5:
            Navigator.of(context).pushNamed('/Dialog');
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('功能性组件'),
      ),
      body: new Container(
        child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: titleItems.length,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                child: new Column(
                  children: <Widget>[
                    buildListTitle(context, titleItems[index],
                        subTitleItems[index], iconItems[index], index),
                    new Divider(
                      height: 0.5,
                      color: Colors.grey[500],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
