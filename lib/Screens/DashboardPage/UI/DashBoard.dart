import 'package:bojana/GeneralWidgets/GWidget.dart';
import 'package:bojana/Screens/DashboardPage/Widgets/Location.dart';
import 'package:bojana/Screens/DashboardPage/Widgets/Search.dart';
import 'package:flutter/material.dart';

class DashboardPageClass extends StatelessWidget {
  const DashboardPageClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSpacer(15.00),
            buildLocation(),
            heightSpacer(10.00),
            buildSearchContainer(),
          ],
        ),
      ),
    );
  }
}
