import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Widget homeAppBar(Size size) {
  return Container(
    padding: const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
    height: size.height * 0.3,
    width: size.width,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [AppColors.secondaryColor, AppColors.primaryColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 0.5),
                ),
                Text(
                  "Good Morning",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      letterSpacing: 0.5),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white38, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.notification,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white),
          child: TextField(
            style: GoogleFonts.poppins(),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Your Topic',
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  color: Colors.grey,
                )),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                suffixIcon: Icon(
                  Iconsax.microphone,
                  color: AppColors.primaryColor,
                ),
                prefixIcon: Icon(
                  Iconsax.search_favorite,
                  color: AppColors.primaryColor,
                )),
          ),
        )
      ],
    ),
  );
}
