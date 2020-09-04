import 'package:flutter/material.dart';
import 'package:lorenzoconti/skills/large.dart';
import 'package:lorenzoconti/skills/small.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            var large = constraints.maxWidth > 1200;
            return Container(
              height: constraints.maxHeight,
              child: SingleChildScrollView(
                  child: large ? LargeSkillsPage() : SmallSkillsPage()),
            );
          },
        ),
      ),
    );
  }
}
