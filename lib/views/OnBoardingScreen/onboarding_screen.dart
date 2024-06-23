import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/views/NavBarView/navbar_view.dart';
import 'package:e_learning_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50),
            // Add some height here to lower the image
            Image.asset("assets/images/education.png"),
            Container(
              height: size.height * 0.4,
              width: size.width * 0.9,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Discover your next skill\nLearn anything want!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    "Discover the things your want to\nlearn and grow with them",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: Colors.black54),
                  ),
                  Button(
                    title: 'Get Started',
                    width: size.width * 0.4,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Navbarview()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
