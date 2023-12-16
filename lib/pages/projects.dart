import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/onHover.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        toolBar(),
        const SizedBox(height: 10),
        titleCard("makemore: part 5"),
      ],
    );
  }

  Padding titleCard(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              OnHover(builder: (isHovered) {
                final color = isHovered ? Colors.white : Colors.grey.shade700;
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(
                    Icons.expand_more,
                    color: color,
                  ),
                );
              }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              // max width available
              width: 0.7.sw,
              child: Text(
                title,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row toolBar() {
    return Row(
      children: [
        projectToolineCard(Icons.add, "Code"),
        projectToolineCard(Icons.add, "Markdown"),
        Container(
          width: 0.5,
          height: 15,
          color: Colors.white,
        ),
        projectToolineCard(Icons.play_arrow_outlined, "Run All"),
        projectToolineCard(Icons.replay, "Restart"),
        projectToolineCard(Icons.clear_all, "Clear All"),
        projectToolineCard(Icons.more_horiz, ""),
      ],
    );
  }

  Widget projectToolineCard(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
            weight: 1,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 14,
                letterSpacing: 1,
                fontFamily: 'Cascadia',
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
