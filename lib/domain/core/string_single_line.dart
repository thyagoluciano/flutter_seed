import 'package:dartz/dartz.dart';

import 'value_failures.dart';
import 'value_objects.dart';
import 'value_validators.dart';

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    assert(input != null);
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}