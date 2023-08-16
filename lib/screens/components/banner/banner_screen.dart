import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:anirudhs_portfolio/screens/components/project%20screen/project_cards.dart';
import 'package:anirudhs_portfolio/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/srt.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.6),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to my Creative Hub",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const CustomAnimatedText(),
                const SizedBox(height: defaultPadding),
                // if (!Responsive.isMobileLarge(context))
                //   ElevatedButton(
                //     onPressed: () {
                //       String emailAddress =
                //           "anirudhjayakumar.business@gmail.com";
                //       final url = 'mailto:$emailAddress?';

                //       openURL("mailto:anirudhjayakumar.business@gmail.com");
                //     },
                //     style: TextButton.styleFrom(
                //         padding: const EdgeInsets.symmetric(
                //             horizontal: defaultPadding * 2,
                //             vertical: defaultPadding),
                //         backgroundColor: primaryColor),
                //     child: const Text("Contact Me"),
                //   ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText("Mobile Applications?"),
          TyperAnimatedText("Responsive Web Applications?"),
          TyperAnimatedText("Let's create something Extraordinary together."),
          // TyperAnimatedText("I shoot cars and short movies."),
        ],
      ),
    );
  }
}

launchMailto() async {
  final mailtoLink =
      Mailto(to: ["anirudhjayakumar.business@gmail.com"], body: 'Hey!');
  await launchUrl('$mailtoLink' as Uri);
}
