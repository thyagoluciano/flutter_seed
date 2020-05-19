import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:seed/domain/auth/email_address.dart';
import 'package:seed/domain/auth/user.dart';
import 'package:seed/domain/core/string_single_line.dart';
import 'package:seed/domain/core/unique_id.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser _) {
    return _ == null
      ? null
      : User(
        id: UniqueId.fromDbId(_.uid),
        name: StringSingleLine(_.displayName ?? _.email.split('@').first),
        emailAddress: EmailAddress(_.email)
      );
  }
}