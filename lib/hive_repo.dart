import 'package:hive/hive.dart';
import 'package:hiveflutter/model.dart';

class HiveRepo {
  addMenu(Menu menu) async {
    var box = await Hive.openBox('menu');
    box.put(menu.menuID, menu);
  }

  getMenu(String menuID) async {
    var box = await Hive.openBox('menu');
    return box.get(menuID);
  }

  getMenusByParentID(String parentID) async {
    Box<Menu> box = await Hive.openBox('menu');
    return box.values.where((menu) => menu.parentMenu == parentID).toList();
  }

  getAllMenus() async {
    var box = await Hive.openBox('menu');
    return box.values;
  }
}
