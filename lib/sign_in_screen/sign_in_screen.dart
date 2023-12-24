import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            Text("Error"),
            SizedBox(height: 20,),
            TextFormField(
              decoration: buildInputDecoration("Enter Your Email Address"),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: buildInputDecoration("Enter Your Email Address"),
            ),
            SizedBox(height: 25,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12
                ),
                onPressed: () {  }, child: Text("Submit",style: TextStyle(
                color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500
              ),),),)
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
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),

                borderSide: BorderSide.none
              )

            );
  }
}
