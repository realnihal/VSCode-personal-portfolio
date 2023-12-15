import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // ignore: prefer_final_fields
  TextEditingController _textEditingController = TextEditingController();
  List<String> sentences = [
    "AI Enthusiast",
    "Code Tinkerer",
    "Donut Devourer",
    "Flutter Developer",
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  Future<void> _startTyping() async {
    while (true) {
      await _typeText(sentences[currentIndex]);
      await Future.delayed(const Duration(seconds: 1));
      await _backspaceText(sentences[currentIndex].length);
      currentIndex = (currentIndex + 1) % sentences.length;
    }
  }

  Future<void> _typeText(String text) async {
    _textEditingController.text = "";
    for (int i = 0; i <= text.length; i++) {
      setState(() {
        _textEditingController.text = text.substring(0, i);
      });
      await Future.delayed(const Duration(milliseconds: 80));
    }
  }

  Future<void> _backspaceText(int length) async {
    for (int i = length; i >= 0; i--) {
      setState(() {
        _textEditingController.text = sentences[currentIndex].substring(0, i);
      });
      await Future.delayed(const Duration(milliseconds: 40));
    }
  }

  @override
  @override
  @override
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              portraitImage(),
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  backgroundText(),
                  foregroundText(_textEditingController),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Container portraitImage() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          border: Border.all(
            color: Colors.grey.shade700,
            width: 5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 10),
              spreadRadius: 3,
              blurStyle: BlurStyle.normal,
            )
          ]),
      width: 350,
      height: 350,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: const Image(
          image: AssetImage('assets/images/portrait.jpg'),
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Column foregroundText(TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 55),
        const Text(
          overflow: TextOverflow.ellipsis,
          "Nihal Puram",
          style: TextStyle(
              fontSize: 37,
              fontFamily: 'Cascadia',
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 55),
        Text(
          overflow: TextOverflow.ellipsis,
          controller.text,
          style: const TextStyle(
              fontSize: 33,
              fontFamily: 'Cascadia',
              color: Color.fromRGBO(247, 215, 152, 0.8),
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }

  Widget backgroundText() {
    return SizedBox(
      width: 0.6.sw,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            "I BUILD",
            style: TextStyle(
                fontSize: 125,
                fontFamily: 'Cascadia',
                color: Color.fromRGBO(44, 47, 51, 0.8),
                fontWeight: FontWeight.w900),
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            "PRODUCTS",
            style: TextStyle(
                fontSize: 125,
                fontFamily: 'Cascadia',
                color: Color.fromRGBO(44, 47, 51, 0.8),
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
