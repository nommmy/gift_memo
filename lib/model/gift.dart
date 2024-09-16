import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/gift.freezed.dart';
part 'generated/gift.g.dart';

@freezed
class Gift with _$Gift {
  @JsonSerializable(includeIfNull: false)
  const factory Gift({
    int? id,
    required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    required int price,
    @JsonKey(name: 'user_id') String? userId,
  }) = _Gift;

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}
