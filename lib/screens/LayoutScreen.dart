import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  @override
  LayoutState createState() => LayoutState();
}

class LayoutState extends State<LayoutScreen> {
  // 数据源
  var titleItems = <String>['Row Column', '弹性布局','流式布局','层叠布局','IndexStack'];
  var subTitles = <String>['row', 'flex','flow','stack','indexstack'];
  var iconItems = <Icon>[
    new Icon(Icons.rowing),
    new Icon(Icons.format_align_left),
    new Icon(Icons.wrap_text),
    new Icon(Icons.layers),
    new Icon(Icons.account_balance_wallet)
  ];

  Widget buildListTitle(BuildContext context, String titleItem, String subTitle,
      Icon iconItem, int index) {
    return ListTile(
      leading: iconItem,
      title: Text(
        titleItem,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(fontSize: 14),
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.green,
      ),
      onTap: () {
        switch (index) {
          case 0:
            Navigator.of(context).pushNamed('/rowcolumnuse');
            break;
          case 1:
            Navigator.of(context).pushNamed('/flexuse');
            break;
          case 2:
            Navigator.of(context).pushNamed('/flowuse');
            break;
          case 3:
            Navigator.of(context).pushNamed('/stackuse');
            break;
          case 4:
            Navigator.of(context).pushNamed('/indexstackuse');
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
        title: Text('布局类Widgets'),
      ),
      body: Container(
        child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: titleItems.length,
            itemBuilder: (context, index) {
              return new Container(
                child: Column(
                  children: <Widget>[
                    buildListTitle(context, titleItems[index], subTitles[index],
                        iconItems[index], index),
                    Divider(
                      height: 0.5,
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
