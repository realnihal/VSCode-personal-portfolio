import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/bottomnavBar.dart';
import 'package:portfolio/widgets/mainBar.dart';

import 'widgets/topNavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors colors = AppColors();
    return Scaffold(
      backgroundColor: colors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [TopNavBar(), MainBar(), BottomNavBar()],
      ),
    );
  }
}
