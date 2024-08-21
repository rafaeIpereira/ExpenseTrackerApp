import 'package:expense_tracker_app/pages/home_page.dart';
import 'package:expense_tracker_app/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                    'Sign In',
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
                      hintText: 'Enter your email',
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Enter your password',
                      labelText: 'Password',
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
                      'Sign In',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    onPressed: () => {
                     Get.to((const HomePage()), transition: Transition.fade, duration: const Duration(milliseconds: 1500))
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 14),
                      ),
                      TextButton(
                          child: const Text(
                            'Sign Up',
                          ),
                          onPressed: () {
                            Get.to((const SignUpPage()), transition: Transition.fade, duration: const Duration(milliseconds: 1500));
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
