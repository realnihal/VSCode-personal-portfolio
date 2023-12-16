import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/pages/about.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/pages/mainpage.dart';
import 'package:portfolio/pages/projects.dart';

import 'onHover.dart';
import 'workingTabs.dart';

class MainBar extends StatefulWidget {
  const MainBar({super.key});

  @override
  State<MainBar> createState() => _MainBarState();
}

class _MainBarState extends State<MainBar> {
  bool listview = true;
  bool bloglistview = true;
  int selectedScreen = 0;
  List<Widget> pages = [
    const ProjectsPage(),
    const MainPage(),
    const AboutPage(),
    const ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          sideBar(),
          explorerBar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              workingNavigationBar(),
              pages[selectedScreen],
            ],
          ),
        ],
      ),
    );
  }

  SizedBox sideBar() {
    return SizedBox(
      width: 0.04.sw,
      child: Column(
        children: [
          (selectedScreen == 0)
              ? const ActiveSideBarIconWidget(
                  icon: FontAwesomeIcons.code,
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedScreen = 0;
                    });
                  },
                  child: const SideBarIconWidget(
                    icon: FontAwesomeIcons.code,
                  ),
                ),
          (selectedScreen == 1)
              ? const ActiveSideBarIconWidget(
                  icon: FontAwesomeIcons.codeBranch,
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedScreen = 1;
                    });
                  },
                  child: const SideBarIconWidget(
                    icon: FontAwesomeIcons.codeBranch,
                  ),
                ),
          (selectedScreen == 2)
              ? const ActiveSideBarIconWidget(
                  icon: FontAwesomeIcons.phone,
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedScreen = 2;
                    });
                  },
                  child: const SideBarIconWidget(
                    icon: FontAwesomeIcons.phone,
                  ),
                ),
          (selectedScreen == 3)
              ? const ActiveSideBarIconWidget(
                  icon: FontAwesomeIcons.bookBookmark,
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedScreen = 3;
                    });
                  },
                  child: const SideBarIconWidget(
                    icon: FontAwesomeIcons.bookBookmark,
                  ),
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
              Container(width: 1.5, color: AppColors().primary),
              Expanded(
                child: Container(
                  color: AppColors().navBar,
                  height: 34,
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
          PortfolioDropDown(),
          listview ? portfolioPagesList() : Container(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  bloglistview = !bloglistview;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
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
                      "MY BLOGS",
                      style: TextStyle(
                        fontFamily: "Cascadia",
                        color: Colors.grey.shade300,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        height: 20 / 13,
                        letterSpacing: 1.5,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  MouseRegion PortfolioDropDown() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          setState(() {
            listview = !listview;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
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
                  fontFamily: "Cascadia",
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  height: 20 / 13,
                  letterSpacing: 1.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column portfolioPagesList() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedScreen = 0;
            });
          },
          child: const ListPageButton(
            text: "main.dart",
            image: AssetImage("assets/images/dartIcon.webp"),
            size: 14,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedScreen = 1;
            });
          },
          child: const ListPageButton(
            text: "about.swift",
            image: AssetImage("assets/images/swiftIcon.png"),
            size: 14,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedScreen = 2;
            });
          },
          child: const ListPageButton(
            text: "contact.py",
            image: AssetImage("assets/images/pythonIcon.png"),
            size: 14,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedScreen = 3;
            });
          },
          child: const ListPageButton(
            text: "projects.git",
            image: AssetImage("assets/images/gitIcon.png"),
            size: 14,
          ),
        ),
      ],
    );
  }
}

class SideBarIconWidget extends StatelessWidget {
  const SideBarIconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: (isHovered) {
        final color = isHovered ? AppColors().navBar : AppColors().primary;
        final iconcolor =
            isHovered ? Colors.grey.shade400 : Colors.grey.shade700;
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              Container(
                color: color,
                width: 1,
                height: 38,
              ),
              Flexible(
                child: Container(
                  color: color,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 1),
                    child: Icon(
                      icon,
                      color: iconcolor,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ActiveSideBarIconWidget extends StatelessWidget {
  const ActiveSideBarIconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: (isHovered) {
        final color = isHovered ? AppColors().navBar : AppColors().primary;
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              Container(
                color: Colors.orange,
                width: 1,
                height: 38,
              ),
              Flexible(
                child: Container(
                  color: color,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 1),
                    child: Icon(
                      icon,
                      color: Colors.grey.shade400,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ListPageButton extends StatefulWidget {
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
  State<ListPageButton> createState() => _ListPageButtonState();
}

class _ListPageButtonState extends State<ListPageButton> {
  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: ((isHovered) {
        final color = isHovered ? AppColors().primary : AppColors().navBar;
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            color: color,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 8.0),
                      child: Image(
                        image: widget.image,
                        width: widget.size,
                      ),
                    ),
                    Text(
                      widget.text,
                      style:
                          TextStyle(color: Colors.grey.shade300, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
