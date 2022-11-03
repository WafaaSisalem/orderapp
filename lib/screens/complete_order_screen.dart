import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/button_widget.dart';
import 'package:order_app/widgets/normal_textfield_widget.dart';

import '../widgets/appbar_widget.dart';

class CompleteOrderScreen extends StatelessWidget {
  const CompleteOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Color(0xffFBFBFB),
      appBar: AppbarWidget(
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
          )
        ],
        title: 'Complete Order',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 27.0, right: 27, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Details:'),
            SizedBox(
              height: 20,
            ),
            NormalTextFieldWidget(
              labelText: 'Your Product:',
              onChanged: (text) {},
            ),
            SizedBox(
              height: 20,
            ),
            NormalTextFieldWidget(
              labelText: 'Pickup Address:',
              onChanged: (text) {},
              suffixIcon: Icon(Icons.location_pin),
            ),
            SizedBox(
              height: 20,
            ),
            NormalTextFieldWidget(
              labelText: 'To:',
              onChanged: (text) {},
              suffixIcon: Icon(Icons.location_pin),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: NormalTextFieldWidget(
                    labelText: 'Date:',
                    onChanged: (text) {},
                    suffixIcon: Icon(Icons.calendar_month),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: NormalTextFieldWidget(
                    labelText: 'Time:',
                    onChanged: (text) {},
                    suffixIcon: Icon(Icons.timelapse),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              child:
                  ButtonWidget(text: 'Confirm', width: 160, onPressed: () {}),
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }
}
