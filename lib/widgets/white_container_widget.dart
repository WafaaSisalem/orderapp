import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WhiteContainerWidget extends StatelessWidget {
  const WhiteContainerWidget(
      {Key? key,
      required this.child,
      required this.height,
      required this.padding})
      : super(key: key);
  final Widget child;
  final double? height;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 3), blurRadius: 6, color: Color(0x0D000000))
          ]),
      child: child,
    );
  }
}
