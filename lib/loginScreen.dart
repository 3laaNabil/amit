import 'package:amit/btutton.dart';
import 'package:amit/formField.dart';
import 'package:amit/sginUp.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var mailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/image/logo.png")),
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
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 40,
                child: defaultButton(text: "login", onTap: () {}),


              ),

              SizedBox(
                height: 20,
              ),


              TextButton(onPressed: (){


                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SginUpScreen(),
                  ),
                );
              }, child: const Text("SginUp" , style: TextStyle(color: Colors.black),)),
            ],
          ),
        ),
      ),
    );
  }
}
