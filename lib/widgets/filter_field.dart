import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:project/utilities/services/entity/records/records.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:provider/provider.dart';

import '../utilities/helpers/helpers.dart';
import '../utilities/providers/providers.dart';

const dialogButtonLetterStyle = TextStyle(
  fontFamily: globaldata.font,
  color: const Color(0xFF10FB06),
  fontWeight: FontWeight.bold,
  fontSize: 12,
);

class FilterField extends StatefulWidget {
  final double? screenWidth;

  const FilterField({Key? key, this.screenWidth}) : super(key: key);

  @override
  FilterFieldState createState() => FilterFieldState();
}

class FilterFieldState extends State<FilterField> {
  // Widget? criteriaInput = Text('');

  @override
  Widget build(BuildContext context) {
    final filterFieldData = Provider.of<SingleFilterData?>(context);
    final filterFieldDataActions = Provider.of<SingleFilterData?>(context, listen: false);
    final fieldId = Provider.of<SingleFilterData?>(context)?.field;
    final fieldOperator = Provider.of<SingleFilterData?>(context)?.operator;
    final fieldType = Provider.of<SingleFilterData?>(context)?.type;
    final fieldFilterType = Provider.of<SingleFilterData?>(context)?.filter_field_type;
    final criteria = Provider.of<SingleFilterData?>(context)?.criteriaValue;
    // final uses_criteria = Provider.of<SingleFilterData?>(context)?.uses_criteria;

    return widget.screenWidth! < 450
        ? ExpansionTile(
            controlAffinity: ListTileControlAffinity.leading,
            iconColor: greenColor,
            textColor: greenColor,
            maintainState: true,
            initiallyExpanded: criteria!.isNotEmpty ? true : false,
            leading: Icon(
              filterFieldData!.check! ? Icons.check_box : Icons.check_box_outline_blank,
              // color: filterFieldData.check! ? greenColor : Colors.white,
            ),
            onExpansionChanged: (value) {
              filterFieldDataActions!.updateFilterData(fieldId!, "check", value);
              // This updates the state of parent widget

            },
            title: Text(
              filterFieldData.label!,
            ),
            children: [
              Container(
                height: 26.0,
                margin: const EdgeInsets.only(left: 30, right: 30),
                padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(60),
                  ),
                  border: Border.all(
                    color: const Color(0xFFEFEFEF),
                    width: 1,
                  ),
                  color: const Color(0xFF282828),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: filterFieldData.operator,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: const Color(0xFFEFEFEF),
                    ),
                    iconSize: 20,
                    elevation: 16,
                    isExpanded: true,
                    style: const TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 0.6),
                      fontSize: 12,
                    ),
                    hint: filterFieldData.filteringOperators!.length != 0
                        ? Text(
                            'Select',
                            style: TextStyle(
                              color: const Color(0xFFEFEFEF),
                              fontFamily: globaldata.font,
                              fontSize: 8,
                            ),
                          )
                        : Text(
                            'No options',
                            style: TextStyle(
                              color: const Color(0xFFEFEFEF),
                              fontFamily: globaldata.font,
                              fontSize: 12,
                            ),
                          ),
                    underline: Container(
                      height: 2,
                      color: const Color(0xFFEFEFEF),
                    ),
                    dropdownColor: const Color(0xFF282828),
                    onChanged: (String? value) {
                      filterFieldDataActions!.updateFilterData(
                        fieldId!,
                        "operator",
                        value,
                      );
                    },
                    items: filterFieldData.filteringOperators!.map<DropdownMenuItem<String>>((String? value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value!,
                          style: TextStyle(
                            fontFamily: globaldata.font,
                            fontSize: 12,
                            color: const Color(0xFFEFEFEF),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: InputField(
                  operator: fieldOperator,
                  type: fieldType,
                  fieldFilterType: fieldFilterType,
                  criteriaValue: criteria,
                ),
              ),
              const SizedBox(height: 5),
            ],
            childrenPadding: EdgeInsets.zero,
          )
        : Row(
            children: [
              Checkbox(
                value: filterFieldData!.check,
                onChanged: filterFieldData.filteringOperators!.length != 0
                    ? (bool? value) {
                        filterFieldDataActions!.updateFilterData(fieldId!, "check", value);
                      }
                    : null,
              ),
              Expanded(
                child: Text(
                  filterFieldData.label!,
                ),
              ),
              Expanded(
                child: Container(
                  height: 25.0,
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(60),
                    ),
                    border: Border.all(
                      color: const Color(0xFFEFEFEF),
                      width: 1,
                    ),
                    color: const Color(0xFF282828),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: filterFieldData.operator,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      iconSize: 20,
                      elevation: 16,
                      isExpanded: true,
                      style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
                      hint: filterFieldData.filteringOperators!.length != 0
                          ? Text(
                              'Select condition',
                              style: TextStyle(
                                color: const Color(0xFFEFEFEF),
                                fontFamily: globaldata.font,
                                fontSize: 12,
                              ),
                            )
                          : Text(
                              'No options',
                              style: TextStyle(
                                color: const Color(0xFFEFEFEF),
                                fontFamily: globaldata.font,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      underline: Container(
                        height: 2,
                        color: const Color(0xFFEFEFEF),
                      ),
                      dropdownColor: const Color.fromRGBO(84, 84, 84, 1),
                      onChanged: (String? value) {
                        filterFieldDataActions!.updateFilterData(fieldId!, "operator", value);
                      },
                      items: filterFieldData.filteringOperators!.map<DropdownMenuItem<String>>((String? value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value!,
                            style: TextStyle(
                              fontFamily: globaldata.font,
                              fontSize: 12,
                              color: const Color(0xFFEFEFEF),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: InputField(
                  operator: fieldOperator,
                  type: fieldType,
                  fieldFilterType: fieldFilterType,
                ),
              ),
            ],
          );
  }
}

class InputField extends StatefulWidget {
  const InputField({Key? key, this.operator, this.type, this.fieldFilterType, this.criteriaValue}) : super(key: key);

  final String? operator;
  final String? type;
  final String? fieldFilterType;
  final String? criteriaValue;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  late final filterField = Provider.of<SingleFilterData?>(context, listen: false);
  String valueListValue = '';

  Widget buildCriteriaWidget(BuildContext context) {

    Widget? input = Text('Wilson');
    final format = DateFormat('yyyy-MM-dd');

    dateTimeRangePicker(String fieldId) async {
      DateTimeRange? picked = await showDateRangePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 1),
        initialDateRange: DateTimeRange(
          end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 13),
          start: DateTime.now(),
        ),
      );

      if (picked == null) {
        return;
      }

      final start = picked.start;
      final end = picked.end;

      final formatStart = format.format(DateTime.parse(start.toString()));
      final formatEnd = format.format(DateTime.parse(end.toString()));

      final String result = '$formatStart:$formatEnd';

      Future.delayed(Duration.zero, () async {
        filterField?.updateFilterData(fieldId, "criteriaValue", result);
      });
    }

    if (widget.operator == 'Select condition') {
      //TODO: FIX THIS
      Future.delayed(Duration.zero, () async {
        filterField?.updateFilterData(filterField!.field!, "criteriaValue", '');
      });

      input = const Text('');
    }

    if (widget.operator == 'is empty' || widget.operator == 'is not empty') {

      Future.delayed(Duration(seconds: 1), () async {
        filterField?.updateFilterData(
          filterField!.field!,
          "criteriaValue",
          widget.operator,
        );
      });

      input = const Text('');
    }

    if (widget.operator == 'today' ||
        widget.operator == 'yesterday' ||
        widget.operator == 'this week' ||
        widget.operator == 'this month' ||
        widget.operator == 'this year' ||
        widget.operator == 'last week' ||
        widget.operator == 'last month') {
      Future.delayed(Duration.zero, () async {
        filterField?.updateFilterData(filterField!.field!, "criteriaValue", widget.operator);
      });

      input = const Text('');
    }

    if (widget.operator == 'on' || widget.operator == 'before' || widget.operator == 'after') {
      input = Container(
        height: 25,
        child: DateTimeField(
          onChanged: (date) {
            Future.delayed(Duration.zero, () async {
              filterField?.updateFilterData(
                filterField!.field!,
                "criteriaValue",
                format.format(
                  DateTime.parse(
                    date.toString(),
                  ),
                ),
              );
            });
          },
          style: TextStyle(
            color: const Color(0xFFEFEFEF),
            fontFamily: globaldata.font,
            fontSize: 12,
          ),
          decoration: InputDecoration(
            hintText: 'Select date',
            hintStyle: TextStyle(
              color: const Color(0xFFEFEFEF),
              fontSize: 12,
              fontFamily: globaldata.font,
            ),
            contentPadding: const EdgeInsets.only(left: 10.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              borderSide: const BorderSide(
                width: 1,
                color: Color(0xFFEFEFEF),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
              borderSide: const BorderSide(
                width: 1,
                color: const Color(0xFF10FB06),
              ),
            ),
            suffixIcon: const Icon(
              Icons.clear,
              size: 16,
              color: const Color(0xFFEFEFEF),
            ),
          ),
          format: format,
          onShowPicker: (context, currentValue) {
            return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100),
            );
          },
        ),
      );
    }

    if (widget.operator == 'is' ||
        widget.operator == 'is not' ||
        widget.operator == 'contains' ||
        widget.operator == 'does not contain' ||
        widget.operator == 'starts with' ||
        widget.operator == 'ends with') {
      if (widget.fieldFilterType == 'picklist' ||
          widget.fieldFilterType == 'lookup' ||
          widget.fieldFilterType == 'state' ||
          widget.fieldFilterType == 'ownerlookup' ||
          widget.fieldFilterType == 'userlookup') {


        for (var value1 in filterField!.valueList!) {

          print({ value1.check });
          print({ value1.actualValue });
          print({ value1.displayValue });
          print({ value1.color });

        }

        input = Container(
          height: 25.0,
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              const Radius.circular(60),
            ),
            border: Border.all(
              color: const Color(0xFFEFEFEF),
              width: 1,
            ),
            color: const Color(0xFF282828),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: valueListValue,
              icon: const Icon(
                Icons.keyboard_arrow_down_sharp,
                color: const Color(0xFFEFEFEF),
              ),
              iconSize: 20,
              elevation: 16,
              isExpanded: true,
              style: const TextStyle(
                color: const Color.fromRGBO(255, 255, 255, 0.6),
              ),
              hint: Text(
                'Select option',
                style: TextStyle(
                  color: const Color(0xFFEFEFEF),
                  fontFamily: globaldata.font,
                  fontSize: 12,
                ),
              ),
              underline: Container(
                color: const Color(0xFFEFEFEF),
                height: 2,
              ),
              dropdownColor: const Color(0xFF282828),
              onChanged: (String? value) {
                Future.delayed(Duration.zero, () async {
                  filterField!.updateFilterData(filterField!.field!, "criteriaValue", value);
                });

                // valueListValue = value;
              },
              items: filterField!.valueList!.map<DropdownMenuItem<String>>((ValueListRecords? value) {
                return DropdownMenuItem<String>(
                  value: value!.displayValue,
                  child: Text(
                    value.displayValue!,
                    style: TextStyle(
                      color: const Color(0xFFEFEFEF),
                      fontFamily: globaldata.font,
                      fontSize: 12,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      } else if (widget.fieldFilterType == 'multiselect') {
        input = ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: globaldata.blackBackground1,
                    child: ChangeNotifierProvider.value(
                      value: filterField!.valueListCopy,
                      child: MultiselectDialog(),
                    ),
                    // child: MultiselectDialog(valueListCopy: filterField!.valueListCopy),
                  );
                });
          },
          child: Text('Select stage', style: TextStyle(color: globaldata.greenLetter1, fontWeight: FontWeight.bold, fontFamily: globaldata.font)),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xFF10FB06),
            ),
          ),
        );
      } else {
        input = Container(
          height: 25,
          child: TextFormField(
            initialValue: filterField!.criteriaValue,
            onChanged: (value) {
              Future.delayed(Duration.zero, () async {
                filterField!.updateFilterData(
                  filterField!.field!,
                  "criteriaValue",
                  value,
                );
              });
            },
            style: TextStyle(
              color: const Color(0xFFEFEFEF),
              fontFamily: globaldata.font,
              fontSize: 12,
            ),
            cursorColor: const Color(0xFF10FB06),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 10.0),
              hintText: 'Criteria',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
              ),
              // focusColor: const Color(0xFF10FB06),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: BorderSide(
                  width: 1,
                  color: const Color(0xFF10FB06),
                ),
              ),
              hintStyle: TextStyle(
                color: const Color(0xFFEFEFEF),
                fontFamily: globaldata.font,
                fontSize: 12,
              ),
              labelStyle: TextStyle(
                fontFamily: globaldata.font,
                fontSize: 12,
              ),
            ),
          ),
        );
      }
    }

    if (widget.operator == 'between') {
      input = TextButton(
        onPressed: () => dateTimeRangePicker(filterField!.field!),
        child: filterField!.criteriaValue! == "" ? const Text('Select dates') : Text(filterField!.criteriaValue!),
      );
    }

    if (widget.operator == 'is selected') {
      Future.delayed(Duration.zero, () async {
        filterField?.updateFilterData(filterField!.field!, "criteriaValue", "1");
      });

      input = const Text('');
    }

    if (widget.operator == 'is not selected') {
      Future.delayed(Duration.zero, () async {
        filterField?.updateFilterData(filterField!.field!, "criteriaValue", "0");
      });

      input = const Text('');
    }

    return input;

  }

  @override
  void initState() {

    if(widget.fieldFilterType == 'picklist' ||
        widget.fieldFilterType == 'lookup' ||
        widget.fieldFilterType == 'state' ||
        widget.fieldFilterType == 'ownerlookup' ||
        widget.fieldFilterType == 'userlookup') {

      if(widget.criteriaValue!.isEmpty) {
        // valueListValue = filterField!.valueList![0].displayValue!;
        valueListValue = '';
      } else {
        valueListValue = widget.criteriaValue!;
      }

    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return buildCriteriaWidget(context);

  }
}

class MultiselectDialog extends StatefulWidget {
  const MultiselectDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<MultiselectDialog> createState() => _MultiselectDialogState();
}

class _MultiselectDialogState extends State<MultiselectDialog> {
  @override
  Widget build(BuildContext context) {
    ValueListCopy? valueListCopy = Provider.of<ValueListCopy?>(context);
    List<ValueCopy>? valueList = Provider.of<ValueListCopy?>(context)?.valueList;

    return Container(
      height: 400,
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 30,
            child: TextFormField(
              initialValue: "",
              onChanged: (value) {
                valueListCopy!.filterValueList(value);
              },
              style: TextStyle(
                color: const Color(0xFFEFEFEF),
                fontFamily: globaldata.font,
                fontSize: 14,
              ),
              cursorColor: const Color(0xFF10FB06),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 10.0),
                hintText: 'Stage',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                // focusColor: const Color(0xFF10FB06),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide(
                    width: 1,
                    color: const Color(0xFF10FB06),
                  ),
                ),
                hintStyle: TextStyle(
                  color: const Color(0xFFEFEFEF),
                  fontFamily: globaldata.font,
                  fontSize: 14,
                ),
                labelStyle: TextStyle(
                  fontFamily: globaldata.font,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: valueList!.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider.value(value: valueList[i], child: MultiSelectValue());
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'CLOSE',
                    style: TextStyle(
                      fontFamily: globaldata.font,
                      color: const Color(0xFF10FB06),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MultiSelectValue extends StatefulWidget {
  const MultiSelectValue({Key? key}) : super(key: key);

  @override
  State<MultiSelectValue> createState() => _MultiSelectValueState();
}

class _MultiSelectValueState extends State<MultiSelectValue> {
  bool? selected;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ValueCopy? valueCopy = Provider.of<ValueCopy?>(context);

    return Container(
      child: Row(
        children: [
          Checkbox(
            value: valueCopy!.check,
            onChanged: (select) {
              valueCopy.updateCheck(select!);
            },
            checkColor: globaldata.greenLetter1,
            activeColor: globaldata.greenColor,
            side: const BorderSide(
              color: Color(0xFFEFEFEF),
              width: 2,
            ),
          ),
          Text(
            valueCopy.displayValue!,
            style: TextStyle(
              color: const Color(0xFFEFEFEF),
              fontFamily: globaldata.font,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
