import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/HomeScreen.dart';
import 'package:flutter_demo/bottom/MineScreen.dart';
import 'package:flutter_demo/bottom/RankListScreen.dart';
import 'package:flutter_demo/bottom/statefuluse.dart';
import 'package:flutter_demo/containerdemo.dart';
import 'package:flutter_demo/rudiment.dart';
import 'package:flutter_demo/bottom/HotShowScreen.dart';
import 'package:flutter_demo/screens/ImageScreen.dart';
import 'package:flutter_demo/screens/InputScreen.dart';
import 'package:flutter_demo/screens/LayoutScreen.dart';
import 'package:flutter_demo/screens/SelectScreen.dart';
import 'package:flutter_demo/screens/TextScreen.dart';
import 'package:flutter_demo/screens/containerwidget/ContainersScreen.dart';
import 'package:flutter_demo/screens/layoutwidget/FlexExpandScreen.dart';
import 'package:flutter_demo/screens/layoutwidget/FlowScreen.dart';
import 'package:flutter_demo/screens/layoutwidget/IndexStackScreen.dart';
import 'package:flutter_demo/screens/layoutwidget/RowAndColumnScreen.dart';
import 'package:flutter_demo/screens/layoutwidget/StackScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // 这里可以定义静态路由，不能传递参数
        '/rudiment': (BuildContext context) => new RudimentScreen(),  // 基本页面
        '/constainer':(BuildContext context)=>new ContainerScreen(),  // Container的使用
        '/stateful':(BuildContext context)=>new StatefulUseScreen(),  // 有状态的组件的使用
        '/textuse':(BuildContext context)=>new TextScreen(),  // Text的使用
        '/imageuse':(BuildContext context)=>new ImageScreen(),  // Image的使用
        '/selectuse':(BuildContext context)=>new SelectScreen(),  // 选择框的使用
        '/inputuse':(BuildContext context)=>new InputScreen(),  // 输入的使用
        '/layoutputuse':(BuildContext context)=>new LayoutScreen(),  // Layout Widget的使用
        '/rowcolumnuse':(BuildContext context)=>new RowAndColumnScreen(),  // Row Column的使用
        '/flexuse':(BuildContext context)=>new FlexExpandScreen(),  // 弹性布局的使用
        '/flowuse':(BuildContext context)=>new FlowScreen(),  // 流式布局的使用
        '/stackuse':(BuildContext context)=>new StackScreen(),  // 层叠布局的使用
        '/indexstackuse':(BuildContext context)=>new IndexStackScreen(),  // IndexStack布局的使用
        '/containersuse':(BuildContext context)=>new ContainersScreen(),  // 容器类Widget的使用
      },
      home: MainTab(),
    );
  }
}


/// BottomNavigationBarItem
class MainTab extends StatefulWidget {
  MainTab({Key key}) : super(key: key);

  @override
  MainTabState createState() => MainTabState();
}

class MainTabState extends State<MainTab> {

  int _selectIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  var tabImages;
  var tabTitle = ['首页', '热映', '排行', '我的'];
  var _pageList; // 存放三个页面


   //// 根据选择的页面获取对应的icon
  Image getTabIcon(int currentIndex){
    if(currentIndex==_selectIndex){
      return tabImages[currentIndex][1];
    }
    return tabImages[currentIndex][0];
  }

  /// 获取bottom的颜色和文字
  Text getTabTitle(int currentIndex){
    if(currentIndex==_selectIndex){
      return new Text(tabTitle[currentIndex],style: new TextStyle(fontSize: 14.0,color: const Color(0xff00BD30)),);
    }else{
      return new Text(tabTitle[currentIndex],style: new TextStyle(fontSize: 14.0,color: const Color(0xff8C8C8C)),);
    }
  }
  
  /// 根据Image路径，获取图片
  Image getTabImage(path){
   return new Image.asset(path,width: 24.0,height: 24.0,) ;
  }

  /// 初始化数据
  void initData(){
    // bottom icons
    tabImages=[
      [getTabImage('images/tab_home_normal.png'),getTabImage('images/tab_home_pressed.png')],
      [getTabImage('images/tab_hotshow_off.png'),getTabImage('images/tab_hotshow.png')],
      [getTabImage('images/tab_ranklist_normal.png'),getTabImage('images/tab_ranklist_check.png')],
      [getTabImage('images/tab_mine_normal.png'),getTabImage('images/tab_mine_pressed.png')],
    ];

    /// 四个页面
    _pageList=[
      new HomeScreen(),
      new HotShowScreen(),
      new RankListScreen(),
      new MineScreen()
    ];
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    initData();
    return new Scaffold(

      body: _pageList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: getTabIcon(0),
            title: getTabTitle(0),
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(1), title: getTabTitle(1)),
          BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
          BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
        ],
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
    //    fixedColor: Colors.deepPurple,
      ),
    );
  }
}
