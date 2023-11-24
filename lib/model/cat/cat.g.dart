// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatFact _$CatFactFromJson(Map<String, dynamic> json) => CatFact(
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      user: json['user'] as String?,
      text: json['text'] as String?,
      v: json['__v'] as int?,
      source: json['source'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      type: json['type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      deleted: json['deleted'] as bool?,
      used: json['used'] as bool?,
    );

Map<String, dynamic> _$CatFactToJson(CatFact instance) => <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'user': instance.user,
      'text': instance.text,
      '__v': instance.v,
      'source': instance.source,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'deleted': instance.deleted,
      'used': instance.used,
    };
