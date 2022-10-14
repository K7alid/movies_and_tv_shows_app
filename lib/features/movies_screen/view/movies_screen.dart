import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/movies_screen/controller/movies_view_brain.dart';
import 'package:movies_and_tv_shows_app/features/movies_screen/movie_builder.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoviesViewBrain>(
      init: MoviesViewBrain(),
      builder: (controller) => DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Text('Movies'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text('Popular'),
                ),
                Tab(
                  child: Text('Now'),
                ),
                Tab(
                  child: Text('Upcoming'),
                ),
                Tab(
                  child: Text('Top Rated'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ConditionalBuilder(
                condition: controller.popularMovies != null,
                builder: (context) =>
                    MovieBuilder(response: controller.popularMovies!),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
              ConditionalBuilder(
                condition: controller.nowPlayingMovies != null,
                builder: (context) =>
                    MovieBuilder(response: controller.nowPlayingMovies!),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
              ConditionalBuilder(
                condition: controller.upcomingMovies != null,
                builder: (context) =>
                    MovieBuilder(response: controller.upcomingMovies!),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
              ConditionalBuilder(
                condition: controller.topRatedMovies != null,
                builder: (context) =>
                    MovieBuilder(response: controller.topRatedMovies!),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
