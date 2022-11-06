import 'package:flutter/material.dart';
import 'package:order_app/screens/about_screen.dart';
import 'package:order_app/screens/help_screen.dart';
import 'package:order_app/screens/host_page.dart';
import 'package:order_app/screens/your_order_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0x26707070)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0x26707070)),
            ),
          ),
        ),
        home: HelpScreen());
  }
}
