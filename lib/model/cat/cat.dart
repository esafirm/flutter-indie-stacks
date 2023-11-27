import 'package:habitat/model/cat/status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat.g.dart';

@JsonSerializable()
class CatFact {
  CatFact({
    this.status,
    this.id,
    this.user,
    this.text,
    this.v,
    this.source,
    this.updatedAt,
    this.type,
    this.createdAt,
    this.deleted,
    this.used,
  });

  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);

  Status? status;
  @JsonKey(name: '_id')
  String? id;
  String? user;
  String? text;
  @JsonKey(name: '__v')
  int? v;
  String? source;
  DateTime? updatedAt;
  String? type;
  DateTime? createdAt;
  bool? deleted;
  bool? used;

  Map<String, dynamic> toJson() => _$CatFactToJson(this);
}
