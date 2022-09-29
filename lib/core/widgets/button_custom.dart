import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const ButtonCustom({
    Key? key,
    this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(title),
          ),
        ),
      ],
    );
  }
}
