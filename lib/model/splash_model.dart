import 'package:flutter/material.dart';

class SplashPageModel {
  final String title;
  final String description;
  final Color backgroundColor;

  const SplashPageModel({
    required this.title,
    required this.description,
    required this.backgroundColor,
  });
}

final splashPages = [
  const SplashPageModel(
    title: "Benvenuto",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper lacus mauris, eu scelerisque risus pretium pharetra.",
    backgroundColor: Colors.indigo,
  ),
  const SplashPageModel(
    title: "Come va?",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper lacus mauris, eu scelerisque risus pretium pharetra.",
    backgroundColor: Colors.blue,
  ),
  const SplashPageModel(
    title: "W Flutter",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper lacus mauris, eu scelerisque risus pretium pharetra.",
    backgroundColor: Colors.green,
  ),
  const SplashPageModel(
    title: "ez win 1v9",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper lacus mauris, eu scelerisque risus pretium pharetra.",
    backgroundColor: Colors.orange,
  ),
  const SplashPageModel(
    title: "Nyan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper lacus mauris, eu scelerisque risus pretium pharetra.",
    backgroundColor: Colors.red,
  ),
];
