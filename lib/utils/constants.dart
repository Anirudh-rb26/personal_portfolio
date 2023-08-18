import 'package:flutter/material.dart';

const primaryColor = Colors.deepPurple;
const secondaryColor = Color.fromARGB(255, 7, 7, 9);
const darkColor = Color(0xFF191923);
const textColor = Color(0xFF8B8B8D);
const backgroundColor = Colors.black;

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

List<Widget> mainMenuNavigationItems = [
  ElevatedButton(onPressed: () {}, child: const Text("Education")),
  ElevatedButton(onPressed: () {}, child: const Text("Projects")),
  ElevatedButton(onPressed: () {}, child: const Text("Blogs (Coming Soon)")),
];
bool isMobile = false;
