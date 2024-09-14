// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../gift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftImpl _$$GiftImplFromJson(Map<String, dynamic> json) => _$GiftImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      price: (json['price'] as num).toInt(),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$GiftImplToJson(_$GiftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'user_id': instance.userId,
    };
