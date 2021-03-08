import 'package:bojana/Declarations/Images/DashBoard/ImageFiles.dart';
import 'package:bojana/GeneralWidgets/GWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildQuickSelect() => Container(
      child: Column(
        children: [
          buildRow1(),
          heightSpacer(20.5),
          buildRow2(),
        ],
      ),
    );

Widget buildRow1() => Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildItem("Fresh", dashboardImages[2]),
          buildItem("Gravy", dashboardImages[4]),
          buildItem("Masala", dashboardImages[6]),
          buildItem("Veggy", dashboardImages[7]),
        ],
      ),
    );

Widget buildRow2() => Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildItem("Non-Veg", dashboardImages[1]),
          buildItem("Healthy", dashboardImages[5]),
          buildItem("Dry", dashboardImages[7]),
          buildItem("Crunch", dashboardImages[0]),
        ],
      ),
    );

Widget buildItem(String itemName, String imagePath) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            backgroundImage: AssetImage(imagePath),
            radius: 37,
          ),
          heightSpacer(5.50),
          Text(
            itemName,
            style: GoogleFonts.lora(
              textStyle:
                  TextStyle(fontSize: 12.5, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
