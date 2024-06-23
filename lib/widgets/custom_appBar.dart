import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

PreferredSizeWidget customAppBar({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Iconsax.backward),
    ),
    title: Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: Colors.black,
        letterSpacing: 0.5,
      ),
    ),
  );
}
