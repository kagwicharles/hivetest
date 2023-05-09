import 'package:hive/hive.dart';
import 'package:hiveflutter/model.dart';

class HiveRepo {
  addMenu(ModuleItem menu) async {
    var box = await Hive.openBox<ModuleItem>('menu');
    box.put(menu.moduleId, menu);
  }

  getMenu(String menuID) async {
    var box = await Hive.openBox('menu');
    return box.get(menuID);
  }

  getMenusByParentID(String parentID) async {
    Box<ModuleItem> box = await Hive.openBox('menu');
    return box.values.where((menu) => menu.parentModule == parentID).toList();
  }

  Future<List<ModuleItem>> getAllMenus() async {
    var box = await Hive.openBox<ModuleItem>('menu');
    return box.values.toList();
  }
}
