// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      verified: json['verified'] as bool?,
      sentCount: json['sentCount'] as int?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'verified': instance.verified,
      'sentCount': instance.sentCount,
    };
