 import 'package:flutter/material.dart';

class ProvidePage extends ChangeNotifier{
  int selectedIndex=-1;
  setIndex(int index){
    selectedIndex=index;
    notifyListeners();
  }
  int getIndex()=>selectedIndex;
}