import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class DataInfo with ChangeNotifier{

  int _count=0;

  int get count => _count;


  /// 加操作
  void addCount(){
    _count++;
    notifyListeners();
  }

  /// 减操作
 void  subCount(){
    _count--;
    notifyListeners();
  }



}