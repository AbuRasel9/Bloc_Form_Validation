import 'package:bloc_form_validation/sign_in_screen/bloc/signin_bloc.dart';
import 'package:bloc_form_validation/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(),
      child: MaterialApp(
        home: SignInScreen(),
      ),
    );
  }
}


