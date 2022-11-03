import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppbarWidget({Key? key, required this.title, required this.actions})
      : super(key: key);

  final String title;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(58),
      child: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        shadowColor: Color(0x0E000000),
        elevation: 5,
        title: Text(title, style: TextStyle(color: Color(0xff0447B7))),
        actions: actions,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
