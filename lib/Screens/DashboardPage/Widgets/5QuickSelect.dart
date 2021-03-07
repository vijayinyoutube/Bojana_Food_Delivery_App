import 'package:bojana/Declarations/Images/DashBoard/ImageFiles.dart';
import 'package:flutter/material.dart';

Widget buildQuickSelect() => Container(
      child: Column(
        children: [
          buildRow1(),
          buildRow2(),
        ],
      ),
    );

Widget buildRow1() => Container(
      child: Row(
        children: [
          buildItem("Fresh", dashboardImages[0]),
        ],
      ),
    );

Widget buildRow2() => Container();

Widget buildItem(String itemName, String imagePath) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      ),
    );
