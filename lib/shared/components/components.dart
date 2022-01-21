import 'package:amit/shared/styles/colors.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  required String text,
  required VoidCallback onTap,
}) {
  return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white, fontSize: 18, ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(mainColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: mainColor),
              ))));
}




Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(dynamic val)? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required Function? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  bool autofocus = false,

}) {
  return TextFormField(

    controller: controller,
    autofocus: autofocus,
    obscureText: isPassword,
    onTap: () => onTap ?? () {},
    onChanged: (value) => onChange ?? (value),
    onFieldSubmitted: (value) => onSubmit!(value),
    validator: (value) {
      return validate!(value);
    },
    decoration:  InputDecoration(

      focusedBorder:  const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        borderSide: BorderSide(color: Colors.grey),
      ),
      border:const OutlineInputBorder(

        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      labelText: label,
      labelStyle: const TextStyle(color: Colors.grey),
      prefixIcon: Icon(

        prefix,
        color: Colors.grey,
      ),
      suffixIcon: suffix != null
          ? IconButton(
        color: Colors.grey,
        onPressed: () => suffixPressed,
        icon: Icon(

          suffix,
        ),
      )
          : null,
    ),);
}


void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );