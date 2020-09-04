import 'package:flutter/material.dart';
import 'package:lorenzoconti/career/large.dart';

class CareerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              child: SingleChildScrollView(
                  //child: large ? LargeCareerPage() : SmallCareerPage()),
                  child: LargeCareerPage()),
            );
          },
        ),
      ),
    );
  }
}
