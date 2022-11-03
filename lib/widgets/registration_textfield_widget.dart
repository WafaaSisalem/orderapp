import 'package:flutter/material.dart';
import 'package:order_app/widgets/white_container_widget.dart';

class RegTextFieldWidget extends StatelessWidget {
  const RegTextFieldWidget(
      {Key? key,
      required this.hintText,
      required this.onChanged,
      this.suffixIcon = null})
      : super(key: key);
  final String hintText;
  final Icon? suffixIcon;
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return WhiteContainerWidget(
      height: 48,
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            contentPadding: EdgeInsets.zero,
            hintText: hintText,
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
