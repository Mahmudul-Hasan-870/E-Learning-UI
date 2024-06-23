import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/custom_appBar.dart'; // Correct the import path if needed
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:video_player/video_player.dart';

class LearningPage extends StatefulWidget {
  final String categoryName;

  const LearningPage({super.key, required this.categoryName});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(context: context, title: widget.categoryName),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 5,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: _controller.value.isInitialized
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          ),
                        )
                      : Center(
                          child: Text(
                            "Please wait...",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Career with Flutter',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Created By',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Mahmudul Hasan',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: AppColors.primaryColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Iconsax.star,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.8',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black54),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Iconsax.clock,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '72 Hours',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    Text(
                      '\$21.00',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                          fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading:
                        const Icon(Iconsax.play_circle, color: Colors.purple),
                    title: Text('Introduction',
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    subtitle:
                        Text('2 Min 18 Sec', style: GoogleFonts.poppins()),
                    trailing:
                        const Icon(Iconsax.play_circle, color: Colors.green),
                  ),
                  ListTile(
                    leading:
                        const Icon(Iconsax.play_circle, color: Colors.purple),
                    title: Text('What is UI UX design?',
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    subtitle:
                        Text('18 Min 46 Sec', style: GoogleFonts.poppins()),
                    trailing: const Icon(Iconsax.lock, color: Colors.orange),
                  ),
                  ListTile(
                    leading:
                        const Icon(Iconsax.play_circle, color: Colors.purple),
                    title: Text('How to make wireframe',
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    subtitle:
                        Text('20 Min 58 Sec', style: GoogleFonts.poppins()),
                    trailing: const Icon(Iconsax.lock, color: Colors.orange),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.7,
                  child: ElevatedButton(
                    onPressed: () {
                      // Define what happens when the button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                    ),
                    child: Text(
                      'Enroll Now',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: AppColors.primaryColor,
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  shape: const CircleBorder(),
                  child: Icon(
                    _controller.value.isPlaying ? Iconsax.pause : Iconsax.play,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
