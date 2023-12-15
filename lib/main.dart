import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nihal Puram - Visual Studio Code',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final TextEditingController _textEditingController = TextEditingController();
//   List<String> sentences = [
//     "Hello, World!",
//     "Flutter is awesome!",
//     "Keep cycling through sentences."
//   ];
//   int currentIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _startTyping();
//   }

//   @override
//   void dispose() {
//     _textEditingController.dispose();
//     super.dispose();
//   }

//   Future<void> _startTyping() async {
//     while (true) {
//       await _typeText(sentences[currentIndex]);
//       await Future.delayed(const Duration(seconds: 1));
//       await _backspaceText(sentences[currentIndex].length);
//       currentIndex = (currentIndex + 1) % sentences.length;
//     }
//   }

//   Future<void> _typeText(String text) async {
//     _textEditingController.text = "";
//     for (int i = 0; i <= text.length; i++) {
//       setState(() {
//         _textEditingController.text = text.substring(0, i);
//       });
//       await Future.delayed(const Duration(milliseconds: 80));
//     }
//   }

//   Future<void> _backspaceText(int length) async {
//     for (int i = length; i >= 0; i--) {
//       setState(() {
//         _textEditingController.text = sentences[currentIndex].substring(0, i);
//       });
//       await Future.delayed(const Duration(milliseconds: 40));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Text Typing Animation'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextField(
//             controller: _textEditingController,
//             decoration: const InputDecoration(border: OutlineInputBorder()),
//           ),
//         ),
//       ),
//     );
//   }
// }
