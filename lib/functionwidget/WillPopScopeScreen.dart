import 'package:flutter/material.dart';

/// 导航返回拦截
class WillPopScopeScreen extends StatefulWidget {
  @override
  WillPopScopeState createState() => WillPopScopeState();
}

class WillPopScopeState extends State<WillPopScopeScreen> {

  DateTime _lastPressAt; // 上次点击时间


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new WillPopScope(
        child: Container(
          alignment: Alignment.center,
          child: Text('1秒内连续按两次返回键退出'),
        ),
        onWillPop: () async {
          if (_lastPressAt == null || DateTime.now().difference(_lastPressAt)>Duration(seconds: 1)){
            // 两次点击间隔超过1秒则重新计时
            _lastPressAt=DateTime.now();
            return false;
          }
          return true;
        },
    );
  }
}
