import 'package:flutter/material.dart';
typedef String? Validator(String? s);

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String lable;
 final Validator validator ;

   const CustomTextField({
    super.key,
    required this.validator ,
     required this.controller ,
     required this.lable
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      validator: validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)),labelText: lable),
    );
  }
}
