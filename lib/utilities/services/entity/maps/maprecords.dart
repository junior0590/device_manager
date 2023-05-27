import 'package:json_annotation/json_annotation.dart';

part 'maprecords.g.dart';

@JsonSerializable()
class MapRecords {

  @JsonKey(name: "data")
  List<MapData>? data;

  MapRecords({this.data });

  factory MapRecords.fromJson(Map<String, dynamic> json) => _$MapRecordsFromJson(json);
  Map<String, dynamic> toJson() => _$MapRecordsToJson(this);

}

@JsonSerializable()
class MapData {

  @JsonKey(name: "latitude")
  String? latitude;

  @JsonKey(name: "longitude")
  String? longitude;

  @JsonKey(name: "full_address")
  String? full_address;

  @JsonKey(name: "full_name")
  String? full_name;

  @JsonKey(name: "street")
  String? street;

  @JsonKey(name: "city")
  String? city;

  @JsonKey(name: "state")
  String? state;

  @JsonKey(name: "zipcode")
  String? zipcode;

  @JsonKey(name: "country")
  String? country;

  MapData({this.latitude, this.longitude, this.full_address, this.full_name, this.street, this.city, this.state, this.zipcode, this.country });

  factory MapData.fromJson(Map<String, dynamic> json) => _$MapDataFromJson(json);
  Map<String, dynamic> toJson() => _$MapDataToJson(this);

}
