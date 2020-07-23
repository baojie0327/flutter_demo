import 'package:flutter/material.dart';
import 'package:flutter_demo/rudiment.dart';
import 'package:flutter_demo/screens/ImageScreen.dart';
import 'package:flutter_demo/screens/TextScreen.dart';
import 'package:flutter_demo/screens/containerwidget/containerdemo.dart';

import 'bottom/statefuluse.dart';

final List<Map> routeConfig = [
  {
    'name': 'Rudiment',
    'path': '/rudiment',
    'builder': (BuildContext context) => new RudimentScreen(), // 基本页面
  },
  {
    'name': 'Constainer',
    'path': '/constainer',
    'builder': (BuildContext context)=>new ContainerScreen(),  // Container的使用
  },
  {
    'name': 'Stateful',
    'path': '/stateful',
    'builder': (BuildContext context)=>new StatefulUseScreen(),  // 有状态的组件的使用
  },
  {
    'name': 'Stateful',
    'path': '/stateful',
    'builder': (BuildContext context)=>new StatefulUseScreen(),  // 有状态的组件的使用
  },
  {
    'name': 'Textuse',
    'path': '/textuse',
    'builder': (BuildContext context)=>new TextScreen(),  // Text的使用
  },

  {
    'name': 'Imageuse',
    'path': '/imageuse',
    'builder': (BuildContext context)=>new ImageScreen(),  // Image的使用
  },





];

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    Map<String, WidgetBuilder> map = {};
  }
}
