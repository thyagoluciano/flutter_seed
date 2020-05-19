import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seed/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:seed/injection.dart';
import 'package:seed/presentation/pages/sign_in/widgets/sign_in_form.dart';


class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => sl<SignInFormBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}