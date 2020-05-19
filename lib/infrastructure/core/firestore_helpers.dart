import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:seed/domain/auth/i_auth_facade.dart';
import 'package:seed/domain/core/errors.dart';
import 'package:seed/injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await sl<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
      .collection('users')
      .document(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
  CollectionReference get todoCollection => collection('todos');
}