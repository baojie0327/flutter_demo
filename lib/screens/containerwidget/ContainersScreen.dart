import 'package:flutter/material.dart';

class ContainersScreen extends StatefulWidget {
  @override
  ContainersState createState() => ContainersState();
}

class ContainersState extends State<ContainersScreen> {
  // 数据源
  var titleItems = <String>[
    'Padding',
  ];
  var subTitles = <String>[
    'padding',
  ];
  var iconItems = <Icon>[
    new Icon(Icons.dialpad),
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
      style: TextStyle(fontSize: 14.0),),
      trailing: Icon(Icons.arrow_right,color: Colors.green,),
      onTap: (){
        switch(index){

        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('容器类Widget的使用'),
      ),
      body: Container(
        child: ListView.builder(
          padding: const EdgeInsets.all(6.0),
            itemCount: titleItems.length,
            itemBuilder: (context,index){
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
            }
        ),
      ),
    );
  }
}
