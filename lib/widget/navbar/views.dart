import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class NavDesktopView extends StatefulWidget {
  final String logoName;
  var tourFunction;

  NavDesktopView({
    Key? key,
    required this.logoName,
    required this.tourFunction,
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
      duration: Duration(milliseconds: 3000), // Adjust duration as needed
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
                child: HomeButton(buttonText: 'Home'),
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
                  tourF: widget.tourFunction,
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
                child: HomeButton(buttonText: 'Band'),
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
                    child: HomeButton(buttonText: 'Media'),
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
                    child: HomeButton(buttonText: 'Music'),
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
                    child: HomeButton(buttonText: 'Store'),
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

  const NavLaptopView({super.key, required this.logoName});

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
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: HomeButton(buttonText: 'Home'),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: TourButton(
                buttonText: 'Tour',
                tourF: null,
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: BandButton(buttonText: 'Band')),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MediaButton(buttonText: 'Media')),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: MusicButton(buttonText: 'Music')),
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
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: HomeButton(buttonText: 'Home'),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: TourButton(
                buttonText: 'Tour',
                tourF: null,
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: BandButton(buttonText: 'Band')),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: MediaButton(buttonText: 'Media')),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: MusicButton(buttonText: 'Music')),
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
class HomeButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const HomeButton({
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

class TourButton extends StatelessWidget {
  final String buttonText;
  var tourF;
  // Add a required field for the button text

  TourButton({
    required this.buttonText,
    required this.tourF, // Make the button text a required parameter
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        tourF();
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

  const BandButton({
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

class MediaButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const MediaButton({
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

class MusicButton extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const MusicButton({
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
