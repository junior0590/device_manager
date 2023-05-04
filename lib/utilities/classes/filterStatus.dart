import 'package:project/utilities/services/entity/records/records.dart';

class StatusMessage {

  bool? applied;
  List<FieldError>? fields;
  String? message;

  StatusMessage({ this.applied, this.fields, this.message });

}

class FieldError {

  Filter? filter;
  List<String>? errorMessage;

  FieldError({ this.filter, this.errorMessage });

}
