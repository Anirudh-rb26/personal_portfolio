import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "Download Resume",
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color),
            ),
            const SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/check.svg"),
          ],
        ),
      ),
    );
  }
}
