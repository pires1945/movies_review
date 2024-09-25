import 'package:flutter/material.dart';

class Movie with ChangeNotifier {
  final int id;
  final String title;
  final String overview;
  final String image;
  final String backdropPath;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.image,
    required this.backdropPath,
  });
}
