import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/button_widget.dart';
import 'package:order_app/widgets/from_to_card_widget.dart';
import 'package:order_app/widgets/order_details_card_widget.dart';

import '../widgets/appbar_widget.dart';

class YourOrderScreen extends StatelessWidget {
  const YourOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Color(0xffFBFBFB),
      appBar: AppbarWidget(
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          )
        ],
        title: 'Your Order',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 27, right: 27, top: 30),
        child: Column(
          children: [
            OrderDetailsCardWidget(
                title: 'Your Product:', content: 'Fruits And Vegetables'),
            SizedBox(
              height: 10,
            ),
            FromToCardWidget(),
            SizedBox(
              height: 10,
            ),
            OrderDetailsCardWidget(title: 'Price:', content: '\$5'),
            SizedBox(
              height: 10,
            ),
            OrderDetailsCardWidget(title: 'Product Id:', content: 'A1000'),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                    text: 'Cancel',
                    width: 136,
                    onPressed: () {},
                    color: Color(0xffD7D7D7)),
                SizedBox(
                  width: 15,
                ),
                ButtonWidget(
                  text: 'Check Out',
                  width: 136,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
