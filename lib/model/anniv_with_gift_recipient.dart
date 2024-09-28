import 'package:freezed_annotation/freezed_annotation.dart';
import './gift.dart';
import './recipient.dart';

part 'generated/anniv_with_gift_recipient.freezed.dart';
part 'generated/anniv_with_gift_recipient.g.dart';

@freezed
class AnnivWithGiftRecipient with _$AnnivWithGiftRecipient {
  @JsonSerializable(includeIfNull: false)
  const factory AnnivWithGiftRecipient({
    required String name,
    required DateTime date,
    @JsonKey(name: 'is_annually') required bool isAnnually,
    @JsonKey(name: 't_gift') List<Gift>? gifts,
    @JsonKey(name: 't_recipient') List<Recipient>? recipients,
  }) = _AnnivWithGiftRecipient;

  factory AnnivWithGiftRecipient.fromJson(Map<String, dynamic> json) => _$AnnivWithGiftRecipientFromJson(json);
}
