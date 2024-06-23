import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatefulWidget {
  final String title;
  final double? width;
  final void Function()? onTap;

  const Button({
    super.key,
    required this.title,
    this.width,
    this.onTap,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Corrected MediaQuery usage
    return InkWell(
      onTap: widget.onTap, // Corrected to widget.onTap
      child: Container(
        width: widget.width ?? size.width * 0.9,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.title,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
