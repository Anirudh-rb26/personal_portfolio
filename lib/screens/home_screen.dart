import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:anirudhs_portfolio/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/banner/bannerScreen.dart';
import 'components/project screen/projectcards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      mainChildren: [
        HomeBanner(),
        SizedBox(height: defaultPadding / 2),
        ProjectScreen(),
      ],
    );
  }
}
