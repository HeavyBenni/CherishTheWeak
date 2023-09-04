import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class NavDesktopView extends StatelessWidget {
  final String logoName;
  var tourFunction;

  NavDesktopView(
      {super.key, required this.logoName, required this.tourFunction});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: HomeButton(buttonText: 'Home'),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Tour(
                buttonText: 'Tour',
                tourF: tourFunction,
              )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: BandButton(buttonText: 'Band')),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(logoName, style: AppTheme.bandName)),
          const Row(
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
        ]);
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
              child: Tour(
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
            icon: const Icon(Icons.menu),
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
              child: Tour(
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

class Tour extends StatelessWidget {
  final String buttonText;
  var tourF;
  // Add a required field for the button text

  Tour({
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
