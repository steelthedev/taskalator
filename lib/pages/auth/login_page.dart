import 'package:flutter/material.dart';
import 'package:taskalator/components/app_text_field.dart';
import 'package:taskalator/components/form_xl_button.dart';
import 'package:taskalator/components/social_bar.dart';
import 'package:taskalator/pages/app/entry_page.dart';
import 'package:taskalator/pages/app/home_page.dart';
import 'package:taskalator/pages/auth/forgotten_password_page.dart';
import 'package:taskalator/pages/auth/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, again",
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                controller: emailController,
                hintText: "akinwumikaliyanu@gmail.com",
                obscureText: false,
                icon: const Icon(Icons.mail),
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextField(
                controller: passwordController,
                hintText: "********",
                obscureText: true,
                icon: const Icon(Icons.lock),
              ),

              // forgot password text

              const SizedBox(
                height: 15,
              ),

              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ForgottenPasswordPage()));
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Colors.black, fontFamily: "Sofia", fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              // Login button

              FormLargeButton(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EntryPage()));
                },
                text: "Sign In",
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontFamily: "Sofia",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              SocialBar(
                icon: Icon(
                  Icons.mail,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 25,
                ),
                text: "Sign in with Google",
              ),
              const SizedBox(
                height: 10,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Dont have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage(
                                  onTap: () {},
                                )));
                  },
                  child: Text(
                    "sign up",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 15,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
