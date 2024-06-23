import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../LearningScreen/learning_screen.dart'; // Adjusted import path

class FeaturedPage extends StatelessWidget {
  const FeaturedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<Map> categories = [
      {
        'icon': 'assets/images/chatting.png',
        'name': 'Accounting',
        'total_courses': 20,
      },
      {
        'icon': 'assets/images/chatting.png',
        'name': 'Photography',
        'total_courses': 29,
      },
      {
        'icon': 'assets/images/chatting.png',
        'name': 'Design',
        'total_courses': 100,
      },
      {
        'icon': 'assets/images/chatting.png',
        'name': 'Marketing',
        'total_courses': 127,
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          homeAppBar(size),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 15.0, left: 15.0, top: 10.0, bottom: 5.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore Categories",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        Text(
                          "See All",
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    GridView.builder(
                      itemCount: categories.length,
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        final data = categories[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LearningPage(
                                  categoryName: data['name'],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  data['icon'],
                                  width: 100,
                                  height: 100,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  data['name'],
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  '${data['total_courses']} Courses',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
