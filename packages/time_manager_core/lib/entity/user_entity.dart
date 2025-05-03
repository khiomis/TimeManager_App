import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'enums/user_status.dart';

part 'user_entity.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: true)
class UserEntity extends Equatable {
  @JsonKey(defaultValue: "")
  final String id;
  @JsonKey(defaultValue: "")
  final String name;
  @JsonKey(defaultValue: "")
  final String email;
  @JsonKey(defaultValue: UserStatus.pending)
  final UserStatus status;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.status,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  @override
  List<Object?> get props => [id];
}
