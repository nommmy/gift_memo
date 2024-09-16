import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';
part 'generated/user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(includeIfNull: false)
  const factory User({
    required String id,
    bool? isPremium,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
