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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Home',
              style: AppTheme.headLineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Tour',
              style: AppTheme.headLineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Band',
              style: AppTheme.headLineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(logoName,
              style: AppTheme.bandName)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Media',
              style: AppTheme.headLineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Music',
              style: AppTheme.headLineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Shop',
              style: AppTheme.headLineLarge,
                ),
              ),
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
          child:
              Text(logoName, style: AppTheme.bandName),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Home',
              style: AppTheme.headLineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Tour',
              style: AppTheme.headLineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Band',
              style: AppTheme.headLineLarge,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Media',
                  style: AppTheme.headLineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Music',
                  style: AppTheme.headLineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Shop',
                  style: AppTheme.headLineLarge,
                ),
              ),
            ],
          ),
        ]),
      ],
    );
  }
}

class NavPhoneView extends StatelessWidget {
  final String logoName;

  const NavPhoneView({super.key, required this.logoName});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Text(logoName)]);
  }
}
