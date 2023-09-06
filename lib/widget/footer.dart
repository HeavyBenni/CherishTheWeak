// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:cherishtheweak/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Adjusted height to fit more content.
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ' - Connect With Us - ',
            style: AppTheme.text3,
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialIconButton(
                  icon: FontAwesomeIcons.facebookF,
                  url: 'https://www.facebook.com/'),
              SizedBox(width: 20),
              _SocialIconButton(
                  icon: FontAwesomeIcons.twitter,
                  url: 'https://www.twitter.com/'),
              SizedBox(width: 20),
              _SocialIconButton(
                  icon: FontAwesomeIcons.instagram,
                  url: 'https://www.instagram.com/'),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Contact: benjamin.csaplar005@gmail.com | Phone: +47 968 17 835',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // Navigate to Terms and Conditions page
                },
                child: const Text('Terms & Conditions',
                    style: TextStyle(color: Colors.white)),
              ),
              const VerticalDivider(color: Colors.white, width: 5),
              TextButton(
                onPressed: () {
                  // Navigate to Privacy Policy page
                },
                child: const Text('Privacy Policy',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            '© 2023 Cherish The Weak. All Rights Reserved.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialIconButton extends StatelessWidget {
  final IconData icon;
  final String url;

  const _SocialIconButton({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Unable to launch URL')));
        }
      },
      child: Icon(
        icon,
        color: Colors.white,
        size: 24,
      ),
    );
  }
}
