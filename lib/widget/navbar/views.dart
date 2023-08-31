import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';

class NavDesktopView extends StatelessWidget {
  final String logoName;

  const NavDesktopView({super.key, required this.logoName});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Home(buttonText: 'Home'),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Tour(buttonText: 'Tour')),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Band(buttonText: 'Band')),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
    return const Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Home(buttonText: 'Home'),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Tour(buttonText: 'Tour')),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Band(buttonText: 'Band')),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Media(buttonText: 'Media')),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Music(buttonText: 'Music')),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Store(buttonText: 'Store')),
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
class Home extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const Home({
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
  final String buttonText; // Add a required field for the button text

  const Tour({
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

class Band extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const Band({
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

class Media extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const Media({
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

class Music extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const Music({
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

class Store extends StatelessWidget {
  final String buttonText; // Add a required field for the button text

  const Store({
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
