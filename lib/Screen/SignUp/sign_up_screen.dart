import 'package:flutter/material.dart';
import 'package:halal_ldn/Screen/SignIn/Components/checkbox.dart';
import 'package:halal_ldn/Screen/SignUp/Components/AuthButton2.dart';
import 'package:halal_ldn/Screen/SignUp/Components/check2.dart';
import 'package:halal_ldn/Screen/SignUp/Components/drop_downfeild.dart';
import 'package:halal_ldn/Screen/SignIn/Components/form_text_field.dart';
import 'package:halal_ldn/Screen/SignUp/Components/formfeild_icon.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 50,
              ),
              child: const Text(
                'Welcome to Hala LDN',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
            //feilds
            Container(
              height: 800,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Form(
                child: ListView(
                  children: [
                    IconFormFeild(
                      label: 'First Name',
                      icon: Icons.verified_outlined,
                    ),
                    IconFormFeild(
                      label: 'Last Name',
                      icon: Icons.verified_outlined,
                    ),
                    IconFormFeild(
                      label: 'Enter Email Address',
                      icon: Icons.mail_outline,
                    ),
                    IconFormFeild(
                      label: 'Password',
                      icon: Icons.password_outlined,
                    ),
                    IconFormFeild(
                      label: 'Confirm Password',
                      icon: Icons.password_outlined,
                    ),
                    DropDownField(),
                    SizedBox(
                      height: 5,
                    ),
                    Check2(),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButton2(label: 'Create Account', color: Colors.green),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Or',
                      style: TextStyle(color: Colors.green),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    AuthButton2(label: 'SignIn', color: Colors.green),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
