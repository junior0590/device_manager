// import 'package:flutter/material.dart';

// import '../services/entity/records/records.dart';

// class SingleFilterData with ChangeNotifier {
//   bool? check;
//   String? operator;
//   String? criteriaValue;
//   final String? label;
//   final String? field;
//   final List<String>? filteringOperators;
//   final String? type;
//   final List<ValueListRecords>? valueList;

//   SingleFilterData({
//     this.check,
//     this.operator,
//     this.field,
//     this.label,
//     this.criteriaValue,
//     this.filteringOperators,
//     this.type,
//     this.valueList,
//   });

//   updateFilterData(String fieldId, String property, value) {
//     if (property == "check") {
//       check = value;
//     } else if (property == "operator") {
//       operator = value;
//     } else if (property == "criteriaValue") {
//       criteriaValue = value;
//     }

//     notifyListeners();
//   }

//   SingleFilterData clone() => SingleFilterData(
//         check: check,
//         operator: operator,
//         criteriaValue: criteriaValue,
//         label: label,
//         field: field,
//         filteringOperators: filteringOperators,
//         type: type,
//         valueList: valueList,
//       );
// }
