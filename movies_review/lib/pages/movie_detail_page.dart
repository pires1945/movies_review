import 'package:flutter/material.dart';
import 'package:movies_review/core/models/movie/movie.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    const baseUrlImage = 'https://image.tmdb.org/t/p/w220_and_h330_face';
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white70,
        title: Text(
          movie.title,
          style: const TextStyle(color: Colors.white70),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Image.network(
                  baseUrlImage + movie.image,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 49, 49, 49),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            movie.title,
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 26),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, bottom: 20),
                          child: Text(
                            movie.overview,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
