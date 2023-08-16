import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    super.key,
    this.title,
    this.information,
  });

  final String? title, information;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: const TextStyle(color: Colors.white),
          ),
          Text("$information"),
        ],
      ),
    );
  }
}
