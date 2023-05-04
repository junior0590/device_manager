import 'package:json_annotation/json_annotation.dart';

part 'module_fields.g.dart';

@JsonSerializable()
class ModuleFields {

  List<FieldsLookup>? data;

  int? status;

  ModuleFields({ this.data, this.status });

  factory ModuleFields.fromJson(Map<String, dynamic> json) => _$ModuleFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$ModuleFieldsToJson(this);

}

@JsonSerializable()
class FieldsLookup {

  String? owner_id;
  String? full_name;
  String? email;
  String? mobile_phone;
  String? city;
  String? street;
  String? zipcode;
  String? state;
  int? rec_id;

  FieldsLookup({this.owner_id, this.full_name, this.email, this.mobile_phone, this.city, this.street, this.zipcode, this.state, this.rec_id });

  factory FieldsLookup.fromJson(Map<String, dynamic> json) => _$FieldsLookupFromJson(json);
  Map<String, dynamic> toJson() => _$FieldsLookupToJson(this);

}


class ModuleFieldsValueList {

  List<FieldsLookupValueList>? dataValueList;

  int? status;

}

class FieldsLookupValueList {

  String? full_name;
  String? email;
  String? mobile_phone;
  String? city;
  String? street;
  String? zipcode;
  String? state;
  String? rec_id;

}





