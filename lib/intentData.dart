import 'package:flutter/material.dart';

class IntentScreen extends StatelessWidget {
  final String intentData;

  const IntentScreen(this.intentData);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('$intentData'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            /* Text，展示传递过来的值*/
            new Text('$intentData'),
            new RaisedButton(
              onPressed: (){Navigator.pop(context,'返回的数据');},
              child: Text('点此返回数据'),
              color: Colors.red[500],
            )
          ],
        ),
      ),
    );
  }
}
