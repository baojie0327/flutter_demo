import 'package:flutter/material.dart';
import 'package:flutter_demo/intentData.dart';
import 'package:flutter_demo/rudiment.dart';

///首页

class HomeScreen extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  // 滚动监听
  ScrollController _controller = new ScrollController();
  bool showToTopBtn = false; // 是否显示返回顶部按钮

  @override
  void initState() {
    super.initState();
    //监听滚动事件，打印滚动位置
    _controller.addListener(() {

      print(_controller.offset);

      if (_controller.offset < 100 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 100 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });

  }

  @override
  void dispose() {
    // 为避免内存泄露
    _controller.dispose();
    super.dispose();
  }

  // 数据源
  List<String> titleItems = <String>[
    '入门',
    '跳转传值',
    'Container',
    '有状态的组件',
    'Text，Button的使用',
    '图片的使用',
    '选择框的使用',
    '输入',
    'Layout Widgets',
    'Container Widgets',
    'TabBar',
    '可滚动组件',
    '功能性组件',
    '文件和网络操作'
  ];
  List<String> subTitleItems = <String>[
    'flutter',
    'ios',
    'android',
    'java',
    'text',
    'image',
    'select',
    'input',
    'layout',
    'container',
    'tabbar',
    'scroll',
    'function',
    'filenet'
  ];
  List<Icon> iconItems = <Icon>[
    new Icon(Icons.add_call),
    new Icon(Icons.share),
    new Icon(Icons.access_alarm),
    new Icon(Icons.add),
    new Icon(Icons.text_fields),
    new Icon(Icons.image),
    new Icon(Icons.select_all),
    new Icon(Icons.input),
    new Icon(Icons.layers),
    new Icon(Icons.import_contacts),
    new Icon(Icons.tab),
    new Icon(Icons.grid_on),
    new Icon(Icons.fullscreen),
    new Icon(Icons.network_wifi)
  ];

  Widget buildListTitle(BuildContext context, String titleItem,
      String subTitleItem, Icon iconItem, int index) {
    return new ListTile(
      leading: iconItem,
      title: new Text(
        titleItem,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: new Text(
        subTitleItem,
        style: TextStyle(fontSize: 14),
      ),
      trailing: new Icon(
        Icons.arrow_right,
        color: Colors.green,
      ),
      onTap: () async {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new RudimentScreen()),
            );
            break;
          case 1:
            String result = await Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new IntentScreen('传递过来的值')));
            if (result != null) {
              print(result);
            }
            break;
          case 2:
            Navigator.of(context).pushNamed('/constainer');
            break;
          case 3:
            Navigator.of(context).pushNamed('/stateful');
            break;
          case 4:
            Navigator.of(context).pushNamed('/textuse');
            break;
          case 5:
            Navigator.of(context).pushNamed('/imageuse');
            break;
          case 6:
            Navigator.of(context).pushNamed('/selectuse');
            break;
          case 7:
            Navigator.of(context).pushNamed('/inputuse');
            break;
          case 8:
            Navigator.of(context).pushNamed('/layoutputuse');
            break;
          case 9:
            Navigator.of(context).pushNamed('/containersuse');
            break;
          case 10:
            Navigator.of(context).pushNamed('/tabbaruse');
            break;
          case 11:
            Navigator.of(context).pushNamed('/scrolluse');
            break;
          case 12:
            Navigator.of(context).pushNamed('/functionuse');
            break;
          case 13:
            Navigator.of(context).pushNamed('/FileNetWorkScreen');
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('首页'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_call),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new RudimentScreen()));
            },
          )
        ],
      ),
      body: new Scrollbar(
        child: new ListView.builder(
          padding: const EdgeInsets.all(8.0),
          controller: _controller,
          itemCount: titleItems.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              child: new Column(
                children: <Widget>[
                  buildListTitle(context, titleItems[index],
                      subTitleItems[index], iconItems[index], index),
                  new Divider(
                    height: 0.5,
                    color: Colors.grey[500],
                  )
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                // 返回到顶部时执行的动画
                _controller.animateTo(.0,
                    duration: Duration(milliseconds: 200), curve: Curves.ease);
              },
            ),
    );
  }
}
