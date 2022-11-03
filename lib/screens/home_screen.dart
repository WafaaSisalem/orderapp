import 'package:flutter/material.dart';
import 'package:order_app/widgets/button_widget.dart';
import 'package:order_app/widgets/white_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String name = 'Nisma';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.0, right: 25, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi $name'),
          const SizedBox(
            height: 10,
          ),
          const Text(
              'With Order App You Can Get The Different Products From Different Places In The Fastest Way.'),
          const SizedBox(
            height: 30,
          ),
          const Text('Last Order'),
          const SizedBox(
            height: 10,
          ),
          WhiteContainerWidget(
            height: 170,
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('No Any Order Yet'),
              const SizedBox(
                height: 10,
              ),
              const Text('Lets Make First Order'),
              const Expanded(child: SizedBox()),
              ButtonWidget(
                text: 'Make Order',
                width: 158,
                onPressed: () {},
                haveIcon: true,
              )
            ]),
          )
        ],
      ),
    );
  }
}
