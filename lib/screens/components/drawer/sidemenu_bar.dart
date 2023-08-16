import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:anirudhs_portfolio/screens/components/drawer/components/personal_information.dart';
import 'package:anirudhs_portfolio/screens/components/drawer/components/skill_header.dart';
import 'package:anirudhs_portfolio/screens/components/drawer/components/skill_text.dart';
import 'package:anirudhs_portfolio/screens/components/contact%20screen/socialMedia_links.dart';
import 'package:flutter/material.dart';

import 'components/downloadResume_button.dart';
import 'components/my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            myInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    PersonalInformation(
                      title: "Education",
                      information: "B.Tech CSE",
                    ),
                    PersonalInformation(
                      title: "College",
                      information: "NIT Rourkela",
                    ),
                    PersonalInformation(
                      title: "Home",
                      information: "India, Kerala",
                    ),
                    Divider(),
                    SkillHeader(),
                    skillText(skill: "Flutter, Dart"),
                    skillText(skill: "Git, Github"),
                    skillText(skill: "C, C++"),
                    skillText(skill: "Firebase, Hive"),
                    skillText(skill: "Photography, Cinematographer"),
                    Divider(),
                    DownloadResumeButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
