import 'package:dartz/dartz.dart';
import 'package:seed/domain/core/value_failures.dart';
import 'package:seed/domain/core/value_objects.dart';
import 'package:seed/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  
  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}