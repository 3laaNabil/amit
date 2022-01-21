import 'package:amit/modules/login/loginScreen.dart';
import 'package:amit/shared/components/components.dart';
import 'package:flutter/material.dart';



class SginUpScreen extends StatelessWidget {
  SginUpScreen({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var mailController = TextEditingController();
  var passController = TextEditingController();

  var sginUpFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: sginUpFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/image/logo.png")),
                    defaultFormField(
                      controller: nameController,
                      type: TextInputType.text,
                      validate: (value) {

                        if(nameController.text.isEmpty){

                          return "*name wrong";
                        }


                      },
                      label: "Name",
                      prefix: Icons.person,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                      controller: mailController,
                      type: TextInputType.emailAddress,
                      validate: (value) {

                        if(mailController.text.isEmpty){

                          return "*email wrong";
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

                          if(passController.text.isEmpty){

                            return "*password wrong";
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
                      child: defaultButton(text: "SginUp", onTap: () {

                        if(sginUpFormKey.currentState!.validate()){


                          print("done");
                        }

                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {


                          navigateFinish(context, LoginScreen());
                        },
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
      ),
    );
  }
}
