import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:anirudhs_portfolio/constants.dart';
import 'package:anirudhs_portfolio/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/bannerScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      mainChildren: [
        HomeBanner(),
      ],
    );
  }
}
