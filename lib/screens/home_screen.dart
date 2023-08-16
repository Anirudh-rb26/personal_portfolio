import 'package:anirudhs_portfolio/screens/components/experience%20screen/experience_screen.dart';
import 'package:anirudhs_portfolio/screens/components/endscreen/closing_credits.dart';
import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:anirudhs_portfolio/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/banner/banner_screen.dart';
import 'components/project screen/project_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      mainChildren: [
        HomeBanner(),
        SizedBox(height: defaultPadding / 2),
        ExperienceScreen(),
        SizedBox(height: defaultPadding / 2),
        ProjectScreen(),
        SizedBox(height: defaultPadding / 2),
        ClosingCredits(),
      ],
    );
  }
}
