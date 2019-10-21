import 'package:flutter/material.dart';
import 'package:flutter_demo/functionwidget/ShareDataWidget.dart';
import 'package:flutter_demo/functionwidget/TestWidget.dart';

class InheritedScreen extends StatefulWidget {
  @override
  InheritedState createState() => InheritedState();
}

class InheritedState extends State<InheritedScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: ShareDataWidget(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TestWidget(),
            ),
            RaisedButton(
              child: Text('Increase'),
              onPressed: () => setState(() => ++count),
            ),
          ],
        ),
      ),
    );
  }
}
