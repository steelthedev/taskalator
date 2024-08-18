import 'package:flutter/material.dart';
import 'package:taskalator/components/app_text_field.dart';
import 'package:taskalator/components/form_xl_button.dart';
import 'package:taskalator/pages/auth/verify_code_page.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({
    super.key,
  });

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
                "Reset Password",
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                controller: newPasswordController,
                hintText: "new password",
                obscureText: true,
                icon: const Icon(Icons.lock),
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextField(
                controller: confirmPasswordController,
                hintText: "confirm password",
                obscureText: true,
                icon: const Icon(Icons.lock),
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
                text: "Reset Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
