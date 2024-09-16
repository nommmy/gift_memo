import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/anniversary.freezed.dart';
part 'generated/anniversary.g.dart';

@freezed
class Anniversary with _$Anniversary {
  @JsonSerializable(includeIfNull: false)
  const factory Anniversary({
    int? id,
    required String name,
    required DateTime date,
    @JsonKey(name: 'is_gift_reminder_enabled') bool? isGiftReminderEnabled,
    @JsonKey(name: 'is_anniversary_reminder_enabled') bool? isAnniversartReminderEnabled,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'is_annually') bool? isAnnually,
  }) = _Anniversary;

  factory Anniversary.fromJson(Map<String, dynamic> json) => _$AnniversaryFromJson(json);
}
