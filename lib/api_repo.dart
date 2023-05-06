import 'dart:convert';

import 'package:hiveflutter/hive_repo.dart';
import 'package:hiveflutter/model.dart';

class APIRepo {
  final hiveRepo = HiveRepo();

  storeMenuItemsToHive(menuItems) {
    menuItems["Modules"].forEach((menu) {
      hiveRepo.addMenu(Menu.fromJson(menu));
    });
  }
}
