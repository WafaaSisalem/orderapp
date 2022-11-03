import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.text,
      this.color = const Color(0xff0447B7),
      required this.width,
      required this.onPressed,
      this.haveBorder = false,
      this.haveIcon = false})
      : super(key: key);

  final String text;
  final Color color;
  final double width;
  final VoidCallback onPressed;
  final bool haveBorder;
  final bool haveIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color(0x1Affffff), offset: Offset(0, 1.5), blurRadius: 3)
        ]),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: haveBorder
                          ? const BorderSide(width: 1, color: Color(0xff0447B7))
                          : BorderSide.none)),
              elevation: MaterialStateProperty.resolveWith((states) => 0.0),
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => color),
              fixedSize: MaterialStateProperty.resolveWith(
                  (states) => Size(width, 44))),
          child: haveIcon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )
                  ],
                )
              : Center(
                  child: Text(text,
                      style: TextStyle(
                        color: color != Color(0xff0447B7)
                            ? Color(0xff0447B7)
                            : Colors.white,
                      ))),
        ));
  }
}
