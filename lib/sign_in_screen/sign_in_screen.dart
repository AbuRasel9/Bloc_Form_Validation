import 'package:bloc_form_validation/sign_in_screen/bloc/signin_bloc.dart';
import 'package:bloc_form_validation/sign_in_screen/bloc/signin_event.dart';
import 'package:bloc_form_validation/sign_in_screen/bloc/signin_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<SigninBloc, SigninState>(
              builder: (context, state) {
                if (state is SigninErrorState) {
                  return Text(
                    state.errorText,
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  );
                } else {
                  return Container();
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              onChanged: (value) {
                BlocProvider.of<SigninBloc>(context).add(SigninTextEvent(emailController.text, passwordController.text));
              },
              decoration: buildInputDecoration("Enter Your Email Address"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,

              onChanged: (value) {
                BlocProvider.of<SigninBloc>(context).add(
                  SigninTextEvent(emailController.text, passwordController.text)
                );
              },
              decoration: buildInputDecoration("Enter Your Password"),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: BlocBuilder<SigninBloc, SigninState>(
                builder: (context, state) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: (state is SigninvalidState) ? Colors.greenAccent : Colors.black12),
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(String text) {
    return InputDecoration(
        hintText: text,
        fillColor: Colors.black12,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none));
  }
}
