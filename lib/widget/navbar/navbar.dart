import 'package:cherishtheweak/widget/navbar/views.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
<<<<<<< HEAD
  var tourButton;
  var newsButton;
  var bandButton;
  var mediaButton;
  var musicButton;
  final String logoName;
  NavBar({
    super.key,
    required this.logoName,
    required this.tourButton,
    required this.newsButton,
    required this.bandButton,
    required this.mediaButton,
    required this.musicButton,
  });
=======
  final String logoName;

  const NavBar({super.key, required this.logoName});
>>>>>>> parent of a940da8 (Scroll Navigation 1)

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
    
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Row(
              children: [
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 1000) {
                        return const NavDesktopView(
                          logoName: 'Cherish The Weak',
<<<<<<< HEAD
                          tourScroll: tourButton,
                          newsScroll: newsButton,
                          bandScroll: bandButton,
                          mediaScroll: mediaButton,
                          musicScroll: musicButton,
=======
>>>>>>> parent of a940da8 (Scroll Navigation 1)
                        );
                      } else if (constraints.maxWidth > 700) {
                        return Center(
                          child: NavLaptopView(
                            logoName: 'Cherish The Weak',
                            tourScroll: tourButton,
                            newsScroll: newsButton,
                            bandScroll: bandButton,
                            mediaScroll: mediaButton,
                            musicScroll: musicButton,
                          ),
                        );
                      } else {
                        return const Center(
                          child: NavPhoneView(
                            logoName: 'Cherish The Weak',
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
