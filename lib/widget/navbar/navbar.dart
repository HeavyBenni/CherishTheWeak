import 'package:cherishtheweak/widget/navbar/views.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final String logoName;

  const NavBar({super.key, required this.logoName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 1000) {
                  return const NavDesktopView(
                    logoName: 'Cherish The Weak',
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
