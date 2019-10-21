import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  @override
  TabBarState createState() => TabBarState();
}

class TabBarState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 创建Controller
    _tabController = TabController(
      initialIndex: 0,
      vsync: this,
      length: 3,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.yellow[500],
            labelColor: Colors.yellow[500],
            unselectedLabelColor: Colors.white,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              e,
              textScaleFactor: 5,
            ),
          );
        }).toList(),
      ),
    );
  }
}
