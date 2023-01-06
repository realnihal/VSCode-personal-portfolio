import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 120),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Stack(
            children: [
              backgroundText(),
              foregroundText(),
            ],
          ),
        ),
      ],
    );
  }

  Column foregroundText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 55),
        Text(
          overflow: TextOverflow.ellipsis,
          "Nihal Puram",
          style: TextStyle(
              fontSize: 35,
              fontFamily: 'Cascadia',
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 55),
        Text(
          overflow: TextOverflow.ellipsis,
          "Full stack developer",
          style: TextStyle(
              fontSize: 35,
              fontFamily: 'Cascadia',
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }

  Column backgroundText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          overflow: TextOverflow.ellipsis,
          "I BUILD",
          style: TextStyle(
              fontSize: 125,
              fontFamily: 'Cascadia',
              color: Color.fromRGBO(44, 47, 51, 0.7),
              fontWeight: FontWeight.w900),
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          "PRODUCTS",
          style: TextStyle(
              fontSize: 125,
              fontFamily: 'Cascadia',
              color: Color.fromRGBO(44, 47, 51, 0.7),
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
