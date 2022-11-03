import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/screens/change_profile_screen.dart';
import 'package:order_app/screens/complete_order_screen.dart';
import 'package:order_app/screens/home_screen.dart';
import 'package:order_app/screens/profile_screen.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/bottom_navbar_Widget.dart';

class HostPage extends StatefulWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  int selectedIndex = 0;
  List<Map<String, dynamic>> tabs = [
    {'name': 'Home Page', 'widget': HomeScreen()},
    {'name': 'Delivery', 'widget': CompleteOrderScreen()},
    {'name': 'Payment', 'widget': ChangeProfileScreen()},
    {'name': 'Profile', 'widget': ProfileScreen()},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget(
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_outlined),
              onPressed: () {},
            )
          ],
          title: tabs[selectedIndex]['name'],
        ),
        drawer: Drawer(),
        backgroundColor: Color(0xffFBFBFB),
        body: tabs[selectedIndex]['widget'],
        bottomNavigationBar: BottomNavWidget(
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
            }));
  }
}
