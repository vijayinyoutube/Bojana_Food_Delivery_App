import 'package:bojana/Declarations/Global/GlobalDeclarations.dart';
import 'package:bojana/Declarations/Images/DashBoard/ImageFiles.dart';
import 'package:bojana/Declarations/DashboardDeclr.dart';
import 'package:bojana/GeneralWidgets/GWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Widget buildRecommendedText() => Container(
      child: Text(
        " Recommended for you ",
        style: GoogleFonts.lora(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
Widget buildRecommendationCard(BuildContext context) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRecommendedText(),
          heightSpacer(10.00),
          buildRecmdDetailedCard(context),
        ],
      ),
    );

Widget buildRecmdDetailedCard(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.00),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.00),
        ),
        elevation: 5.5,
        child: Column(
          children: [
            Stack(
              children: [
                buildImage(context),
                buildDeliveryTime(),
                buildFavIcon(),
                buildOfferTag(),
              ],
            ),
            buildRecmdTags(),
          ],
        ),
      ),
    );

Widget buildImage(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      height: 225 / 1.75,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.00),
          topRight: Radius.circular(10.00),
        ),
        child: Image.asset(
          dashboardImages[8],
          fit: BoxFit.fill,
        ),
      ),
    );

Widget buildDeliveryTime() => Positioned(
      top: 15,
      left: 20,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.5), color: Colors.grey[350]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.5, horizontal: 1.5),
          child: Text(
            " 30 mins ",
            style: GoogleFonts.lora(
              textStyle: TextStyle(),
            ),
          ),
        ),
      ),
    );
Widget buildFavIcon() => Positioned(
      top: 15,
      right: 20,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.grey[350]),
        child: Padding(
          padding: const EdgeInsets.all(5.5),
          child: Icon(
            Icons.favorite_border,
            color: Colors.grey[600],
            size: 15.00,
          ),
        ),
      ),
    );
Widget buildOfferTag() => Positioned(
      bottom: 15,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
          ),
          color: offerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5.5),
          child: Text(
            " Up to ₹100 OFF ",
            style: GoogleFonts.lora(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );

Widget buildRecmdTags() => Row(
      children: [
        buildBAssuredTag(),
        buildComboTag(),
      ],
    );


    
Widget buildBAssuredTag() => Container(
      width: 115,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(150),
          topLeft: Radius.circular(150),
          bottomRight: Radius.circular(75.00),
          topRight: Radius.circular(75.00),
        ),
        color: assuredContainerColor.withOpacity(0.28),
      ),
      child: Row(
        children: [
          Container(
            width: 30.00,
            height: 30.00,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150), color: primaryColor),
            child: Center(
              child: Text(
                "B",
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 20.00,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  " Assured ",
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: assuredCTextColor,
                    ),
                  ),
                ),
                Icon(
                  Icons.check,
                  size: 17.50,
                  color: assuredCTextColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );

Widget buildComboTag() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.5),
        color: Colors.green[100],
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.5),
        child: Text(
          " Assured ",
          style: GoogleFonts.lora(
            textStyle: TextStyle(
              fontStyle: FontStyle.italic,
              color: assuredCTextColor,
            ),
          ),
        ),
      ),
    );
