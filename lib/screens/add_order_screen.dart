import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/button_widget.dart';
import 'package:order_app/widgets/normal_textfield_widget.dart';
import 'package:order_app/widgets/white_container_widget.dart';

import '../widgets/appbar_widget.dart';

class AddOrderScreen extends StatelessWidget {
  const AddOrderScreen({Key? key}) : super(key: key);

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
          title: 'Add Card',
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 27, right: 27, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card Info'),
              SizedBox(
                height: 20,
              ),
              WhiteContainerWidget(
                  child: Column(children: [
                    NormalTextFieldWidget(
                        labelText: 'Card Holder Name:', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                    NormalTextFieldWidget(
                        labelText: 'Card Number:', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                    NormalTextFieldWidget(
                        labelText: 'Expiry Date:', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                    NormalTextFieldWidget(
                        labelText: 'CVV/CVC', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                  height: null,
                  padding: EdgeInsets.all(20)),
              SizedBox(
                height: 50,
              ),
              Align(
                  alignment: Alignment.center,
                  child:
                      ButtonWidget(text: 'Done', width: 136, onPressed: () {}))
            ],
          ),
        ));
  }
}
