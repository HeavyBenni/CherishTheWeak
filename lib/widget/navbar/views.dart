// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class NavDesktopView extends StatefulWidget {
  final String logoName;
  var tourFunction;
  var newsFunction;
  var bandFucntion;
  var mediaFunction;
  var musicFunction;

  NavDesktopView(
      {Key? key,
      required this.logoName,
      required this.tourFunction,
      required this.newsFunction,
      required this.bandFucntion,
      required this.mediaFunction,
      required this.musicFunction})
      : super(key: key);

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
      duration: const Duration(milliseconds: 3000), // Adjust duration as needed
    );

    // Create an opacity animation
    _opacityAnimation = Tween<double>(
      begin: 0.0, // Start with fully transparent
      end: 1.0, // End with fully opaque
    ).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
                child: NewsButton(
                  buttonText: 'News',
                  newsFunction: widget.newsFunction,
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
                child: TourButton(
                  buttonText: 'Tour',
                  tourFunction: widget.tourFunction,
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
                    buttonText: 'Band', bandFunction: widget.bandFucntion),
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
                      mediaFunction: widget.mediaFunction,
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
                      musicFunction: widget.musicFunction,
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: StoreButton(buttonText: 'Store'),
                  ),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}

class NavLaptopView extends StatelessWidget {
  final String logoName;
  var tourFunction;
  var newsFunction;
  var bandFucntion;
  var mediaFunction;
  var musicFunction;

  NavLaptopView(
      {super.key,
      required this.logoName,
      required this.tourFunction,
      required this.newsFunction,
      required this.bandFucntion,
      required this.mediaFunction,
      required this.musicFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(logoName, style: AppTheme.bandName),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: TourButton(
                buttonText: 'Tour',
                tourFunction: tourFunction,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: NewsButton(
              buttonText: 'News',
              newsFunction: newsFunction,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: BandButton(
                buttonText: 'Band',
                bandFunction: bandFucntion,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: MediaButton(
                    buttonText: 'Media',
                    mediaFunction: mediaFunction,
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: MusicButton(
                    buttonText: 'Music',
                    musicFunction: musicFunction,
                  )),
              const Padding(
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
  var tourFunction;
  var newsFunction;
  var bandFucntion;
  var mediaFunction;
  var musicFunction;

  NavPhoneView(
      {Key? key,
      required this.logoName,
      required this.tourFunction,
      required this.newsFunction,
      required this.bandFucntion,
      required this.mediaFunction,
      required this.musicFunction})
      : super(key: key);

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
              color: AppTheme.beigeColor,
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
  final Function tourFunction;
  final Function newsFunction;
  final Function bandFunction;
  final Function mediaFunction;
  final Function musicFunction;

  CustomDrawer({
    required this.tourFunction,
    required this.newsFunction,
    required this.bandFunction,
    required this.mediaFunction,
    required this.musicFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 0, 0, 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: IconButton(
              color: AppTheme.beigeColor,
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          ListTile(
            title: Text(
              'Tour',
              style: AppTheme.headLineLarge,
            ),
            onTap: () {
              tourFunction();
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
          ListTile(
            title: Text(
              'News',
              style: AppTheme.headLineLarge,
            ),
            onTap: () {
              newsFunction();
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
          ListTile(
            title: Text(
              'Band',
              style: AppTheme.headLineLarge,
            ),
            onTap: () {
              bandFunction();
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
          ListTile(
            title: Text(
              'Media',
              style: AppTheme.headLineLarge,
            ),
            onTap: () {
              mediaFunction();
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
          ListTile(
            title: Text(
              'Music',
              style: AppTheme.headLineLarge,
            ),
            onTap: () {
              musicFunction();
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
          ListTile(
            title: Text(
              'Store',
              style: AppTheme.headLineLarge,
            ),
            onTap: () {
              // Handle Store button tap here
              Navigator.of(context).pop(); // Close the drawer
            },
          ),
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
class NewsButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text
  var newsFunction;

  NewsButton({
    required this.buttonText, // Make the button text a required parameter
    required this.newsFunction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        newsFunction();
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

class TourButton extends StatelessWidget {
  final String buttonText;
  var tourFunction;
  // Add a required field for the button text

  TourButton({
    required this.buttonText,
    required this.tourFunction, // Make the button text a required parameter
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        tourFunction();
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
  var bandFunction;

  BandButton({
    required this.buttonText, // Make the button text a required parameter
    required this.bandFunction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        bandFunction();
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

class MediaButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text
  var mediaFunction;

  MediaButton({
    required this.buttonText, // Make the button text a required parameter
    required this.mediaFunction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        mediaFunction();
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

class MusicButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text
  var musicFunction;

  MusicButton({
    required this.buttonText, // Make the button text a required parameter
    required this.musicFunction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        musicFunction();
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
