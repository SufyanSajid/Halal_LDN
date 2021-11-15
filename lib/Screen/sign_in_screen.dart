import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../widgets/form_text_field.dart';

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
        Image.asset('assets/images/sign_in_bg.png'),
        Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                const Text(
                  'Welcome to Hala LDN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Form(
                  child: Container(
                    height: 500,
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
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Remember Me'),
                          value: timeDilation != 1.0,
                          onChanged: (bool? value) {
                            setState(() {
                              timeDilation = value! ? 10.0 : 1.0;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   child: Text('Continue'),
                        //   style: ButtonStyle(),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                          ),
                          child: Text('Continue'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Create Account'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('As Guest'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
