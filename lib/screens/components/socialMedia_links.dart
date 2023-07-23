import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding / 2),
      color: const Color(0xFF24242E),
      child: Row(
        children: [
          const Spacer(),
          // Github
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/check.svg"),
          ),
          // Leetcode
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/check.svg"),
          ),
          // linkedin
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/check.svg"),
          ),
          // Instagram
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/check.svg"),
          ),
          // Youtube
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/check.svg"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
