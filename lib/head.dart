import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_title(context), _line(context), Options()],
      ),
    );
  }

  Widget _line(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 1,
      color: Colors.black,
    );
  }

  Widget _title(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.04),
      child: Center(
          child: Text('L O R E N Z O C O N T I',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Raleway'))),
    );
  }
}

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.04),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            child: Text(
              'about',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
            ),
            onTap: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          GestureDetector(
            child: Text(
              'skills',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Text(
              'career',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: Text(
              'contact',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
