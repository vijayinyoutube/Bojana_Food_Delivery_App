import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Widget buildTopSearchTags() => Container(
      height: 25,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          buildTag("Cusines"),
          buildTag("Ratings 4.0+"),
          buildTag("Fast Delivery"),
          buildTag("Most Popular"),
          buildTag("Healthy"),
        ],
      ),
    );

Widget buildTag(String itemName) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.00),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 15.00, right: 15.00, top: 5.0, bottom: 5.0),
          child: Text(
            itemName,
            style: GoogleFonts.lora(
              textStyle: TextStyle(fontSize: 12.5),
            ),
          ),
        ),
      ),
    );
