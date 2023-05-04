import 'package:hive/hive.dart';

part 'sort_action.g.dart';

@HiveType(typeId: 2)
enum SortAction {
  @HiveField(0)
  ascending,

  @HiveField(1)
  descending,

  @HiveField(2)
  none,
}