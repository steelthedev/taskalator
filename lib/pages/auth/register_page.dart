import 'package:flutter/material.dart';
import 'package:taskalator/components/app_text_field.dart';
import 'package:taskalator/components/form_xl_button.dart';
import 'package:taskalator/components/social_bar.dart';
import 'package:taskalator/pages/auth/login_page.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                "Create an account",
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
                height: 10,
              ),
              // Register button

              FormLargeButton(
                onTap: () {},
                text: "Sign up",
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
                text: "Sign up with Google",
              ),
              const SizedBox(
                height: 10,
              ),

              Center(
                child: Text(
                  "By sign in, accept the terms of service, Guidelines and have read Privacy Policy.",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Already have an account?",
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
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Text(
                    "sign in",
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
