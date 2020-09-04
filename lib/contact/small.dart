import 'package:flutter/material.dart';
import 'package:lorenzoconti/widgets/contact.dart';
import 'package:lorenzoconti/widgets/head.dart';

class ContactSmallPage extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(contact: false),
          _intro(context),
          _section('Contacts.', context),
          _contacts(context),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget _intro(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Text(
        "Here you will find all my contacts. I am always available to exchange opinions, work in a team and help you in any way.\nLikewise, if you have any suggestions for this webpage, I'm happy to hear them!",
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 18, height: 2),
      ),
    );
  }

  Widget _section(String title, BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _contacts(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Column(
        children: [
          Contact(
              path: 'assets/icons/email.png',
              text: 'Email',
              link: 'mailto:dev.lorenzoconti@gmail.com',
              linktext: 'dev.lorenzoconti@gmail.com'),
          Contact(
              path: 'assets/icons/linkedin.png',
              text: 'LinkedIn',
              link: 'https://www.linkedin.com/in/conti-lorenzo/',
              linktext: 'Lorenzo Conti / conti-lorenzo'),
          Contact(
              path: 'assets/icons/github.png',
              text: 'Github',
              link: 'https://github.com/lorenzoconti',
              linktext: 'github.com/lorenzoconti'),
          Contact(
              path: 'assets/icons/skype.png',
              text: 'Skype',
              linktext: 'Lorenzo Conti / lorenzo.conti23'),
          Contact(
              path: 'assets/icons/facebook.png',
              text: 'Facebook',
              link: 'https://facebook.com/lorenzoconti.dev',
              linktext: 'Lorenzo Conti / lorenzoconti.dev'),
          Contact(
              path: 'assets/icons/twitter.png',
              text: 'Twitter',
              link: 'https://twitter.com/conti_lorenzo_',
              linktext: 'Lorenzo Conti / conti_lorenzo_'),
          Contact(
              path: 'assets/icons/instagram.png',
              text: 'Instagram',
              link: 'https://www.instagram.com/contilorenzo_/',
              linktext: 'Lorenzo Conti / contilorenzo_'),
          Contact(
              path: 'assets/icons/telegram.jpg',
              text: 'Telegram',
              link: 'https://t.me/lorenzo_conti',
              linktext: 'Lorenzo Conti / lorenzo_conti')
        ],
      ),
    );
  }
}
