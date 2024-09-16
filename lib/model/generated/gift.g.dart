// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftImpl _$$GiftImplFromJson(Map<String, dynamic> json) => _$GiftImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      price: (json['price'] as num).toInt(),
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$GiftImplToJson(_$GiftImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['image_url'] = instance.imageUrl;
  val['price'] = instance.price;
  writeNotNull('user_id', instance.userId);
  return val;
}
