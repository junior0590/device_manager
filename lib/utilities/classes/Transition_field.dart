import 'package:equatable/equatable.dart';

class TransitionField extends Equatable {
  String? idfield;
  String? value;
  bool? required;
  int? maxLength;
  int? minLength;
  String? type;
  bool? readOnly;
  bool? hidden;
  int? required_for_design;

  @override
  // TODO: implement props
  List<Object?> get props => [
    idfield,
    value,
    required,
    maxLength,
    minLength,
    type,
    readOnly,
    hidden,
    required_for_design
  ];
}
