// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    return Column(
      children: [
        Container(height: 0.5, color: Colors.black38),
        Container(
          height: 28,
          color: colors.navBar,
          width: 1.sw,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leftAlignedElements(),
              rightAlignedElements(),
            ],
          ),
        )
      ],
    );
  }

  Row rightAlignedElements() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 4, top: 9, bottom: 9),
          child: Image(
            opacity: AlwaysStoppedAnimation<double>(0.75),
            image: AssetImage("assets/images/FlutterLogo.png"),
          ),
        ),
        const BottomNavItem(
          text: "Flutter",
        ),
        const BottomNavItem(
          text: "UTF-8",
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.notifications_none_outlined,
              color: Colors.grey.shade400, size: 15),
        ),
      ],
    );
  }

  Row leftAlignedElements() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 1, bottom: 1),
          child: Image(
            opacity: AlwaysStoppedAnimation<double>(0.75),
            image: AssetImage("assets/images/sourceControlIcon.png"),
          ),
        ),
        BottomNavItem(text: "main")
        // TODO: Warnings Menu
      ],
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey.shade400,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    );
  }
}
