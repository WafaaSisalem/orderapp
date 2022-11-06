import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/appbar_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppbarWidget(title: 'About', actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
            ),
            onPressed: () {},
          )
        ]),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 27, right: 13),
            child: Column(
              children: [
                Text(
                    'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est eopksio laborum. Sed ut perspiciatis unde omnis istpoe natus error sit voluptatem accusantium doloremque eopsloi laudantium, totam rem aperiam.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est eopksio laborum. Sed ut perspiciatis unde omnis istpoe natus error sit voluptatem accusantium doloremque eopsloi laudantium, totam rem aperiam.Excepteur sint occaecat cupidatat non proident.'),
                Expanded(
                    child: Container(
                  child: Text('Image here'),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
