import 'package:flutter/material.dart';

const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const textColor = Color(0xFF8B8B8D);
const backgroundColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

List<Widget> mainMenuNavigationItems = [
  ElevatedButton(onPressed: () {}, child: const Text("Education")),
  ElevatedButton(onPressed: () {}, child: const Text("Projects")),
  ElevatedButton(onPressed: () {}, child: const Text("Blogs (Coming Soon)")),
];
bool isMobile = false;
