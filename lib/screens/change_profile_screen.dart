import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/button_widget.dart';
import 'package:order_app/widgets/normal_textfield_widget.dart';
import 'package:order_app/widgets/profile_cirleavatar_widget.dart';

class ChangeProfileScreen extends StatelessWidget {
  const ChangeProfileScreen({Key? key}) : super(key: key);

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
          Text('Change Profile Picture'),
          SizedBox(
            height: 30,
          ),
          NormalTextFieldWidget(labelText: 'Name:', onChanged: (text) {}),
          SizedBox(
            height: 20,
          ),
          NormalTextFieldWidget(
              labelText: 'Phone Number:', onChanged: (text) {}),
          SizedBox(
            height: 50,
          ),
          ButtonWidget(text: 'Done', width: 136, onPressed: () {})
        ],
      ),
    );
  }
}
