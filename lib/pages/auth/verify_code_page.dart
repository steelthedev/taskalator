import 'package:flutter/material.dart';
import 'package:taskalator/components/app_text_field.dart';
import 'package:taskalator/components/form_xl_button.dart';
import 'package:taskalator/components/small_text_field.dart';
import 'package:taskalator/components/social_bar.dart';
import 'package:taskalator/pages/auth/reset_password_page.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({
    super.key,
  });

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  final TextEditingController ControllerOne = TextEditingController();
  final TextEditingController ControllerTwo = TextEditingController();
  final TextEditingController ControllerThree = TextEditingController();
  final TextEditingController ControllerFour = TextEditingController();
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
                "Verify Code",
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
                "The confimation code was sent via email",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.tertiary),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallTextField(
                    controller: ControllerOne,
                    hintText: "0",
                    obscureText: false,
                  ),
                  SmallTextField(
                    controller: ControllerTwo,
                    hintText: "0",
                    obscureText: false,
                  ),
                  SmallTextField(
                    controller: ControllerThree,
                    hintText: "0",
                    obscureText: false,
                  ),
                  SmallTextField(
                    controller: ControllerFour,
                    hintText: "0",
                    obscureText: false,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FormLargeButton(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPasswordPage()));
                },
                text: "Verify Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
