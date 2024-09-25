import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_review/components/movie_item.dart';
import 'package:movies_review/core/models/movie/movie.dart';
import 'package:movies_review/core/models/movie/service/movie/movie_list.dart';
import 'package:provider/provider.dart';

class MoviesOverviewPage extends StatefulWidget {
  @override
  State<MoviesOverviewPage> createState() => _MoviesOverviewPageState();
}

class _MoviesOverviewPageState extends State<MoviesOverviewPage> {
  @override
  void initState() {
    super.initState();
    MovieList().loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MovieList>(context);
    final List<Movie> loadMovie = provider.movies;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 250,
          ),
          itemCount: loadMovie.length,
          itemBuilder: (context, index) => MovieItem(loadMovie[index]),
        ),
      ),
    );
  }
}
