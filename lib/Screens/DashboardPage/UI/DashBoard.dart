import 'package:bojana/Screens/DashboardPage/Widgets/1Body.dart';
import 'package:flutter/material.dart';

class DashboardPageClass extends StatelessWidget {
  const DashboardPageClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(), child: BodyClass()),
    );
  }
}
