import 'package:flutter/material.dart';
import 'package:taskalator/components/app_text_field.dart';
import 'package:taskalator/components/form_xl_button.dart';
import 'package:taskalator/components/social_bar.dart';
import 'package:taskalator/pages/auth/verify_code_page.dart';

class ForgottenPasswordPage extends StatefulWidget {
  const ForgottenPasswordPage({
    super.key,
  });

  @override
  State<ForgottenPasswordPage> createState() => _ForgottenPasswordPageState();
}

class _ForgottenPasswordPageState extends State<ForgottenPasswordPage> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Type your email, we will send you verivication code via email",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.tertiary),
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
              FormLargeButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerifyCodePage()));
                },
                text: "Verify Email",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
