// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../anniv_with_gift_recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnivWithGiftRecipient _$AnnivWithGiftRecipientFromJson(
    Map<String, dynamic> json) {
  return _AnnivWithGiftRecipient.fromJson(json);
}

/// @nodoc
mixin _$AnnivWithGiftRecipient {
  String get name => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_annually')
  bool get isAnnually => throw _privateConstructorUsedError;
  @JsonKey(name: 't_gift')
  List<Gift>? get gifts => throw _privateConstructorUsedError;
  @JsonKey(name: 't_recipient')
  List<Recipient>? get recipients => throw _privateConstructorUsedError;

  /// Serializes this AnnivWithGiftRecipient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnivWithGiftRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnivWithGiftRecipientCopyWith<AnnivWithGiftRecipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnivWithGiftRecipientCopyWith<$Res> {
  factory $AnnivWithGiftRecipientCopyWith(AnnivWithGiftRecipient value,
          $Res Function(AnnivWithGiftRecipient) then) =
      _$AnnivWithGiftRecipientCopyWithImpl<$Res, AnnivWithGiftRecipient>;
  @useResult
  $Res call(
      {String name,
      DateTime date,
      @JsonKey(name: 'is_annually') bool isAnnually,
      @JsonKey(name: 't_gift') List<Gift>? gifts,
      @JsonKey(name: 't_recipient') List<Recipient>? recipients});
}

/// @nodoc
class _$AnnivWithGiftRecipientCopyWithImpl<$Res,
        $Val extends AnnivWithGiftRecipient>
    implements $AnnivWithGiftRecipientCopyWith<$Res> {
  _$AnnivWithGiftRecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnivWithGiftRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? isAnnually = null,
    Object? gifts = freezed,
    Object? recipients = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAnnually: null == isAnnually
          ? _value.isAnnually
          : isAnnually // ignore: cast_nullable_to_non_nullable
              as bool,
      gifts: freezed == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>?,
      recipients: freezed == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<Recipient>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnivWithGiftRecipientImplCopyWith<$Res>
    implements $AnnivWithGiftRecipientCopyWith<$Res> {
  factory _$$AnnivWithGiftRecipientImplCopyWith(
          _$AnnivWithGiftRecipientImpl value,
          $Res Function(_$AnnivWithGiftRecipientImpl) then) =
      __$$AnnivWithGiftRecipientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime date,
      @JsonKey(name: 'is_annually') bool isAnnually,
      @JsonKey(name: 't_gift') List<Gift>? gifts,
      @JsonKey(name: 't_recipient') List<Recipient>? recipients});
}

/// @nodoc
class __$$AnnivWithGiftRecipientImplCopyWithImpl<$Res>
    extends _$AnnivWithGiftRecipientCopyWithImpl<$Res,
        _$AnnivWithGiftRecipientImpl>
    implements _$$AnnivWithGiftRecipientImplCopyWith<$Res> {
  __$$AnnivWithGiftRecipientImplCopyWithImpl(
      _$AnnivWithGiftRecipientImpl _value,
      $Res Function(_$AnnivWithGiftRecipientImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnivWithGiftRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? isAnnually = null,
    Object? gifts = freezed,
    Object? recipients = freezed,
  }) {
    return _then(_$AnnivWithGiftRecipientImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAnnually: null == isAnnually
          ? _value.isAnnually
          : isAnnually // ignore: cast_nullable_to_non_nullable
              as bool,
      gifts: freezed == gifts
          ? _value._gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>?,
      recipients: freezed == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<Recipient>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$AnnivWithGiftRecipientImpl implements _AnnivWithGiftRecipient {
  const _$AnnivWithGiftRecipientImpl(
      {required this.name,
      required this.date,
      @JsonKey(name: 'is_annually') required this.isAnnually,
      @JsonKey(name: 't_gift') final List<Gift>? gifts,
      @JsonKey(name: 't_recipient') final List<Recipient>? recipients})
      : _gifts = gifts,
        _recipients = recipients;

  factory _$AnnivWithGiftRecipientImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnivWithGiftRecipientImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'is_annually')
  final bool isAnnually;
  final List<Gift>? _gifts;
  @override
  @JsonKey(name: 't_gift')
  List<Gift>? get gifts {
    final value = _gifts;
    if (value == null) return null;
    if (_gifts is EqualUnmodifiableListView) return _gifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Recipient>? _recipients;
  @override
  @JsonKey(name: 't_recipient')
  List<Recipient>? get recipients {
    final value = _recipients;
    if (value == null) return null;
    if (_recipients is EqualUnmodifiableListView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnnivWithGiftRecipient(name: $name, date: $date, isAnnually: $isAnnually, gifts: $gifts, recipients: $recipients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnivWithGiftRecipientImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isAnnually, isAnnually) ||
                other.isAnnually == isAnnually) &&
            const DeepCollectionEquality().equals(other._gifts, _gifts) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      date,
      isAnnually,
      const DeepCollectionEquality().hash(_gifts),
      const DeepCollectionEquality().hash(_recipients));

  /// Create a copy of AnnivWithGiftRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnivWithGiftRecipientImplCopyWith<_$AnnivWithGiftRecipientImpl>
      get copyWith => __$$AnnivWithGiftRecipientImplCopyWithImpl<
          _$AnnivWithGiftRecipientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnivWithGiftRecipientImplToJson(
      this,
    );
  }
}

abstract class _AnnivWithGiftRecipient implements AnnivWithGiftRecipient {
  const factory _AnnivWithGiftRecipient(
          {required final String name,
          required final DateTime date,
          @JsonKey(name: 'is_annually') required final bool isAnnually,
          @JsonKey(name: 't_gift') final List<Gift>? gifts,
          @JsonKey(name: 't_recipient') final List<Recipient>? recipients}) =
      _$AnnivWithGiftRecipientImpl;

  factory _AnnivWithGiftRecipient.fromJson(Map<String, dynamic> json) =
      _$AnnivWithGiftRecipientImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'is_annually')
  bool get isAnnually;
  @override
  @JsonKey(name: 't_gift')
  List<Gift>? get gifts;
  @override
  @JsonKey(name: 't_recipient')
  List<Recipient>? get recipients;

  /// Create a copy of AnnivWithGiftRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnivWithGiftRecipientImplCopyWith<_$AnnivWithGiftRecipientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
