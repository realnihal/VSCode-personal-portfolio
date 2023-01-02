import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class WorkingTab extends StatelessWidget {
  const WorkingTab({
    Key? key,
    required this.text,
    required this.image,
    required this.size,
  }) : super(key: key);
  final String text;
  final AssetImage image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        color: AppColors().navBar,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 25.0, left: 8),
          child: Center(
            child: PageButton(
              text: text,
              image: image,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}

class ActiveWorkingTab extends StatelessWidget {
  const ActiveWorkingTab({
    Key? key,
    required this.text,
    required this.image,
    required this.size,
  }) : super(key: key);
  final String text;
  final AssetImage image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Column(
        children: [
          Container(
            color: Colors.orange,
            width: 0.08.sw,
            height: 1,
          ),
          Container(
            color: AppColors().primary,
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 10.0, right: 25.0, left: 8),
              child: Center(
                child: Column(
                  children: [
                    PageButton(
                      text: text,
                      image: image,
                      size: size,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageButton extends StatelessWidget {
  const PageButton({
    Key? key,
    required this.text,
    required this.image,
    required this.size,
  }) : super(key: key);
  final String text;
  final AssetImage image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 8.0),
            child: Image(
              image: image,
              width: size,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey.shade300, fontSize: 14),
          )
        ],
      ),
    );
  }
}
