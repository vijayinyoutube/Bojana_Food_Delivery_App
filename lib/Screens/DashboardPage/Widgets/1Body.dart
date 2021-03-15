import 'package:bojana/GeneralWidgets/GWidget.dart';
import 'package:flutter/material.dart';
import '6Recommendation.dart';
import '5QuickSelect.dart';
import '2Location.dart';
import '4TopTags.dart';
import '3Search.dart';

class BodyClass extends StatefulWidget {
  BodyClass({Key key}) : super(key: key);

  @override
  _BodyClassState createState() => _BodyClassState();
}

class _BodyClassState extends State<BodyClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSpacer(15.00),
            buildLocation(),
            heightSpacer(10.00),
            buildSearchContainer(),
            heightSpacer(15.00),
            buildTopSearchTags(),
            heightSpacer(20.00),
            buildQuickSelect(),
            heightSpacer(25.00),
            buildRecommendationCard(context),
          ],
        ),
      ),
    );
  }
}
