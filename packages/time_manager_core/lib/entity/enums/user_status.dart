import 'package:json_annotation/json_annotation.dart';

enum UserStatus {
  @JsonValue(0)
  pending(0),
  @JsonValue(1)
  activated(1),
  @JsonValue(2)
  deactivated(2),
  @JsonValue(3)
  banned(3);

  const UserStatus(this.value);

  final int value;
}
