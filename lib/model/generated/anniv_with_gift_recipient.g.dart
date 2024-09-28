// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../anniv_with_gift_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnivWithGiftRecipientImpl _$$AnnivWithGiftRecipientImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnivWithGiftRecipientImpl(
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      isAnnually: json['is_annually'] as bool,
      gifts: (json['t_gift'] as List<dynamic>?)
          ?.map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipients: (json['t_recipient'] as List<dynamic>?)
          ?.map((e) => Recipient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnnivWithGiftRecipientImplToJson(
    _$AnnivWithGiftRecipientImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'date': instance.date.toIso8601String(),
    'is_annually': instance.isAnnually,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('t_gift', instance.gifts);
  writeNotNull('t_recipient', instance.recipients);
  return val;
}
