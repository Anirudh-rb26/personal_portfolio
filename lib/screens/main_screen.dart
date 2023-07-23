import 'package:anirudhs_portfolio/constants.dart';
import 'package:flutter/material.dart';

import 'components/sidemenu_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.mainChildren});

  final List<Widget> mainChildren;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [...mainChildren],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
