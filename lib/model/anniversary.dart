import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/anniversary.freezed.dart';
part 'generated/anniversary.g.dart';

@freezed
class Anniversary with _$Anniversary {
  const factory Anniversary({
    required int id,
    required String name,
    required DateTime date,
    @JsonKey(name: 'is_gift_reminder_enabled') @Default(false) required bool isGiftReminderEnabled,
    @JsonKey(name: 'is_anniversary_reminder_enabled') @Default(false) required bool isAnniversartReminderEnabled,
    @JsonKey(name: 'user_id') required int userId,
  }) = _Anniversary;

  factory Anniversary.fromJson(Map<String, dynamic> json) => _$AnniversaryFromJson(json);
}
