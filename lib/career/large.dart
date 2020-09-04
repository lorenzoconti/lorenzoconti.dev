import 'package:flutter/cupertino.dart';
import 'package:lorenzoconti/widgets/head.dart';
import 'package:lorenzoconti/widgets/item.dart';

class LargeCareerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(career: false),
          _body(context),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _section('Education.', context),
          _experience(context),
          _section('Work experience.', context),
          _work(context),
          _section('Licenses and Certifications.', context),
          _certifications(context),
          _section('Awards.', context),
          _awards(context),
        ],
      ),
    );
  }

  Widget _section(String title, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _experience(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Item(
              title: 'MSc in Computer Engineering',
              subtitle:
                  'Master of Science in Computer Engineering @ Università degli Studi di Bergamo',
              start: DateTime(2019, 10, 10),
              inProgress: true,
              other:
                  'Software Engineering, Programming, Automation, Algorithms, AI, Security, Cloud & Mobile.',
              context: context),
          Item(
              title: 'Deep Learning Summer School',
              subtitle:
                  'Deep Learning Summer School with University of Southern Denmark',
              start: DateTime(2020, 08, 03),
              end: DateTime(2020, 08, 14),
              other:
                  'Deep Learning Fundamentals, Tensorflow, Neural, Recurrent and Convolutional Networks, .',
              context: context),
          Item(
              title: 'BSc in Computer Engineering',
              subtitle:
                  'Bachelor of Science in Computer Engineering @ Università degli Studi di Bergamo',
              start: DateTime(2016, 09, 05),
              end: DateTime(2019, 07, 15),
              other:
                  'Software Engineering, Programming, Automation, Algorithms.',
              context: context),
          Item(
              title: 'Chemistry Technical Institute Diploma',
              subtitle: 'High School Graduation @ ISIS Giulio Natta',
              start: DateTime(2011, 09, 12),
              end: DateTime(2016, 07, 15),
              other:
                  'Chemical Analysis, Organic Chemistry, Chemical Process Technologies.',
              context: context)
        ],
      ),
    );
  }

  Widget _work(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Item(
              title: 'Mobile App Development',
              subtitle: 'IT Specialist Consultant @ SORINT.lab',
              start: DateTime(2019, 01, 10),
              end: DateTime(2019, 09, 10),
              other:
                  'Mobile Development, Flutter, Firebase, Google Assistant, Dialogflow.',
              context: context),
        ],
      ),
    );
  }

  Widget _certifications(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Item(
              title: 'Cloud Management with Docker and Kubernetes',
              subtitle:
                  'Hack The Cloud 2019, Università degli Studi di Milano Bicocca',
              other: 'Docker, Kubernetes, Team Project, Flutter, Hackaton.',
              linktext: 'Credentials ID: ST9ADPldTRmLzXNQ2ubJ-g',
              link: 'https://bestr.it/award/show/ST9ADPldTRmLzXNQ2ubJ-g',
              context: context),
        ],
      ),
    );
  }

  Widget _awards(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Item(
              title: 'Hack The Cloud 2019',
              subtitle:
                  'Winning team @ Hack The Cloud, Università degli Studi di Milano Bicocca',
              other: 'Prize: 1000 €.',
              context: context),
        ],
      ),
    );
  }
}
