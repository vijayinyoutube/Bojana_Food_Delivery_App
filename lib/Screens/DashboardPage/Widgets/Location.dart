import 'package:bojana/GeneralWidgets/GWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Widget buildLocation() => Column(
      children: [
        buildLocationText(),
        buildDivider(),
      ],
    );
Widget buildLocationText() => Container(
      child: Row(
        children: [
          buildLocationIcon(),
          widthSpacer(5.50),
          buildLocationName(),
          buildDivider(),
        ],
      ),
    );

Widget buildLocationIcon() => Icon(
      Icons.location_on,
      size: 25.00,
    );
Widget buildLocationName() => Text(
      "Tamil Nadu, India.",
      style: GoogleFonts.lora(
        textStyle: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.grey[400],
          fontSize: 20,
        ),
      ),
    );
Widget buildDivider() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.00),
      child: Divider(
        thickness: 0.5,
        color: Colors.grey[300],
      ),
    );
