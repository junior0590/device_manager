import 'package:hive/hive.dart';
import 'package:project/utilities/hive_adaptors/sort_action.dart';

part 'module_sorted.g.dart';

@HiveType(typeId: 1)
class ModuleSorted extends HiveObject {

  ModuleSorted({ required this.name, required this.sortAction, required this.module });

  @HiveField(0)
  String name;

  @HiveField(1)
  SortAction sortAction;

  @HiveField(2)
  String module;

}
