import 'package:flutter/material.dart';

import 'package:lorenzoconti/about/about.dart';

void main() => runApp(Site());

class Site extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Raleway'),
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => AboutPage()});
  }
}
