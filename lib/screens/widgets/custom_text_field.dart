import 'package:flutter/material.dart';

class CustomTextField extends TextFormField {
  CustomTextField({
    String? hintText,
    Key? key,
    TextEditingController? controller,
    TextStyle? style,

  }) : super(
    key: key,
    controller: controller,
    style: style,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your Password';
      }
      return null;
    },
  );

}