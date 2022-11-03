import 'package:flutter/material.dart';

class ProfileCircleAvatarWidget extends StatelessWidget {
  const ProfileCircleAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 63.5,
      child: Text('image here'),
    );
  }
}
