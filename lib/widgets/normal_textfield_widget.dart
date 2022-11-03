import 'package:flutter/material.dart';

class NormalTextFieldWidget extends StatelessWidget {
  const NormalTextFieldWidget(
      {Key? key,
      required this.labelText,
      required this.onChanged,
      this.suffixIcon = null})
      : super(key: key);
  final String labelText;
  final Function(String) onChanged;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        TextField(
          decoration: InputDecoration(suffixIcon: suffixIcon),
          cursorColor: Colors.grey,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
