import 'package:clockapp/enums.dart';
import 'package:flutter/cupertino.dart';

class MenuInfo extends ChangeNotifier {
  MenuType menuType;
  String title;
  String path;

  MenuInfo(this.menuType, {this.title, this.path});
  updatedMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.path = menuInfo.path;
    notifyListeners();
  }
}
