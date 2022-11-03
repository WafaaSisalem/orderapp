import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/white_container_widget.dart';

class OrderDetailsCardWidget extends StatelessWidget {
  const OrderDetailsCardWidget(
      {Key? key, required this.title, required this.content})
      : super(key: key);
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return WhiteContainerWidget(
        child: Row(
          children: [
            Expanded(flex: 1, child: Text(title)),
            Expanded(
                flex: 2,
                child: Text(
                  content,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )),
          ],
        ),
        height: 61,
        padding: const EdgeInsets.only(left: 20));
  }
}
