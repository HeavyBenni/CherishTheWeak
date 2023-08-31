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
              style: AppTheme.text2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Tour',
              style: AppTheme.text2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Band',
              style: AppTheme.text2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(logoName,
              style: AppTheme.text1)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Media',
              style: AppTheme.text2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Music',
              style: AppTheme.text2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Shop',
              style: AppTheme.text2,
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
              Text(logoName, style: Theme.of(context).textTheme.displayMedium),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Home',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Tour',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Band',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Media',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Music',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Shop',
                  style: Theme.of(context).textTheme.displayLarge,
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
