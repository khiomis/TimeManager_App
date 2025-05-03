import 'package:json_annotation/json_annotation.dart';
import 'enums/user_status.dart';
import 'user_entity.dart';

part 'access_entity.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class AccessEntity extends UserEntity {
  final String token;
  final String refreshToken;

  const AccessEntity({
    required super.id,
    required super.name,
    required super.email,
    required super.status,
    required this.token,
    required this.refreshToken,
  });

  @override
  factory AccessEntity.fromJson(Map<String, dynamic> json) =>
      _$AccessEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccessEntityToJson(this);
}
