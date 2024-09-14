// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../anniversary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnniversaryImpl _$$AnniversaryImplFromJson(Map<String, dynamic> json) =>
    _$AnniversaryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      isGiftReminderEnabled: json['is_gift_reminder_enabled'] as bool? ?? false,
      isAnniversartReminderEnabled:
          json['is_anniversary_reminder_enabled'] as bool? ?? false,
      userId: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AnniversaryImplToJson(_$AnniversaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'is_gift_reminder_enabled': instance.isGiftReminderEnabled,
      'is_anniversary_reminder_enabled': instance.isAnniversartReminderEnabled,
      'user_id': instance.userId,
    };
