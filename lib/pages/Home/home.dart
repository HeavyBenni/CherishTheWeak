import 'package:cherishtheweak/pages/Band/band.dart';
import 'package:cherishtheweak/pages/Discography/discography.dart';
import 'package:cherishtheweak/pages/Media/media.dart';
import 'package:cherishtheweak/pages/News/news.dart';
import 'package:cherishtheweak/pages/Tour/tour.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:cherishtheweak/widget/navbar/views.dart';
import 'package:flutter/material.dart';
import 'package:cherishtheweak/widget/footer.dart';
import 'package:cherishtheweak/widget/navbar/navbar.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  double opacity = 0.0; // Initial opacity value

  // DataKeys for Scroll Function on Click
  final homeKey = GlobalKey();
  final tourKey = GlobalKey();
  final bandKey = GlobalKey();
  final mediaKey = GlobalKey();
  final musicKey = GlobalKey();
  final newsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    // Start the fade-in animation when the widget is first built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        opacity = 1.0; // Set opacity to 1 for a full fade-in effect
      });
    });
  }

  tourbtn() {
    final RenderBox renderBox =
        tourKey.currentContext!.findRenderObject() as RenderBox;
    final screenHeight = MediaQuery.of(context).size.height;
    final alignment = screenHeight > 900 ? 0.2 : 0.5; // Adjust as needed
    Scrollable.ensureVisible(
      tourKey.currentContext!,
      alignment:
          alignment, // You can adjust this value to center the card on the screen.
      duration: const Duration(
          milliseconds: 500), // Optional duration for smooth scrolling.
    );
  }

  newsbtn() {
    final RenderBox renderBox =
        newsKey.currentContext!.findRenderObject() as RenderBox;
    final screenHeight = MediaQuery.of(context).size.height;
    final alignment = screenHeight > 900 ? 0.2 : 0.5; // Adjust as needed
    Scrollable.ensureVisible(
      newsKey.currentContext!,
      alignment:
          alignment, // You can adjust this value to center the card on the screen.
      duration: const Duration(
          milliseconds: 500), // Optional duration for smooth scrolling.
    );
  }

  bandbtn() {
    final RenderBox renderBox =
        bandKey.currentContext!.findRenderObject() as RenderBox;
    final screenHeight = MediaQuery.of(context).size.height;
    final alignment = screenHeight > 900 ? 0.2 : 0.5; // Adjust as needed

    Scrollable.ensureVisible(
      bandKey.currentContext!,
      alignment: alignment,
      duration: const Duration(
          milliseconds: 500), // Optional duration for smooth scrolling.
    );
  }

  mediabtn() {
    final RenderBox renderBox =
        mediaKey.currentContext!.findRenderObject() as RenderBox;
    final screenHeight = MediaQuery.of(context).size.height;
    final alignment = screenHeight > 900 ? 0.2 : 0.5; // Adjust as needed
    Scrollable.ensureVisible(
      mediaKey.currentContext!,
      alignment:
          alignment, // You can adjust this value to center the card on the screen.
      duration: const Duration(
          milliseconds: 500), // Optional duration for smooth scrolling.
    );
  }

  musicbtn() {
    final RenderBox renderBox =
        musicKey.currentContext!.findRenderObject() as RenderBox;
    final screenHeight = MediaQuery.of(context).size.height;
    final alignment = screenHeight > 900 ? 0.2 : 0.5; // Adjust as needed
    Scrollable.ensureVisible(
      musicKey.currentContext!,
      alignment:
          alignment, // You can adjust this value to center the card on the screen.
      duration: const Duration(
          milliseconds: 500), // Optional duration for smooth scrolling.
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Background Image with Gradient
                Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: const BlurHash(
                        hash:
                            'LLATi^xuNFNI.Tt6f5j[9FRjs:s.', // Replace with your BlurHash
                        imageFit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      bottom:
                          0, // Adjust this value to control the gradient's height
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              AppTheme.blackColor
                                  .withOpacity(0.9), // Semi-transparent black
                              Colors.transparent, // Fully transparent
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        'lib/assets/images/ctwgig.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                // Tour
                SafeArea(
                  child: Card(
                      margin: EdgeInsets.zero,
                      key: tourKey,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: const Tour(),
                      )),
                ),
                // Band
                Card(
                  key: bandKey,
                  margin: EdgeInsets.zero,
                  child: const Band(),
                ),
                // News
                Card(
                  key: newsKey,
                  margin: EdgeInsets.zero,
                  child: const News(),
                ),
                // Media
                Card(
                  key: mediaKey,
                  margin: EdgeInsets.zero,
                  child: const Media(),
                ),
                // Music
                Card(
                  key: musicKey,
                  margin: EdgeInsets.zero,
                  child: Discography(),
                ),

                const Footer(),

                // ... other content
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavBar(
              logoName: 'Cherish The Weak',
              tourbtn: tourbtn,
              newsbtn: newsbtn,
              bandbtn: bandbtn,
              mediabtn: mediabtn,
              musicbtn: musicbtn,
            ),
          ),
        ],
      ),
    );
  }
}
