import 'package:dartz/dartz.dart';
import 'package:seed/domain/core/value_failures.dart';
import 'package:seed/domain/core/value_objects.dart';
import 'package:seed/domain/core/value_validators.dart';

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  
  factory Password(String input) {
    assert(input != null);

    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}