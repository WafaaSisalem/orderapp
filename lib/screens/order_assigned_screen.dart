import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/button_widget.dart';

class OrderAssignedScreen extends StatelessWidget {
  const OrderAssignedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(child: Text('image here')),
              width: 282,
              height: 267,
            ),
            Text('Your Order Was Assigned'),
            SizedBox(
              height: 50,
            ),
            ButtonWidget(
                text: 'Track My Order',
                width: double.infinity,
                onPressed: () {}),
            SizedBox(
              height: 15,
            ),
            ButtonWidget(
              text: 'Go Back To Home',
              width: double.infinity,
              onPressed: () {},
              color: Colors.white,
              haveBorder: true,
            )
          ],
        ),
      ),
    );
  }
}
