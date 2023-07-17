import 'package:flutter/foundation.dart';
import 'package:tk2/data/home.dart';

class HomeProvider with ChangeNotifier {
  Home homeData = Home(name: 'John', hobby: 'Basketball');

  void updateData({String? name, String? hobby}) {
    homeData = homeData.copyWith(name: name, hobby: hobby);
    notifyListeners();
  }
}
