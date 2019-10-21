import 'package:flutter/material.dart';
import 'package:flutter_demo/functionwidget/DataInfo.dart';
import 'package:flutter_demo/functionwidget/PageTwoScreen.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Provider.of(context) 获取 DataInfo
//    return new Scaffold(
//      appBar: AppBar(
//        title: Text('Provider'),
//      ),
//      body: MyBody(),
//    );

    // 使用Consumer
    return Consumer<DataInfo>(
      builder: (context, dataInfo, _) => Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: MyBody1(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataInfo = Provider.of<DataInfo>(context);
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                dataInfo.addCount();
              },
            ),
            Chip(
              label: Text(
                dataInfo.count.toString(),
                style: TextStyle(fontSize: 30),
              ),
              padding: EdgeInsets.all(12.0),
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                dataInfo.subCount();
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PageTwoScreen()));
              },
              child: Text('Page2'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBody1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<DataInfo>(
      builder: (context,dataInfo,_)=>Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  dataInfo.addCount();
                },
              ),
              Chip(
                label: Text(
                  dataInfo.count.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                padding: EdgeInsets.all(12.0),
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  dataInfo.subCount();
                },
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PageTwoScreen()));
                },
                child: Text('Page2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
