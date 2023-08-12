import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class SkillHeader extends StatelessWidget {
  const SkillHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        "Skills",
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
