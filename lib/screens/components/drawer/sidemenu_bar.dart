import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:anirudhs_portfolio/screens/components/drawer/components/personal_information.dart';
import 'package:anirudhs_portfolio/screens/components/drawer/components/skill_header.dart';
import 'package:flutter/material.dart';

import 'components/download_resume_button.dart';
import 'components/my_info.dart';
import 'components/skill_text.dart';

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
            MyInfo(),
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
                    SkillText(skill: "Flutter, Dart"),
                    SkillText(skill: "Git, Github"),
                    SkillText(skill: "C, C++"),
                    SkillText(skill: "Firebase, Hive"),
                    SkillText(skill: "Photography, Cinematographer"),
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
