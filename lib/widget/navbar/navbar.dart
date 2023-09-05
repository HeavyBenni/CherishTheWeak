import 'package:cherishtheweak/pages/Home/home.dart';
import 'package:cherishtheweak/widget/navbar/views.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  var tourbtn;
  final String logoName;
  NavBar({
    super.key,
    required this.logoName,
    required this.tourbtn,
  });

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
                        return NavDesktopView(
                          shouldFadeIn: true,
                          logoName: 'Cherish The Weak',
                          tourFunction: tourbtn,
                        );
                      } else if (constraints.maxWidth > 700) {
                        return const Center(
                          child: NavLaptopView(
                            logoName: 'Cherish The Weak',
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
