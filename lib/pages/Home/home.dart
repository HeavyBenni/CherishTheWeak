import 'package:cherishtheweak/pages/Band/band.dart';
import 'package:cherishtheweak/pages/Discography/discography.dart';
import 'package:cherishtheweak/pages/Media/media.dart';
import 'package:cherishtheweak/pages/News/news.dart';
import 'package:cherishtheweak/pages/Tour/tour.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:cherishtheweak/widget/navbar/views.dart';
import 'package:flutter/material.dart';
import 'package:cherishtheweak/widget/footer.dart';
import 'package:cherishtheweak/widget/header.dart';
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
  final tourKey = GlobalKey();
  final newsKey = GlobalKey();
  final bandKey = GlobalKey();
  final mediaKey = GlobalKey();
  final musicKey = GlobalKey();
  final storeKey = GlobalKey();

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

  tourScrollFunction() {
    Scrollable.ensureVisible(tourKey.currentContext!);
  }

  newsScrollFunction() {
    Scrollable.ensureVisible(newsKey.currentContext!);
  }

  bandScrollFunction() {
    Scrollable.ensureVisible(bandKey.currentContext!);
  }

  mediaScrollFunction() {
    Scrollable.ensureVisible(mediaKey.currentContext!);
  }

  musicScrollFunction() {
    Scrollable.ensureVisible(musicKey.currentContext!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        tourScroll: tourScrollFunction(),
        newsScroll: newsScrollFunction(),
        bandScroll: bandScrollFunction(),
        mediaScroll: mediaScrollFunction(),
        musicScroll: musicScrollFunction(),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Background Image with Gradient
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child:
                                BlurHash(hash: 'LLATi^xuNFNI.Tt6f5j[9FRjs:s.')),
                      ],
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Image.asset(
                          'lib/assets/images/ctwgig.jpg',
                          fit: BoxFit.cover,
                        )),
                    Positioned.fill(
                      bottom:
                          0, // Adjust this value to control the gradient's height
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black
                                  .withOpacity(0.9), // Semi-transparent black
                              Colors.transparent, // Fully transparent
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Tour
                Card(
                  margin: EdgeInsets.zero,
                  key: tourKey,
                  child: Tour(),
                ),
                // News
                Card(
                  margin: EdgeInsets.zero,
                  key: newsKey,
                  child: News(),
                ),
                // Band
                Card(
                  key: bandKey,
                  margin: EdgeInsets.zero,
                  child: Band(),
                ),
                // Media
                Card(
                  margin: EdgeInsets.zero,
                  key: mediaKey,
                  child: Media(),
                ),
                // Music
                Card(
                  margin: EdgeInsets.zero,
                  key: musicKey,
                  child: Discography(),
                ),
                // Store
                Card(
                  margin: EdgeInsets.zero,
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
              tourButton: tourScrollFunction(),
              newsButton: newsScrollFunction(),
              bandButton: bandScrollFunction(),
              mediaButton: mediaScrollFunction(),
              musicButton: musicScrollFunction(),
            ),
          ),
        ],
      ),
    );
  }
}
