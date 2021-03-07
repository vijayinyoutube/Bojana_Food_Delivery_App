import 'package:bojana/Declarations/Global/GlobalDeclarations.dart';
import 'package:bojana/GeneralWidgets/GWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Widget buildSearchContainer() => Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.00),
          color: accentColor.withOpacity(0.12),
        ),
        width: double.infinity,
        height: 38,
        child: buildChildren(),
      ),
    );

Widget buildChildren() => Row(
      children: [
        widthSpacer(10.00),
        buildSearchIcon(),
        widthSpacer(5.5),
        buildSearchText(),
      ],
    );

Widget buildSearchIcon() => Icon(
      Icons.search,
      size: 25.00,
      color: Colors.grey[400],
    );

Widget buildSearchText() => Text(
      "Search Restaurants and Food",
      style: GoogleFonts.lora(
        textStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: 16.50,
        ),
      ),
    );
