import 'package:flutter/material.dart';

import '../services/entity/records/records.dart';

class SingleFilterData with ChangeNotifier {
  bool? check;
  String? operator;
  String? criteriaValue;
  final String? label;
  final String? field;
  final String? filter_field_type;
  final List<String>? filteringOperators;
  final String? type;
  final List<ValueListRecords>? valueList;
  ValueListCopy? valueListCopy;
  bool? uses_criteria;

  SingleFilterData({
    this.check,
    this.operator,
    this.field,
    this.filter_field_type,
    this.label,
    this.criteriaValue,
    this.filteringOperators,
    this.type,
    this.valueList,
    this.valueListCopy,
    this.uses_criteria
  });

  updateFilterData(String fieldId, String property, value,
      [String? operatorType, String? action]) {
    if (property == "check") {
      check = value;
    } else if (property == "operator") {
      if(operator != value) {
        operator = value;
        notifyListeners();
      }
    } else if (property == "criteriaValue") {
      if(criteriaValue != value) {
        criteriaValue = value;
        notifyListeners();
      }
    }
  }

  SingleFilterData clone() => SingleFilterData(
      check: check,
      operator: operator,
      filter_field_type: filter_field_type,
      criteriaValue: criteriaValue,
      label: label,
      field: field,
      filteringOperators: filteringOperators,
      type: type,
      valueList: valueList,
      valueListCopy: valueListCopy);
}

class ValueListCopy with ChangeNotifier {
  List<ValueCopy>? _valueList;
  List<ValueCopy>? _valueListFilter;
  List<String>? _multiselectCriteriaValues;

  ValueListCopy()
      : _valueList = [],
        _multiselectCriteriaValues = [],
        _valueListFilter = [];

  List<ValueCopy>? get valueList {
    return _valueList;
  }

  String get multiselectCriteriaValues {
    getAllSelectedValues();

    if (_multiselectCriteriaValues!.length > 0) {
      String multiselectValues = _multiselectCriteriaValues!.join(',');
      return multiselectValues;
    } else {
      return '';
    }
  }

  void getAllSelectedValues() {
    _multiselectCriteriaValues = [];
    _valueList!.forEach((value) {
      if (value.check == true) {
        _multiselectCriteriaValues!.add(value.displayValue!);
      }
    });
  }

  void fillValueList(List<ValueListRecords>? valueList) {
    valueList!.forEach((value) {
      ValueListRecords newValue = value.clone();

      _valueList!.add(
        ValueCopy(
          actualValue: newValue.actualValue,
          displayValue: newValue.displayValue,
          isCheck: newValue.check,
        ),
      );
      _valueListFilter!.add(
        ValueCopy(
          actualValue: newValue.actualValue,
          displayValue: newValue.displayValue,
          isCheck: newValue.check,
        ),
      );
    });
  }

  void filterValueList(String value) {
    if (value.length > 0) {
      _valueList = [];
      _valueList = _valueListFilter!
          .where((item) => item.displayValue!
              .toLowerCase()
              .contains(value.toString().toLowerCase()))
          .toList();
      notifyListeners();
    } else {
      _valueList = _valueListFilter!.toList();
      notifyListeners();
    }
  }
}

class ValueCopy extends ValueListRecords with ChangeNotifier {
  ValueCopy({
    displayValue,
    actualValue,
    isCheck,
  }) : super(
          displayValue: displayValue,
          actualValue: actualValue,
          check: isCheck,
        );

  void updateCheck(bool isCheck) {
    check = isCheck;
    notifyListeners();
  }
}
