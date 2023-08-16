import 'package:anirudhs_portfolio/screens/components/contact%20screen/socialMedia_links.dart';
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
        SizedBox(height: defaultPadding),
        Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(35),
          ),
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: defaultPadding),
              Text("Personal Accounts"),
              SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      openURL(twitter);
                    },
                    child: Container(
                      child: Image.asset("assets/icons/twitter.png"),
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(personalInstagram);
                    },
                    child: Container(
                      child: Image.asset("assets/icons/instagram.png"),
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(personalYoutube);
                    },
                    child: Container(
                      child: Image.asset("assets/icons/youtube.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding),
              Text("Professional Accounts"),
              SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      openURL(photographyInstagram);
                    },
                    child: Container(
                      child: Image.asset("assets/icons/instagram.png"),
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(linkedin);
                    },
                    child: Container(
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
                  SizedBox(width: defaultPadding),
                  GestureDetector(
                    onTap: () {
                      openURL(personalYoutube);
                    },
                    child: Container(
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
