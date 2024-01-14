import 'package:anirudhs_portfolio/screens/components/contact%20screen/contact_screen.dart';
import 'package:anirudhs_portfolio/screens/components/experience%20screen/experience_screen.dart';
import 'package:anirudhs_portfolio/screens/components/endscreen/closing_credits.dart';
import 'package:anirudhs_portfolio/screens/components/menubar/custom_menubar.dart';
import 'package:anirudhs_portfolio/screens/components/project%20screen/photo_cards.dart';
import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:anirudhs_portfolio/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/banner/banner_screen.dart';
import 'components/project screen/project_cards.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homeKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      mainChildren: [
        const HomeBanner(),
        const SizedBox(height: defaultPadding / 2),
        const ExperienceScreen(),
        const SizedBox(height: defaultPadding / 2),
        MyMenuBar(),
        // const SizedBox(height: defaultPadding / 2),
        // const PhotoScreen(),
        // const SizedBox(height: defaultPadding / 2),
        // const ProjectScreen(),
        const SizedBox(height: defaultPadding / 2),
        const ContactScreen(),
        const SizedBox(height: defaultPadding / 2),
        const ClosingCredits(),
      ],
    );
  }
}
