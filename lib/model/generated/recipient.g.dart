// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipientImpl _$$RecipientImplFromJson(Map<String, dynamic> json) =>
    _$RecipientImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      relationship: json['relationship'] as String,
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$RecipientImplToJson(_$RecipientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'relationship': instance.relationship,
      'user_id': instance.userId,
    };
