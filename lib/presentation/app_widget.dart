import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seed/application/auth/auth_bloc.dart';
import 'package:seed/injection.dart';
import 'package:seed/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ], 
      child: MaterialApp(
        title: 'Workout Tracker',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
            brightness: Brightness.dark,
            color: Colors.green[800],
            iconTheme: ThemeData.dark().iconTheme
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
            foregroundColor: Colors.white
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            )
          )
        ),
        builder: ExtendedNavigator<Router> (
          initialRoute: Routes.splashPage,
          router: Router(),
          guards: [],
        )
      )
    );
  }
}