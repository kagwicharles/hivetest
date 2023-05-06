// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MenuAdapter extends TypeAdapter<Menu> {
  @override
  final int typeId = 1;

  @override
  Menu read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Menu(
      menuID: fields[0] as String,
      parentMenu: fields[1] as String,
      menuName: fields[2] as String?,
      menuUrl: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Menu obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.menuID)
      ..writeByte(1)
      ..write(obj.parentMenu)
      ..writeByte(2)
      ..write(obj.menuName)
      ..writeByte(3)
      ..write(obj.menuUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MenuAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
