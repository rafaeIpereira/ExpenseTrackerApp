import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'sign_in_page.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/logo_app.png'),
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      labelText: 'Full name',
                    ),
                  ),
                  const SizedBox(height: 15,),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 15,),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      labelText: 'Confirm your password',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text(
                          'Forgot password?',
                        ),
                        onPressed: () => {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        fixedSize: const Size(350, 60),
                        elevation: 4),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    onPressed: () => {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(width: 5,),
                      TextButton(
                          child:  const Text('Sign In',),
                          onPressed: () {
                            Get.to((const SignInPage()), transition: Transition.fade, duration: const Duration(milliseconds: 1500));
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}