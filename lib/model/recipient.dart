import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/recipient.freezed.dart';
part 'generated/recipient.g.dart';

@freezed
class Recipient with _$Recipient {
  @JsonSerializable(includeIfNull: false)
  const factory Recipient({
    int? id,
    required String name,
    required String icon,
    String? relationship,
    @JsonKey(name: 'user_id') String? userId,
  }) = _Recipient;

  factory Recipient.fromJson(Map<String, dynamic> json) => _$RecipientFromJson(json);
}
