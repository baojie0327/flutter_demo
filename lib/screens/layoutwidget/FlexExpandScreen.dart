import 'package:flutter/material.dart';

/// 弹性布局

class FlexExpandScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('弹性布局'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}