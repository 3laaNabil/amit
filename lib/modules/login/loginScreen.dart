import 'package:amit/layout/homeLayout.dart';
import 'package:amit/modules/sginUp/sginUp.dart';
import 'package:amit/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var mailController = TextEditingController();
  var passController = TextEditingController();

  var loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: loginFormKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/image/logo.png")),
                    defaultFormField(
                      controller: mailController,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (mailController.text.isEmpty) {
                          return "*Email wrong";
                        }
                      },
                      label: "Email",
                      prefix: Icons.mail,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                        controller: passController,
                        type: TextInputType.text,
                        validate: (value) {
                          if (passController.text.isEmpty) {
                            return "*Email wrong";
                          }
                        },
                        label: "Password",
                        prefix: Icons.password,
                        isPassword: true,
                        suffix: Icons.remove_red_eye_outlined),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: defaultButton(
                          text: "login",
                          onTap: () {
                            if (loginFormKey.currentState!.validate()) {
                              print(mailController.text);

                              navigateFinish(context, HomeLayout());
                            }
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {
                        navigateFinish(context, SginUpScreen());
                        },
                        child: const Text(
                          "SginUp",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
