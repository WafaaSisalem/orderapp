import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/button_widget.dart';
import 'package:order_app/widgets/profile_cirleavatar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 27,
        right: 27,
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileCircleAvatarWidget(),
          SizedBox(
            height: 10,
          ),
          Text('Nisma Alhaj'),
          SizedBox(
            height: 10,
          ),
          Text('0595499060'),
          SizedBox(
            height: 50,
          ),
          ButtonWidget(
              text: 'Edit Profile', width: double.infinity, onPressed: () {}),
          SizedBox(
            height: 10,
          ),
          ButtonWidget(
            text: 'Track Your Order',
            width: double.infinity,
            onPressed: () {},
            haveBorder: true,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
