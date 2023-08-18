import 'package:anirudhs_portfolio/screens/components/contact%20screen/socialmedia_links.dart';
import 'package:anirudhs_portfolio/screens/components/project%20screen/project_cards.dart';
import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Socials",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: defaultPadding),
        Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(35),
          ),
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: defaultPadding),
              const Text("Personal Accounts"),
              const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      openURL(twitter);
                    },
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("assets/icons/twitter.png"),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(personalInstagram);
                    },
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("assets/icons/instagram.png"),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(personalYoutube);
                    },
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("assets/icons/youtube.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              const Text("Professional Accounts"),
              const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      openURL(photographyInstagram);
                    },
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("assets/icons/instagram.png"),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(linkedin);
                    },
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("assets/icons/linkedin.png"),
                    ),
                  ),
                  // SizedBox(width: defaultPadding),
                  // GestureDetector(
                  //   onTap: () {
                  //     openURL(github);
                  //   },
                  //   child: Container(
                  //     child: Image.asset("assets/icons/github.png"),
                  //   ),
                  // ),
                  const SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(personalYoutube);
                    },
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset("assets/icons/youtube.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
