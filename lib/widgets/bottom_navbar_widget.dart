import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget(
      {Key? key, required this.selectedIndex, required this.onTabChange})
      : super(key: key);
  final int selectedIndex;
  final Function(int) onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(-0, -3),
            blurRadius: 6,
            color: Color(0x0e000000),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
              gap: 8,
              activeColor: const Color(0xff0447B7),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.transparent,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.delivery_dining,
                  text: 'Delivery',
                ),
                GButton(
                  icon: Icons.wallet,
                  text: 'Payment',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: onTabChange),
        ),
      ),
    );
  }
}
