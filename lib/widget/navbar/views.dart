import 'package:cherishtheweak/pages/Store/store.dart';
import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class NavDesktopView extends StatefulWidget {
  final String logoName;
<<<<<<< HEAD
  Function tourScroll;
  var newsScroll;
  var bandScroll;
  var mediaScroll;
  var musicScroll;

  NavDesktopView({
    Key? key,
    required this.logoName,
    required this.tourScroll,
    required this.newsScroll,
    required this.bandScroll,
    required this.mediaScroll,
    required this.musicScroll,
  }) : super(key: key);

  @override
  State<NavDesktopView> createState() => _NavDesktopViewState();
}

class _NavDesktopViewState extends State<NavDesktopView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000), // Adjust duration as needed
    );

    // Create an opacity animation
    _opacityAnimation = Tween<double>(
      begin: 0.0, // Start with fully transparent
      end: 1.0, // End with fully opaque
    ).animate(_controller);

    // Start the animation
    _controller.forward();
  }
=======

  const NavDesktopView({super.key, required this.logoName});
>>>>>>> parent of a940da8 (Scroll Navigation 1)

  @override
  Widget build(BuildContext context) {
    return Row(
<<<<<<< HEAD
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _opacityAnimation,
          builder: (context, child) {
            return Opacity(
              opacity: _opacityAnimation.value, // Use the animation value
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: TourButton(
                  buttonText: 'Tour',
                  tourScroll: widget.tourScroll,
                ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _opacityAnimation,
          builder: (context, child) {
            return Opacity(
              opacity: _opacityAnimation.value,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: NewsButton(
                  buttonText: 'News',
                  localNewsScroll: widget.newsScroll,
                ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _opacityAnimation,
          builder: (context, child) {
            return Opacity(
              opacity: _opacityAnimation.value, // Use the animation value
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: BandButton(
                  buttonText: 'Band',
                  localbandButton: widget.bandScroll,
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(widget.logoName, style: AppTheme.bandName),
        ),
        Row(
          children: [
            AnimatedBuilder(
              animation: _opacityAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: _opacityAnimation.value, // Use the animation value
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: MediaButton(
                      buttonText: 'Media',
                      localMediaScroll: widget.mediaScroll,
                    ),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _opacityAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: _opacityAnimation.value, // Use the animation value
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: MusicButton(
                      buttonText: 'Music',
                      localMusicScroll: widget.musicScroll,
                    ),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _opacityAnimation,
              builder: (context, child) {
                return Opacity(
                  opacity: _opacityAnimation.value, // Use the animation value
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: StoreButton(buttonText: 'Store'),
                  ),
                );
              },
            ),
          ],
        )
      ],
    );
=======
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Home(buttonText: 'Home'),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Tour(buttonText: 'Tour')),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Band(buttonText: 'Band')),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(logoName, style: AppTheme.bandName)),
          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Media(buttonText: 'Media')),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Music(buttonText: 'Music')),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Store(buttonText: 'Store')),
            ],
          ),
        ]);
>>>>>>> parent of a940da8 (Scroll Navigation 1)
  }
}

class NavLaptopView extends StatelessWidget {
  final String logoName;
  var tourScroll;
  var newsScroll;
  var bandScroll;
  var mediaScroll;
  var musicScroll;

  NavLaptopView({
    super.key,
    required this.logoName,
    required this.tourScroll,
    required this.newsScroll,
    required this.bandScroll,
    required this.mediaScroll,
    required this.musicScroll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(logoName, style: AppTheme.bandName),
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: TourButton(
              buttonText: 'Tour',
              tourScroll: tourScroll,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
<<<<<<< HEAD
              child: NewsButton(
                buttonText: 'News',
                localNewsScroll: newsScroll,
              )),
=======
              child: Tour(buttonText: 'Tour')),
>>>>>>> parent of a940da8 (Scroll Navigation 1)
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: BandButton(
                buttonText: 'Band',
                localbandButton: bandScroll,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MediaButton(
                    buttonText: 'Media',
                    localMediaScroll: mediaScroll,
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MusicButton(
                    buttonText: 'Music',
                    localMusicScroll: musicScroll,
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: StoreButton(buttonText: 'Store')),
            ],
          ),
        ]),
      ],
    );
  }
}

class NavPhoneView extends StatelessWidget {
  final String logoName;

  const NavPhoneView({Key? key, required this.logoName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: AppTheme.color2,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Text(logoName, style: AppTheme.bandName),
          const SizedBox(width: 40), // Add space for the menu icon
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  var tourScroll;
  var newsScroll;
  var bandScroll;
  var mediaScroll;
  var musicScroll;

  CustomDrawer(
      {super.key,
      required this.tourScroll,
      required this.newsScroll,
      required this.bandScroll,
      required this.mediaScroll,
      required this.musicScroll});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: TourButton(
              buttonText: 'Tour',
              tourScroll: tourScroll,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
<<<<<<< HEAD
              child: NewsButton(
                buttonText: 'News',
                localNewsScroll: newsScroll,
              )),
=======
              child: Tour(buttonText: 'Tour')),
>>>>>>> parent of a940da8 (Scroll Navigation 1)
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: BandButton(
                buttonText: 'Band',
                localbandButton: bandScroll,
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: MediaButton(
                buttonText: 'Media',
                localMediaScroll: mediaScroll,
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: MusicButton(
                buttonText: 'Music',
                localMusicScroll: musicScroll,
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: StoreButton(buttonText: 'Store')),
          // ... other drawer items
        ],
      ),
    );
  }
}

// Custom NavBar Button Style
ButtonStyle navBarButtonStyle() {
  return ButtonStyle(
    overlayColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.hovered)) {
        return Colors.transparent; // Color when button is hovered
      }
      return Colors.transparent; // Default color
    }),
  );
}

// Custom NavBar Buttons
class TourButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text
  var tourScroll;

  TourButton({
    required this.buttonText, // Make the button text a required parameter
    required this.tourScroll,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        tourScroll();
      },
      style: navBarButtonStyle(),
      child: Text(
        buttonText, // Use the buttonText parameter here
        style: AppTheme.headLineLarge,
      ),
    );
  }
}

<<<<<<< HEAD
class NewsButton extends StatelessWidget {
  final String buttonText;
  var localNewsScroll;
  // Add a required field for the button text

  NewsButton({
    required this.buttonText,
    required this.localNewsScroll, // Make the button text a required parameter
=======
class Tour extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const Tour({
    required this.buttonText, // Make the button text a required parameter
>>>>>>> parent of a940da8 (Scroll Navigation 1)
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
<<<<<<< HEAD
        localNewsScroll();
=======
        // Your onPressed logic
>>>>>>> parent of a940da8 (Scroll Navigation 1)
      },
      style: navBarButtonStyle(),
      child: Text(
        buttonText, // Use the buttonText parameter here
        style: AppTheme.headLineLarge,
      ),
    );
  }
}

class BandButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text
  var localbandButton;

  BandButton({
    required this.buttonText, // Make the button text a required parameter
    required this.localbandButton,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        localbandButton();
      },
      style: navBarButtonStyle(),
      child: Text(
        buttonText, // Use the buttonText parameter here
        style: AppTheme.headLineLarge,
      ),
    );
  }
}

class MediaButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text
  var localMediaScroll;

  MediaButton({
    required this.buttonText, // Make the button text a required parameter
    required this.localMediaScroll,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        localMediaScroll();
      },
      style: navBarButtonStyle(),
      child: Text(
        buttonText, // Use the buttonText parameter here
        style: AppTheme.headLineLarge,
      ),
    );
  }
}

class MusicButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text
  var localMusicScroll;

  MusicButton({
    required this.buttonText, // Make the button text a required parameter
    required this.localMusicScroll,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        localMusicScroll();
      },
      style: navBarButtonStyle(),
      child: Text(
        buttonText, // Use the buttonText parameter here
        style: AppTheme.headLineLarge,
      ),
    );
  }
}

class StoreButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const StoreButton({
    required this.buttonText, // Make the button text a required parameter
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Your onPressed logic
      },
      style: navBarButtonStyle(),
      child: Text(
        buttonText, // Use the buttonText parameter here
        style: AppTheme.headLineLarge,
      ),
    );
  }
}
