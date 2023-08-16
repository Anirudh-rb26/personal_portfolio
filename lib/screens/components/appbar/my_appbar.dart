import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:anirudhs_portfolio/utils/responsive.dart';
import 'package:flutter/material.dart';

AppBar MyAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: backgroundColor,
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
    ),
    title: Container(
      alignment: Alignment.center,
      child: Builder(
        builder: (context) => TextButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          child: Text("<Anirudh Jayakumar>",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white)
                  : Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white)),
        ),
      ),
    ),
    actions: [
      ActionBar(),
    ],
  );
}

class ActionBar extends StatelessWidget {
  const ActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ActionButton(text: "Home"),
        ActionButton(text: "Projects"),
        ActionButton(text: "Socials"),
      ],
    );
  }
}

class NotActionBar extends StatelessWidget {
  const NotActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ActionButton(text: "Home"),
        ActionButton(text: "Projects"),
        ActionButton(text: "Socials"),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;

  const ActionButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
