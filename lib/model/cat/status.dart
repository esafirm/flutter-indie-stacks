import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status {
  Status({this.verified, this.sentCount});

  factory Status.fromJson(Map<String, dynamic> json) {
    return _$StatusFromJson(json);
  }

  bool? verified;
  int? sentCount;

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
