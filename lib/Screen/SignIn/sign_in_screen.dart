import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:halal_ldn/Screen/SignIn/Components/auth_button.dart';
import 'package:halal_ldn/Screen/SignIn/Components/checkbox.dart';
import 'Components/form_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final _passFocusNode = FocusNode();
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(
                'assets/images/sign_in_bg.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.black.withOpacity(0.7),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 55),
                  child: const Text(
                    'Welcome to Hala LDN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 230,
                  //width: double.infinity,
                  margin: EdgeInsets.all(35),
                  child: Form(
                    child: ListView(
                      children: [
                        FormTextField(
                          label: 'Email Address',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FormTextField(
                          label: 'Password',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // CheckboxListTile(
                        //   //tileColor: Colors.white,
                        //   //activeColor: Colors.white,
                        //   //checkColor: Colors.white,
                        //   controlAffinity: ListTileControlAffinity.leading,
                        //   title: Text(
                        //     'Remember Me',
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontWeight: FontWeight.bold),
                        //   ),
                        //   value: timeDilation != 1.0,
                        //   onChanged: (bool? value) {
                        //     setState(() {
                        //       timeDilation = value! ? 10.0 : 1.0;
                        //     });
                        //   },
                        // ),
                        RememberCheckBox(),
                        const SizedBox(
                          height: 10,
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   child: Text('Continue'),
                        //   style: ButtonStyle(),
                        // ),
                      ],
                    ),
                  ),
                ),
                //Lower button portion
                AuthButton(
                  label: 'Continue',
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Or',
                  style: TextStyle(color: Colors.green),
                  textAlign: TextAlign.center,
                ),
                AuthButton(
                  label: 'Create New Account',
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Or',
                  style: TextStyle(color: Colors.green),
                  textAlign: TextAlign.center,
                ),
                AuthButton(
                  label: 'As Guest',
                  color: Colors.black.withOpacity(0.9),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
