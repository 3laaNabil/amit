import 'package:flutter/material.dart';


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