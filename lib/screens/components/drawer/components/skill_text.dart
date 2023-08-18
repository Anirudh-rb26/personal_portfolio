import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';

class SkillText extends StatelessWidget {
  const SkillText({
    super.key,
    required this.skill,
  });

  final String skill;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(skill),
        ],
      ),
    );
  }
}
