import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo/functionwidget/DataInfo.dart';

class PageTwoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Consumer<DataInfo>(
          builder: (context,dataInfo,_)=>Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: (){
                    dataInfo.addCount();
                  },
                ),
                Chip(
                  label: Text(
                    dataInfo.count.toString(),
                    style: TextStyle(fontSize: 30.0),
                  ),
                  padding: EdgeInsets.all(12.0),
                ),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: (){
                    dataInfo.subCount();
                  },
                ),
              ],
            ),

          ),
      ),
    );
  }

}

class MyBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}