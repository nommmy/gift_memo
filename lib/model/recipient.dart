import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/recipient.freezed.dart';
part 'generated/recipient.g.dart';

@freezed
class Recipient with _$Recipient {
  const factory Recipient({
    required int id,
    required String name,
    required String icon,
    required String relationship,
    @JsonKey(name: 'user_id') required int userId,
  }) = _Recipient;

  factory Recipient.fromJson(Map<String, dynamic> json) => _$RecipientFromJson(json);
}
