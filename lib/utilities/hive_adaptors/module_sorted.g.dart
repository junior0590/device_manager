// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_sorted.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModuleSortedAdapter extends TypeAdapter<ModuleSorted> {
  @override
  final int typeId = 1;

  @override
  ModuleSorted read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModuleSorted(
      name: fields[0] as String,
      sortAction: fields[1] as SortAction,
      module: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ModuleSorted obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.sortAction)
      ..writeByte(2)
      ..write(obj.module);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModuleSortedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
