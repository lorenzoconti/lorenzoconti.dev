import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorenzoconti/head.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(),
          _core(context),
          _aboutme(context),
          _aboutthings(context),
          _aboutwebsite(context),
        ],
      ),
    );
  }

  Widget _core(BuildContext context) {
    var heigth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      //decoration: BoxDecoration(color: Color.fromRGBO(255, 0, 0, 1)),
      padding:
          EdgeInsets.symmetric(horizontal: width * 0.1, vertical: heigth * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_text(context), SizedBox(width: 20), _image(context)],
      ),
    );
  }

  Widget _text(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Flexible(
      child: Container(
          //decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 0, 1)),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey, this is me, Lorenzo Conti.\n',
                style:
                    DefaultTextStyle.of(context).style.copyWith(fontSize: 25),
              ),
              SizedBox(height: 15),
              Text(
                "I'm a Computer Engineer,\nin love with" +
                    (width > 1300 ? " Artifical Intelligence." : ' AI.'),
                style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 35, fontWeight: FontWeight.bold, height: 1.5),
              ),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(
                    text: 'Student',
                    style: DefaultTextStyle.of(context)
                        .style
                        .copyWith(fontSize: 25),
                    children: [
                      TextSpan(text: ' @ ', style: TextStyle(fontSize: 20)),
                      TextSpan(
                        text: width > 1300
                            ? 'Università degli Studi di Bergamo.'
                            : 'Unibg',
                        style: DefaultTextStyle.of(context)
                            .style
                            .copyWith(fontSize: 25),
                      ),
                    ]),
              ),
            ],
          )),
    );
  }

  Widget _image(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigth = MediaQuery.of(context).size.height;
    return width > 1000
        ? Container(
            //decoration: BoxDecoration(color: Color.fromRGBO(255, 0, 255, 1)),
            width: width * 0.30,
            height: heigth * 0.50,
            child: Image(
              image: AssetImage('portfolio.jpg'),
              fit: BoxFit.contain,
            ))
        : Container();
  }

  Widget _aboutme(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var date = DateTime.now();
    var birthday = DateTime(1997, 3, 23);
    var years = (date.difference(birthday).inHours ~/ 8760).toInt();
    return Container(
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 80),
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About me.',
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 35, fontWeight: FontWeight.bold, height: 2),
          ),
          SizedBox(height: 30),
          Text(
            "Let me introduce myself.\nMy name is Lorenzo, I'm $years years old and I have a degree in computer engineering.\nI find interesting anything that I don't know.\nI love competition, I believe it is the most powerful way to push myself and give the best of myself. Recently I am passionate about the world of artificial intelligence, machine learning and deep learning. One of my interests outside the business world is bodyweight training.",
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 18, height: 2),
          )
        ],
      ),
    );
  }

  Widget _aboutthings(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 80),
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About the things I am doing.',
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 35, fontWeight: FontWeight.bold, height: 2),
          ),
          SizedBox(height: 30),
          Text(
            "I'm currently attending my last year at the University of Bergamo for my MSc in Computer Engineering.\nI'm looking for a thesis in a stimulating area to be carried out in the coming months.\nI have no open projects at the moment.",
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 18, height: 2),
          )
        ],
      ),
    );
  }

  Widget _aboutwebsite(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 80),
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About this website.',
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 35, fontWeight: FontWeight.bold, height: 2),
          ),
          SizedBox(height: 30),
          Text(
            "This page was developed using the beta version of flutter web.\nThis is probably not one of the best pages you can see.\nDon't blame on me, I am neither a designer nor a frontend developer 😅.\nIf you want to have a look, you can find the source code on my github account.",
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 18, height: 2),
          ),
          SizedBox(height: 20),
          InkWell(
            child: Text(
              'github.com/lorenzoconti/lorenzoconti.dev',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 16),
            ),
            onTap: () =>
                launch('https://github.com/lorenzoconti/lorenzoconti.dev'),
          ),
        ],
      ),
    );
  }
}
