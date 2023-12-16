import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/colors.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    return Column(
      children: [
        Container(
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
        ),
        Container(height: 0.5, color: Colors.black38)
      ],
    );
  }

  SizedBox centerAlignedElements() {
    return SizedBox(
      width: 0.2.sw,
      child: const Center(
        child: MouseRegion(
          cursor: SystemMouseCursors.text,
          child: Text(
            "Nihal Puram - VSCode",
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
      child: const Padding(
        padding: EdgeInsets.only(right: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            NavBarCircularButtons(
                itemcolor: Colors.yellow,
                icon: Icon(
                  Icons.search,
                  size: 10,
                )),
            NavBarCircularButtons(
                itemcolor: Colors.green,
                icon: Icon(
                  Icons.code,
                  size: 10,
                )),
            NavBarCircularButtons(
                itemcolor: Colors.red,
                icon: Icon(
                  Icons.close,
                  weight: 100,
                  size: 12,
                )),
          ],
        ),
      ),
    );
  }

  Widget leftAlignedElements() {
    return SizedBox(
      width: 0.4.sw,
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Center(
                child:
                    Image(image: AssetImage('assets/images/vscodelogo.png'))),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
              child: Center(
                child: Text(
                  "Code",
                  style: TextStyle(
                    fontFamily: "Cascadia",
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
          NavBarTextItem(text: 'File'),
          NavBarTextItem(text: 'Edit'),
          NavBarTextItem(text: 'View'),
          // NavBarTextItem(text: 'Go'),
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
    required this.icon,
  }) : super(key: key);
  final Color itemcolor;
  final Icon icon;

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
          child: icon,
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
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
