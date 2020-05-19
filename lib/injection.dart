
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:seed/domain/auth/i_auth_facade.dart';
import 'package:seed/infrastructure/auth/firebase_auth_facade.dart';
import 'package:seed/injection.iconfig.dart';

final GetIt sl = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  sl.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(sl(), sl(), sl()));
  $initGetIt(sl, environment: env);
}