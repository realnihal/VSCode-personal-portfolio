import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/pages/about.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/pages/mainpage.dart';
import 'package:portfolio/pages/projects.dart';

class MainBar extends StatefulWidget {
  const MainBar({super.key});

  @override
  State<MainBar> createState() => _MainBarState();
}

class _MainBarState extends State<MainBar> {
  bool listview = true;
  int selectedScreen = 0;
  List<Widget> pages = [
    const MainPage(),
    const AboutPage(),
    const ContactPage(),
    const ProjectsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SizedBox(
            width: 0.04.sw,
            child: Column(),
          ),
          explorerBar(),
          Column(
            children: [
              workingNavigationBar(),
              Expanded(child: pages[selectedScreen]),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox workingNavigationBar() {
    return SizedBox(
      width: 0.81.sw,
      child: Column(
        children: [
          Row(
            children: [
              (selectedScreen == 0)
                  ? const ActiveWorkingTab(
                      text: "main.dart",
                      image: AssetImage("assets/images/dartIcon.webp"),
                      size: 14,
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedScreen = 0;
                        });
                      },
                      child: const WorkingTab(
                        text: "main.dart",
                        image: AssetImage("assets/images/dartIcon.webp"),
                        size: 14,
                      ),
                    ),
              Container(width: 1.5, color: AppColors().primary),
              (selectedScreen == 1)
                  ? const ActiveWorkingTab(
                      text: "about.swift",
                      image: AssetImage("assets/images/swiftIcon.png"),
                      size: 14,
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedScreen = 1;
                        });
                      },
                      child: const WorkingTab(
                        text: "about.swift",
                        image: AssetImage("assets/images/swiftIcon.png"),
                        size: 14,
                      ),
                    ),
              Container(width: 1.5, color: AppColors().primary),
              (selectedScreen == 2)
                  ? const ActiveWorkingTab(
                      text: "contact.py",
                      image: AssetImage("assets/images/pythonIcon.png"),
                      size: 14,
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedScreen = 2;
                        });
                      },
                      child: const WorkingTab(
                        text: "contact.py",
                        image: AssetImage("assets/images/pythonIcon.png"),
                        size: 14,
                      ),
                    ),
              Container(width: 1.5, color: AppColors().primary),
              (selectedScreen == 3)
                  ? const ActiveWorkingTab(
                      text: "projects.git",
                      image: AssetImage("assets/images/gitIcon.png"),
                      size: 14,
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedScreen = 3;
                        });
                      },
                      child: const WorkingTab(
                        text: "projects.git",
                        image: AssetImage("assets/images/gitIcon.png"),
                        size: 14,
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }

  Container explorerBar() {
    return Container(
      width: 0.15.sw,
      color: AppColors().navBar,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 6, bottom: 15),
            child: MouseRegion(
              cursor: SystemMouseCursors.text,
              child: Text(
                "EXPLORER",
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w100,
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  listview = !listview;
                });
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: listview
                        ? Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey.shade500,
                            size: 20,
                          )
                        : Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Colors.grey.shade500,
                            size: 20,
                          ),
                  ),
                  Text(
                    "PORTFOLIO",
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      letterSpacing: 1.5,
                    ),
                  )
                ],
              ),
            ),
          ),
          listview ? pagesList() : Container()
        ],
      ),
    );
  }

  Column pagesList() {
    return Column(
      children: const [
        ListPageButton(
          text: "main.dart",
          image: AssetImage("assets/images/dartIcon.webp"),
          size: 14,
        ),
        ListPageButton(
          text: "about.swift",
          image: AssetImage("assets/images/swiftIcon.png"),
          size: 14,
        ),
        ListPageButton(
          text: "contact.py",
          image: AssetImage("assets/images/pythonIcon.png"),
          size: 14,
        ),
        ListPageButton(
          text: "projects.git",
          image: AssetImage("assets/images/gitIcon.png"),
          size: 14,
        ),
      ],
    );
  }
}

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

class ListPageButton extends StatelessWidget {
  const ListPageButton({
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
