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
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red),
          ))));
}
