import 'package:flutter/material.dart';

class myInfo extends StatelessWidget {
  const myInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/srt.jpg"),
            ),
            const Spacer(),
            Text(
              "Anirudh Jayakumar",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "Flutter Developer\nPhotographer & Cinematographer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
