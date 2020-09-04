import 'package:flutter/material.dart';

import 'package:lorenzoconti/about/about.dart';
import 'package:lorenzoconti/career/career.dart';
import 'package:lorenzoconti/contact/contact.dart';
import 'package:lorenzoconti/skills/skills.dart';

void main() => runApp(Site());

class Site extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Raleway'),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => AboutPage(),
          '/skills': (context) => SkillsPage(),
          '/career': (context) => CareerPage(),
          '/contact': (context) => ContactPage()
        });
  }
}
