import 'package:flutter/material.dart';
import 'package:movies_review/core/models/movie/service/movie/movie_list.dart';
import 'package:movies_review/pages/movie_detail_page.dart';
import 'package:movies_review/pages/movies_overview_page.dart';
import 'package:movies_review/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MovieList())],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 20, 20, 20),
            primary: const Color.fromARGB(255, 20, 20, 20),
            onPrimary: Colors.black,
            secondary: Colors.black,
            onSecondary: Colors.black,
            surface: Colors.black,
            onSurface: Colors.black,
          ),
          useMaterial3: true,
        ),
        home: MoviesOverviewPage(),
        routes: {
          AppRoutes.MOVIEDETAILPAGE: (context) => const MovieDetailPage(),
        },
      ),
    );
  }
}
