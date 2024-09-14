// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../anniversary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Anniversary _$AnniversaryFromJson(Map<String, dynamic> json) {
  return _Anniversary.fromJson(json);
}

/// @nodoc
mixin _$Anniversary {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_gift_reminder_enabled')
  bool get isGiftReminderEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anniversary_reminder_enabled')
  bool get isAnniversartReminderEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this Anniversary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Anniversary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnniversaryCopyWith<Anniversary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnniversaryCopyWith<$Res> {
  factory $AnniversaryCopyWith(
          Anniversary value, $Res Function(Anniversary) then) =
      _$AnniversaryCopyWithImpl<$Res, Anniversary>;
  @useResult
  $Res call(
      {int id,
      String name,
      DateTime date,
      @JsonKey(name: 'is_gift_reminder_enabled') bool isGiftReminderEnabled,
      @JsonKey(name: 'is_anniversary_reminder_enabled')
      bool isAnniversartReminderEnabled,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$AnniversaryCopyWithImpl<$Res, $Val extends Anniversary>
    implements $AnniversaryCopyWith<$Res> {
  _$AnniversaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Anniversary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? isGiftReminderEnabled = null,
    Object? isAnniversartReminderEnabled = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isGiftReminderEnabled: null == isGiftReminderEnabled
          ? _value.isGiftReminderEnabled
          : isGiftReminderEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnniversartReminderEnabled: null == isAnniversartReminderEnabled
          ? _value.isAnniversartReminderEnabled
          : isAnniversartReminderEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnniversaryImplCopyWith<$Res>
    implements $AnniversaryCopyWith<$Res> {
  factory _$$AnniversaryImplCopyWith(
          _$AnniversaryImpl value, $Res Function(_$AnniversaryImpl) then) =
      __$$AnniversaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      DateTime date,
      @JsonKey(name: 'is_gift_reminder_enabled') bool isGiftReminderEnabled,
      @JsonKey(name: 'is_anniversary_reminder_enabled')
      bool isAnniversartReminderEnabled,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$AnniversaryImplCopyWithImpl<$Res>
    extends _$AnniversaryCopyWithImpl<$Res, _$AnniversaryImpl>
    implements _$$AnniversaryImplCopyWith<$Res> {
  __$$AnniversaryImplCopyWithImpl(
      _$AnniversaryImpl _value, $Res Function(_$AnniversaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Anniversary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? isGiftReminderEnabled = null,
    Object? isAnniversartReminderEnabled = null,
    Object? userId = null,
  }) {
    return _then(_$AnniversaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isGiftReminderEnabled: null == isGiftReminderEnabled
          ? _value.isGiftReminderEnabled
          : isGiftReminderEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnniversartReminderEnabled: null == isAnniversartReminderEnabled
          ? _value.isAnniversartReminderEnabled
          : isAnniversartReminderEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnniversaryImpl implements _Anniversary {
  const _$AnniversaryImpl(
      {required this.id,
      required this.name,
      required this.date,
      @JsonKey(name: 'is_gift_reminder_enabled')
      required this.isGiftReminderEnabled = false,
      @JsonKey(name: 'is_anniversary_reminder_enabled')
      required this.isAnniversartReminderEnabled = false,
      @JsonKey(name: 'user_id') required this.userId});

  factory _$AnniversaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnniversaryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'is_gift_reminder_enabled')
  final bool isGiftReminderEnabled;
  @override
  @JsonKey(name: 'is_anniversary_reminder_enabled')
  final bool isAnniversartReminderEnabled;
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'Anniversary(id: $id, name: $name, date: $date, isGiftReminderEnabled: $isGiftReminderEnabled, isAnniversartReminderEnabled: $isAnniversartReminderEnabled, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnniversaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isGiftReminderEnabled, isGiftReminderEnabled) ||
                other.isGiftReminderEnabled == isGiftReminderEnabled) &&
            (identical(other.isAnniversartReminderEnabled,
                    isAnniversartReminderEnabled) ||
                other.isAnniversartReminderEnabled ==
                    isAnniversartReminderEnabled) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, date,
      isGiftReminderEnabled, isAnniversartReminderEnabled, userId);

  /// Create a copy of Anniversary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnniversaryImplCopyWith<_$AnniversaryImpl> get copyWith =>
      __$$AnniversaryImplCopyWithImpl<_$AnniversaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnniversaryImplToJson(
      this,
    );
  }
}

abstract class _Anniversary implements Anniversary {
  const factory _Anniversary(
      {required final int id,
      required final String name,
      required final DateTime date,
      @JsonKey(name: 'is_gift_reminder_enabled')
      required final bool isGiftReminderEnabled,
      @JsonKey(name: 'is_anniversary_reminder_enabled')
      required final bool isAnniversartReminderEnabled,
      @JsonKey(name: 'user_id') required final int userId}) = _$AnniversaryImpl;

  factory _Anniversary.fromJson(Map<String, dynamic> json) =
      _$AnniversaryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'is_gift_reminder_enabled')
  bool get isGiftReminderEnabled;
  @override
  @JsonKey(name: 'is_anniversary_reminder_enabled')
  bool get isAnniversartReminderEnabled;
  @override
  @JsonKey(name: 'user_id')
  int get userId;

  /// Create a copy of Anniversary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnniversaryImplCopyWith<_$AnniversaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
