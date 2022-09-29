import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String hintText;

  const TextFieldCustom({
    Key? key,
    this.hintText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        hoverColor: Colors.white,
        focusColor: Colors.white,
        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(
          gapPadding: 10,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
