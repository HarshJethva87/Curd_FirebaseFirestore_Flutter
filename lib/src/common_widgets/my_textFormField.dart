import 'package:flutter/material.dart';
final FocusNode focusNode = FocusNode();

Widget myTextField(
    {required String hintText,
    TextInputType textInputType = TextInputType.name,
      required TextEditingController controller,
      required dynamic Function(String) validator,
      FocusNode? focusNode,
    }) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      focusNode: focusNode,
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
          hintText: "Enter Your $hintText",
          labelText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),),
      validator:(value) {
      },
    ),
  );
}
