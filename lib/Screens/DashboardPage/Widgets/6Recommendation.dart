import 'package:bojana/Declarations/Global/GlobalDeclarations.dart';
import 'package:bojana/Repository/Dashboard/RestaurantRepo.dart';
import 'package:bojana/Declarations/DashboardDeclr.dart';
import 'package:bojana/GeneralWidgets/GWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Widget buildRecommendationCard(BuildContext context) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRecommendedText(),
          heightSpacer(10.00),
          for (var i = 0; i < 3; i++)
            Container(
              child: Column(
                children: [
                  buildRecmdDetailedCard(context, i),
                  heightSpacer(10.00),
                ],
              ),
            ),
        ],
      ),
    );

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

Widget buildRecmdDetailedCard(BuildContext context, int index) => Container(
      width: MediaQuery.of(context).size.width,
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
                buildImage(context, index),
                buildDeliveryTime(index),
                buildFavIcon(index),
                buildOfferTag(index),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.00, vertical: 10.00),
              child: Container(
                child: Column(
                  children: [
                    buildRestaurantDetails(index, context),
                    buildRecmdTags(index),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget buildImage(BuildContext context, int index) => Container(
      width: MediaQuery.of(context).size.width,
      height: 225 / 1.75,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.00),
          topRight: Radius.circular(10.00),
        ),
        child: Image.asset(
          restaurantDetails[index].imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );

Widget buildDeliveryTime(int index) => Positioned(
      top: 15,
      left: 20,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.5), color: Colors.grey[350]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.5, horizontal: 1.5),
          child: Text(
            " ${restaurantDetails[index].deliveryTime} mins ",
            style: GoogleFonts.lora(
              textStyle: TextStyle(),
            ),
          ),
        ),
      ),
    );
Widget buildFavIcon(int index) => Positioned(
      top: 15,
      right: 20,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: restaurantDetails[index].isFavourite
                ? Colors.pink[100]
                : Colors.grey[350]),
        child: Padding(
          padding: const EdgeInsets.all(5.5),
          child: Icon(
            restaurantDetails[index].isFavourite
                ? Icons.favorite
                : Icons.favorite_border,
            color: restaurantDetails[index].isFavourite
                ? Colors.pink
                : Colors.grey[600],
            size: 15.00,
          ),
        ),
      ),
    );

Widget buildOfferTag(int index) => Positioned(
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
            " Up to ₹${restaurantDetails[index].offers} OFF ",
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

Widget buildRestaurantDetails(int index, BuildContext context) => Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                restaurantDetails[index].restaurantName,
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 20.00,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: primaryColor,
                    size: 17.5,
                  ),
                  RichText(
                    text: TextSpan(
                      text: " ${(restaurantDetails[index].ratings)}",
                      style: GoogleFonts.lora(
                        textStyle: TextStyle(
                          fontSize: 15.00,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '/5',
                          style: GoogleFonts.lora(
                            textStyle: TextStyle(
                              fontSize: 10.50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          heightSpacer(3.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                restaurantDetails[index].items,
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 15.00,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
              Text(
                "Starts at  ₹${restaurantDetails[index].startsAt}",
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 14.00,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          heightSpacer(3.5),
          Divider(
            thickness: 0.25,
            color: Colors.grey,
          ),
        ],
      ),
    );

Widget buildRecmdTags(int index) => Row(
      children: [
        if (restaurantDetails[index].isAssured) buildBAssuredTag(),
        for (var i = 0; i < 4; i++)
          if (restaurantDetails[index].tags[i] == 1)
            buildTag(tagLists[i], containerColor[i], txtColor[i]),
      ],
    );

Widget buildBAssuredTag() => Container(
      width: 90,
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
            width: 20.00,
            height: 20.00,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150), color: primaryColor),
            child: Center(
              child: Text(
                "B",
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 15.00,
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
                      fontSize: 12.00,
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

Widget buildTag(String tag, Color tagCntColor, Color tagTxtColor) => Padding(
      padding: const EdgeInsets.only(left: 2.5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: tagCntColor.withOpacity(0.45),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            tag,
            style: GoogleFonts.lora(
              textStyle: TextStyle(
                fontSize: 12.00,
                fontStyle: FontStyle.italic,
                color: tagTxtColor,
              ),
            ),
          ),
        ),
      ),
    );
