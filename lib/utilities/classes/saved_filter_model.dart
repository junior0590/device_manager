import '../providers/providers.dart';

class FilterModel {
  int id;
  String name;
  List<SingleFilterData> filterData;

  FilterModel({required this.id, required this.name, required this.filterData});
}
