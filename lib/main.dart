import 'package:flutter/material.dart';

import 'Screens/DashboardPage/UI/DashBoard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPageClass(),
    );
  }
}
