import 'package:flutter/cupertino.dart';

/// A class that manages a list of <T> and the selected value for PopupMenuButton and DropDownButton
///  * [selectedValue] is the index of the list modelData, it's initializer is always 0
///  * [modelData], is a list of <T> values, it is required to declare at least 1 element in the list
///    order to initializer the selected value or initialValue, generally speaking we often initialize
///    it with a string 'None', since there is no selected value.
///
/// How to declare the variable?
///
/// An example on how to declare it with a data type
///
/// ```dart
/// DropDownModel<String> = sortBy = DropdownModel(
///    selectedValue: 0,
///    modelData: ['Date', 'File Type', 'Name', 'Size'],
///  );
/// ```
///An example on how to declare it with a custom class:
///
/// ```dart
///DropdownModel<MenuItemData> menusItem = DropdownModel(
///  selectedValue: 0,
///  modelData: [
///    MenuItemData(
///      icon: Icons.download,
///      value: 'Download',
///    ),
///    MenuItemData(
///      icon: Icons.share,
///      value: 'Share',
///    ),
///    MenuItemData(
///      icon: Icons.people,
///      value: 'Assignees',
///    ),
///  ],
///);
/// ```

class DropdownModel<T> with ChangeNotifier {
  late dynamic selectedValue = 0;
  late List<T> modelData = [];

  void addData(T data) {
    modelData.add(data);
    notifyListeners();
  }

  DropdownModel({
    selectedValue,
    required this.modelData,
  });
}
