import 'package:flutter/material.dart';
import 'package:movies_review/core/models/movie/movie.dart';
import 'package:movies_review/utils/app_routes.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  const MovieItem(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    const baseUrlImage = 'https://image.tmdb.org/t/p/w220_and_h330_face';
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            movie.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
        child: GestureDetector(
          child: Image.network(
            baseUrlImage + movie.backdropPath,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context)
                .pushNamed(AppRoutes.MOVIEDETAILPAGE, arguments: movie);
          },
        ),
      ),
    );
  }
}
