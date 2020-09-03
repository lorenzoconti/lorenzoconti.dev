import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'large.dart';
import 'small.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            var large = constraints.maxWidth > 550;
            return large
                ? Container(
                    height: constraints.maxHeight,
                    child: SingleChildScrollView(
                      child: LargeAboutPage(),
                    ),
                  )
                : SmallAboutPage();
          },
        ),
      ),
    );
  }
}
