import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget{
  @override
  GridViewState createState() => GridViewState();


}

class GridViewState extends State<GridViewScreen>{
  
  List<int> indexs=List.generate(100, (index){
    return index;
  });
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GirdView'),
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemCount: indexs.length,
            itemBuilder: (context,index){
              // 当数据加载完毕时，追加数据
              if(index==indexs.length-1 && indexs.length<200){
                _addIndex();
              }

              return Text(
                '$index',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20
                ),
              );
            }
        ),
      ),
    );
  }

  void _addIndex(){
    Future.delayed(Duration(milliseconds: 200)).then((e){
      setState(() {
        indexs.add(indexs.length+1);
      });
    });
  }
  
}