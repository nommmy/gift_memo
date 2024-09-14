// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../gift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Gift _$GiftFromJson(Map<String, dynamic> json) {
  return _Gift.fromJson(json);
}

/// @nodoc
mixin _$Gift {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this Gift to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftCopyWith<Gift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCopyWith<$Res> {
  factory $GiftCopyWith(Gift value, $Res Function(Gift) then) =
      _$GiftCopyWithImpl<$Res, Gift>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      int price,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$GiftCopyWithImpl<$Res, $Val extends Gift>
    implements $GiftCopyWith<$Res> {
  _$GiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftImplCopyWith<$Res> implements $GiftCopyWith<$Res> {
  factory _$$GiftImplCopyWith(
          _$GiftImpl value, $Res Function(_$GiftImpl) then) =
      __$$GiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_url') String imageUrl,
      int price,
      @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$GiftImplCopyWithImpl<$Res>
    extends _$GiftCopyWithImpl<$Res, _$GiftImpl>
    implements _$$GiftImplCopyWith<$Res> {
  __$$GiftImplCopyWithImpl(_$GiftImpl _value, $Res Function(_$GiftImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? userId = null,
  }) {
    return _then(_$GiftImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftImpl implements _Gift {
  const _$GiftImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.price,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$GiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final int price;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'Gift(id: $id, name: $name, imageUrl: $imageUrl, price: $price, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, imageUrl, price, userId);

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftImplCopyWith<_$GiftImpl> get copyWith =>
      __$$GiftImplCopyWithImpl<_$GiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftImplToJson(
      this,
    );
  }
}

abstract class _Gift implements Gift {
  const factory _Gift(
      {required final int id,
      required final String name,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final int price,
      @JsonKey(name: 'user_id') required final String userId}) = _$GiftImpl;

  factory _Gift.fromJson(Map<String, dynamic> json) = _$GiftImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  int get price;
  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of Gift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftImplCopyWith<_$GiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
