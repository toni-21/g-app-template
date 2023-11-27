// ignore: depend_on_referenced_packages
// ignore_for_file: invalid_annotation_target

import 'package:apparence_kit/core/data/json_converters.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  const factory User.authenticated({
    @JsonKey(toJson: Converters.id, includeIfNull: false) String? id,
    @TimestampConverter()
    @JsonKey(name: 'creation_date')
    DateTime? creationDate,
    @TimestampConverter()
    @JsonKey(name: 'last_update_date')
    DateTime? lastUpdateDate,
    required String email,
    required String name,
    String? avatarPath,
  }) = AuthenticatedUserData;

  const factory User.anonymous() = AnonymousUserData;

  const factory User.loading() = LoadingUserData;

  const User._();

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
