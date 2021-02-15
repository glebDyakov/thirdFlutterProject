import 'package:flutter/material.dart';

class Data with ChangeNotifier{
    String _data = 'Toplevel';
    String get getData => _data;
    void changeString(String newString){
        _data = newStringl
        notifyListeners();
    }
}