import 'package:flutter/material.dart';

import 'btutton.dart';
import 'formField.dart';

class SginUpScreen extends StatelessWidget {
  SginUpScreen({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var mailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/image/logo.png")),
                  defaultFormField(
                    controller: nameController,
                    type: TextInputType.text,
                    validate: () {},
                    label: "Name",
                    prefix: Icons.person,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                    controller: mailController,
                    type: TextInputType.emailAddress,
                    validate: () {},
                    label: "Email",
                    prefix: Icons.mail,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      controller: passController,
                      type: TextInputType.text,
                      validate: () {},
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
                    child: defaultButton(text: "SginUp", onTap: () {}),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Go Login",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
