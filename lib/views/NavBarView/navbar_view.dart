import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../FeaturedScreen/featured_screen.dart';
import '../LearningScreen/learning_screen.dart';
import '../SettingsScreen/settings_screen.dart';
import '../WhitelistScreen/whitelist_screen.dart';

class Navbarview extends StatefulWidget {
  const Navbarview({super.key});

  @override
  State<Navbarview> createState() => _NavbarviewState();
}

class _NavbarviewState extends State<Navbarview> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const FeaturedPage(),
    const LearningPage(categoryName: 'Default'),
    WhitelistPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: AppColors.primaryColor,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.poppins(),
        unselectedLabelStyle: GoogleFonts.poppins(),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.star),
            label: 'Featured',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.play),
            label: 'Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart),
            label: 'Whitelist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.setting),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
