import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorenzoconti/about/large.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            //var large = constraints.maxWidth > 550;
            return Container(
              height: constraints.maxHeight,
              child: SingleChildScrollView(
                  //child: large ? LargeAboutPage() : SmallAboutPage()),
                  child: LargeAboutPage()),
            );
          },
        ),
      ),
    );
  }
}
