// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipientImpl _$$RecipientImplFromJson(Map<String, dynamic> json) =>
    _$RecipientImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      relationship: json['relationship'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$RecipientImplToJson(_$RecipientImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['icon'] = instance.icon;
  writeNotNull('relationship', instance.relationship);
  writeNotNull('user_id', instance.userId);
  return val;
}
