import 'dart:convert';

import 'package:hiveflutter/hive_repo.dart';
import 'package:hiveflutter/model.dart';

class APIRepo {
  final hiveRepo = HiveRepo();

  storeMenuItemsToHive(menuItems) {
    menuItems["Modules"].forEach((menu) {
      var menuItem = ModuleItem.fromJson(menu);
      print("Menuuu${menuItem.moduleCategory}");
      hiveRepo.addMenu(ModuleItem.fromJson(menu));
    });
  }
}
