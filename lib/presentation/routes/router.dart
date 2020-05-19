import 'package:auto_route/auto_route_annotations.dart';
import 'package:seed/presentation/pages/notes_overview_page.dart';
import 'package:seed/presentation/pages/sign_in/sign_in_page.dart';
import 'package:seed/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  NotesOverviewPage notesOverviewPage;
}