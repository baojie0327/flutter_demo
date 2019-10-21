import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: getNetworkData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // 请求已经结束
            if(snapshot.connectionState==ConnectionState.done){
              if(snapshot.hasError){
                // 请求失败，显示错误
                return Text('Error:${snapshot.error}');
              }else{
                // 请求成功，显示数据
                return Text('Contents: ${snapshot.data}');
              }
            }else{
              // 请求未结束，显示Loading
              return CircularProgressIndicator();
            }
          },

        ),
      ),
    );
  }

  Future<String> getNetworkData() async{
    return Future.delayed(Duration(seconds: 2),()=>'从网络获取的数据');

  }

}