import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/colors.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    return Container(
      height: 28,
      color: colors.navBar,
      width: 1.sw,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftAlignedElements(),
          centerAlignedElements(),
          rightAlignedElement(),
        ],
      ),
    );
  }

  SizedBox centerAlignedElements() {
    return SizedBox(
      width: 0.2.sw,
      child: const Center(
        child: MouseRegion(
          cursor: SystemMouseCursors.text,
          child: Text(
            "Nihal Puram - Visual Studio Code",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  Widget rightAlignedElement() {
    return SizedBox(
      width: 0.4.sw,
      child: Padding(
        padding: const EdgeInsets.only(right: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            NavBarCircularButtons(itemcolor: Colors.yellow),
            NavBarCircularButtons(itemcolor: Colors.green),
            NavBarCircularButtons(itemcolor: Colors.red),
          ],
        ),
      ),
    );
  }

  Widget leftAlignedElements() {
    return SizedBox(
      width: 0.4.sw,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Center(
                child:
                    Image(image: AssetImage('assets/images/vscodelogo.png'))),
          ),
          NavBarTextItem(text: 'File'),
          NavBarTextItem(text: 'Edit'),
          NavBarTextItem(text: 'View'),
          NavBarTextItem(text: 'Go'),
          NavBarTextItem(text: 'Run'),
          NavBarTextItem(text: 'Terminal'),
          NavBarTextItem(text: 'Help'),
        ],
      ),
    );
  }
}

class NavBarCircularButtons extends StatelessWidget {
  const NavBarCircularButtons({
    Key? key,
    required this.itemcolor,
  }) : super(key: key);
  final Color itemcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 13,
          height: 13,
          decoration: BoxDecoration(
              color: itemcolor,
              borderRadius: const BorderRadius.all(Radius.circular(90))),
        ),
      ),
    );
  }
}

class NavBarTextItem extends StatelessWidget {
  const NavBarTextItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 9.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
