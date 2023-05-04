import 'package:json_annotation/json_annotation.dart';
import './proposal_tool_signature.dart';

part 'proposal_tool_save.g.dart';

@JsonSerializable()
class ProposalToolSave {

  List<ProposalToolSignature>? data;

  ProposalToolSave({ this.data });

  factory ProposalToolSave.fromJson(Map<String, dynamic> json) => _$ProposalToolSaveFromJson(json);
  Map<String, dynamic> toJson() => _$ProposalToolSaveToJson(this);

}

