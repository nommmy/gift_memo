// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../anniversary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnniversaryImpl _$$AnniversaryImplFromJson(Map<String, dynamic> json) =>
    _$AnniversaryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      isGiftReminderEnabled: json['is_gift_reminder_enabled'] as bool?,
      isAnniversartReminderEnabled:
          json['is_anniversary_reminder_enabled'] as bool?,
      userId: json['user_id'] as String?,
      isAnnually: json['is_annually'] as bool?,
    );

Map<String, dynamic> _$$AnniversaryImplToJson(_$AnniversaryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['date'] = instance.date.toIso8601String();
  writeNotNull('is_gift_reminder_enabled', instance.isGiftReminderEnabled);
  writeNotNull(
      'is_anniversary_reminder_enabled', instance.isAnniversartReminderEnabled);
  writeNotNull('user_id', instance.userId);
  writeNotNull('is_annually', instance.isAnnually);
  return val;
}
