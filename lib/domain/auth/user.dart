import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seed/domain/core/i_entity.dart';
import 'package:seed/domain/core/string_single_line.dart';
import 'package:seed/domain/core/unique_id.dart';
import 'package:seed/domain/core/value_failures.dart';

import 'email_address.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
  }) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
      .andThen(emailAddress.failureOrUnit)
      .fold((l) => some(l), (r) => none());
  }
}