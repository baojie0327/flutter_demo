import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('对话框'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('对话框1'),
              onPressed: () async {
                // 弹出对话框并等待其关闭
                bool delete = await showDeleteDialog(context);
                if (delete == null) {
                  print("取消删除");
                } else {
                  print("已确认删除");
                }
              },
            ),
            RaisedButton(
              child: Text('对话框2'),
              onPressed: () {
                changeLanguage(context);
              },
            ),
            RaisedButton(
              child: Text('对话框3'),
              onPressed: () {
                showListDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  /// 对话框1
  Future<bool> showDeleteDialog(BuildContext context) {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text('您确认要删除当前文件吗？'),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('删除'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }

  /// SimpleDialog
  Future<void> changeLanguage(BuildContext context) async {
    int i = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('请选择语言'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text('中文简体'),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text('美国英语'),
                ),
              ),
            ],
          );
        });
    if (i != null) {
      print('选择了：${i == 1 ? '中文简体' : '美国英语'}');
    }
  }

  /// Dialog
  Future<void> showListDialog(BuildContext context) async {
    int index = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        var child = Column(
          children: <Widget>[
            ListTile(title: Text('请选择：')),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('$index'),
                    onTap: () => {
                    Navigator.of(context).pop(index),
                  },
                  );
                },
              ),
            ),
          ],
        );
        return Dialog(child: child);
      },
    );
    if(index!=null){
      print('点击了：$index');
    }
  }



}
