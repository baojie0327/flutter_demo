import 'package:flutter/material.dart';

class FileNetWorkScreen extends StatefulWidget {
  @override
  FileNetWorkState createState() => FileNetWorkState();
}

class FileNetWorkState extends State<FileNetWorkScreen> {
  // 数据源
  var titleItems = <String>[
    'File',
  ];
  var subTitles = <String>[
    'file',
  ];
  var iconItems = <Icon>[
    new Icon(Icons.file_download),
  ];

  Widget buildListTitle(BuildContext context, String titleItem, String subTitle,
      Icon iconItem, int index) {
    return ListTile(
      leading: iconItem,
      title: Text(
        titleItem,
        style: TextStyle(fontSize: 18.0),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(fontSize: 14.0),
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.green,
      ),
      onTap: () {
        switch (index) {
          case 0:
            Navigator.of(context).pushNamed('/fileoperation');
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
        title: Text("文件操作和网络请求"),
      ),
      body: Container(
        child: ListView.builder(
            padding: const EdgeInsets.all(6.0),
            itemCount: iconItems.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: <Widget>[
                    buildListTitle(context, titleItems[index], subTitles[index],
                        iconItems[index], index),
                    Divider(
                      height: 0.5,
                      color: Colors.grey[500],
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
