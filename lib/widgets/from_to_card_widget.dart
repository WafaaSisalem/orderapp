import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:order_app/widgets/white_container_widget.dart';

class FromToCardWidget extends StatelessWidget {
  const FromToCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteContainerWidget(
      padding: EdgeInsets.all(20),
      height: null //212,
      ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              blueCircle(),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text('From:'),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Metro Market/Alremal/ Gaza',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Dash(
                direction: Axis.vertical,
                length: 51,
                dashLength: 1,
                dashColor: Color(0x80000000)),
          ),
          Row(
            children: [
              blueCircle(),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text('To:'),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Alnusirat/Gaza.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text('Date:'),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  '10Th August , 2022',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text('Time:'),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  '12:30Pm',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container blueCircle() {
    return Container(
      width: 10,
      height: 10,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Color(0xff0447B7)),
    );
  }
}
