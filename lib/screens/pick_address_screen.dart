import 'package:flutter/material.dart';
import 'package:order_app/widgets/button_widget.dart';

import '../widgets/appbar_widget.dart';

class PickupAdressScreen extends StatelessWidget {
  const PickupAdressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppbarWidget(
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {},
            )
          ],
          title: 'Pickup Adress',
        ),
        body: Directionality(
            textDirection: TextDirection.ltr,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  searchWidget(),
                  Positioned(
                    bottom: 70,
                    left: 0,
                    right: 0,
                    child: bottomButtonWidget(),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Padding bottomButtonWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 27,
        right: 27,
        top: 30,
      ),
      child: ButtonWidget(
          text: 'Confirm Pickup', width: double.infinity, onPressed: () {}),
    );
  }

  Padding searchWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 27,
        right: 27,
        top: 30,
      ),
      child: Container(
        width: double.infinity,
        height: 40,
        padding: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: const Color(0xffFAFCFE),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 1.5),
                  blurRadius: 3,
                  color: Color(0x1Affffff))
            ]),
        child: TextField(
          onChanged: (text) {},
          cursorColor: Colors.grey,
          decoration: const InputDecoration(
              hintText: 'Search for location',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
