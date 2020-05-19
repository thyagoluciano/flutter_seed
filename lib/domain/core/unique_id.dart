import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import 'value_failures.dart';
import 'value_objects.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromDbId(String firebaseId) {
    assert(firebaseId != null);
    return UniqueId._(
      right(firebaseId),
    );
  }

  const UniqueId._(this.value);
}