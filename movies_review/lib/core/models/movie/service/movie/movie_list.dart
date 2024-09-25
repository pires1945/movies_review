import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:movies_review/core/models/movie/movie.dart';
import 'package:movies_review/utils/constants.dart';

class MovieList with ChangeNotifier {
  static final List<Movie> _movies = [];
  List<Movie> get movies => [..._movies];
  int page = 1;

  Future<void> loadMovies() async {
    _movies.clear();
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/discover/movie?api_key=${Constants.apiKey}&language=pt-BR&sort_by=popularity.desc&include_adult=false&include_video=false&page=$page&with_watch_monetization_types=flatrate'));
    if (response.body == 'null') return;

    Map<String, dynamic> data = jsonDecode(response.body);
    List<dynamic> results = data['results'];

    results.forEach((e) {
      _movies.add(Movie(
        id: e['id'],
        title: e['title'],
        overview: e['overview'],
        image: e['poster_path'],
        backdropPath: e['backdrop_path'],
      ));
    });
  }
}
