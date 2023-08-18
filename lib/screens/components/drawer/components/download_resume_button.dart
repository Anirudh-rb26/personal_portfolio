import 'package:anirudhs_portfolio/screens/components/project%20screen/project_cards.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Download My Resume"),
        Container(
          height: 40,
          width: 500,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              openURL(
                  "https://drive.google.com/file/d/1Fc_vEwjagbmIuKcXbJZPVkrVbxfoeamg/view?usp=sharing");
            },
            icon: const Icon(Icons.file_copy),
          ),
        ),
      ],
    );
  }
}
