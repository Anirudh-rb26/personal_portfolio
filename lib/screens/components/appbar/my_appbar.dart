import 'dart:html';

import 'package:anirudhs_portfolio/screens/main_screen.dart';
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
        icon: const Icon(Icons.person),
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
  );
}
