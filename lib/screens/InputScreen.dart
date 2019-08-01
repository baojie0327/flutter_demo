import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  InputState createState() => new InputState();
}

class InputState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController controller = TextEditingController();
    TextEditingController _nameController = new TextEditingController();
    TextEditingController _pwdController = new TextEditingController();
    GlobalKey _formKey = new GlobalKey<FormState>();

    return new Scaffold(
      appBar: AppBar(
        title: Text('选择框'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(
                labelText: '请输入密码',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.transparent)),
                //输入内容距离上下左右的距离 ，可通过这个属性来控制 TextField的高度
                contentPadding: EdgeInsets.all(13.0),
                // 填充颜色
                fillColor: Colors.white,
                filled: true,
                // 以下属性可用来去除TextField的边框
                // disabledBorder: InputBorder.none,
                // enabledBorder: InputBorder.none,
                // focusedBorder: InputBorder.none
              ),
              //控制正在编辑的文本。通过其可以拿到输入的文本值
              //获取方式 String value=controller.text
              controller: controller,
              //键盘类型
              keyboardType: TextInputType.text,
              //是否是密码
              obscureText: false,
              textInputAction: TextInputAction.next,
              // 输入大小写的显示
              //  textCapitalization: TextCapitalization.words,
              // 输入文本对齐方式
              textAlign: TextAlign.start,
              // 输入文本的样式
              style: TextStyle(fontSize: 13.0, color: Colors.red),
              // 最大行数
              maxLines: 1,
              // 最大长度
              maxLength: 18,
              // 是否禁用textfield:如果为false, textfield将被“禁用”
              enabled: true,
              // 光标颜色
              cursorColor: Colors.green,
              //内容改变的回调
              onChanged: (text) {
                print('change $text');
              },
              //内容提交(按回车)的回调
              onSubmitted: (text) {
                print('change $text');
              },
              //按回车时调用
              onEditingComplete: () {
                print('onEditingCompletet');
              },
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Form(
                key: _formKey, //设置globalKey，用于后面获取FormState
                autovalidate: true, // 开启自动校验
                child: Column(
                  children: <Widget>[
                    TextFormField(
                     // autofocus: true,
                      controller: _nameController,
                      decoration: InputDecoration(
                          labelText: '用户名',
                          // hintText: '用户名或邮箱',
                          icon: Icon(Icons.person)),

                      // 校验用户
                      validator: (v) {
                        return v.trim().length > 0 ? null : '用户名不能为空';
                      },
                    ),
                    TextFormField(
                      controller: _pwdController,
                      decoration: InputDecoration(
                        labelText: '密码',
                        hintText: '您的登陆密码',
                        icon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                      // 检验密码
                      validator: (v) {
                        return v.trim().length > 5 ? null : '密码长度少于6位';
                      },
                    ),
                    // 登陆按键
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                                child: Text('登陆'),
                                color: Theme.of(context).primaryColor,
                                onPressed: () {
                                  if ((_formKey.currentState as FormState)
                                      .validate()) {
                                    print('验证通过，提交数据');
                                  }
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
