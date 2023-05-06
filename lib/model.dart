import 'package:hive_flutter/adapters.dart';

part 'model.g.dart';

@HiveType(typeId: 1)
class Menu {
  @HiveField(0)
  String menuID;

  @HiveField(1)
  String parentMenu;

  @HiveField(2)
  String? menuName;

  @HiveField(3)
  String? menuUrl;

  Menu(
      {required this.menuID,
      required this.parentMenu,
      this.menuName,
      this.menuUrl});

  Menu.fromJson(Map<String, dynamic> json)
      : parentMenu = json["ParentModule"],
        menuUrl = json["ModuleURL"],
        menuID = json["ModuleID"],
        menuName = json["ModuleName"];
}
