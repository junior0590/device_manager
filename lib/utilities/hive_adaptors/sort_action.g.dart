// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_action.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SortActionAdapter extends TypeAdapter<SortAction> {
  @override
  final int typeId = 2;

  @override
  SortAction read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SortAction.ascending;
      case 1:
        return SortAction.descending;
      case 2:
        return SortAction.none;
      default:
        return SortAction.ascending;
    }
  }

  @override
  void write(BinaryWriter writer, SortAction obj) {
    switch (obj) {
      case SortAction.ascending:
        writer.writeByte(0);
        break;
      case SortAction.descending:
        writer.writeByte(1);
        break;
      case SortAction.none:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SortActionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
