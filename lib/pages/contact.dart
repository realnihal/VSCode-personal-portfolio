import 'package:flutter/material.dart';
import 'package:portfolio/widgets/onHover.dart';
import 'package:url_launcher/link.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          line_1(),
          const SizedBox(height: 15),
          line_2(),
          const SizedBox(height: 15),
          link1(),
          const SizedBox(height: 15),
          link2(),
          const SizedBox(height: 15),
          link3(),
          const SizedBox(height: 15),
          link4(),
          const SizedBox(height: 15),
          link5(),
          const SizedBox(height: 15),
          link6(),
        ],
      ),
    );
  }

  Row link6() {
    return Row(
      children: [
        Text('    self',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        const Text('.linkedin',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.white)),
        Text(' = ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        Link(
          uri: Uri.parse("https://www.linkedin.com/in/nihal-puram/"),
          builder: (context, followLink) {
            return OnHover(
              builder: (isHovered) {
                Color color = isHovered ? Colors.blue : Colors.white;
                return InkWell(
                  onTap: followLink,
                  child: Text('nihal-puram',
                      style: TextStyle(
                          fontSize: 18, fontFamily: 'Cascadia', color: color)),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Row link5() {
    return Row(
      children: [
        Text('    self',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        const Text('.instagram',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.white)),
        Text(' = ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        Link(
          uri: Uri.parse("https://www.instagram.com/realnihal16/"),
          builder: (context, followLink) {
            return OnHover(
              builder: (isHovered) {
                Color color = isHovered ? Colors.blue : Colors.white;
                return InkWell(
                  onTap: followLink,
                  child: Text('realnihal16',
                      style: TextStyle(
                          fontSize: 18, fontFamily: 'Cascadia', color: color)),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Row link4() {
    return Row(
      children: [
        Text('    self',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        const Text('.twitter',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.white)),
        Text(' = ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        Link(
          uri: Uri.parse("https://twitter.com/PuramNihal"),
          builder: (context, followLink) {
            return OnHover(
              builder: (isHovered) {
                Color color = isHovered ? Colors.blue : Colors.white;
                return InkWell(
                  onTap: followLink,
                  child: Text('puramnihal',
                      style: TextStyle(
                          fontSize: 18, fontFamily: 'Cascadia', color: color)),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Row link3() {
    return Row(
      children: [
        Text('    self',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        const Text('.email',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.white)),
        Text(' = ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        Link(
          uri: Uri.parse("mailto:puramnihal@gmail.com"),
          builder: (context, followLink) {
            return OnHover(
              builder: (isHovered) {
                Color color = isHovered ? Colors.blue : Colors.white;
                return InkWell(
                  onTap: followLink,
                  child: Text('puramnihal@gmail.com',
                      style: TextStyle(
                          fontSize: 18, fontFamily: 'Cascadia', color: color)),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Row link2() {
    return Row(
      children: [
        Text('    self',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        const Text('.github',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.white)),
        Text(' = ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        Link(
          uri: Uri.parse("https://github.com/realnihal"),
          builder: (context, followLink) {
            return OnHover(
              builder: (isHovered) {
                Color color = isHovered ? Colors.blue : Colors.white;
                return InkWell(
                  onTap: followLink,
                  child: Text('realnihal',
                      style: TextStyle(
                          fontSize: 18, fontFamily: 'Cascadia', color: color)),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Row link1() {
    return Row(
      children: [
        Text('    self',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        const Text('.website',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.white)),
        Text(' = ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.red.shade400)),
        Link(
          uri: Uri.parse("https://www.nihalpuram.com/"),
          builder: (context, followLink) {
            return OnHover(
              builder: (isHovered) {
                Color color = isHovered ? Colors.blue : Colors.white;
                return InkWell(
                  onTap: followLink,
                  child: Text('nihalpuram.com',
                      style: TextStyle(
                          fontSize: 18, fontFamily: 'Cascadia', color: color)),
                );
              },
            );
          },
        ),
      ],
    );
  }

  Row line_2() {
    return Row(
      children: [
        const Text('  def ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.greenAccent)),
        Text('__init__',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.green.shade300)),
        const Text('(',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.yellow)),
        Text('self, name, phone, email',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.orange.shade800)),
        const Text('):',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.yellow)),
      ],
    );
  }

  Row line_1() {
    return Row(
      children: const [
        Text('Class ',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Cascadia',
                color: Colors.greenAccent)),
        Text('contactMe:',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Cascadia', color: Colors.lightBlue)),
      ],
    );
  }
}
