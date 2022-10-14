import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/controller/tv_shows_view_brain.dart';
import 'package:movies_and_tv_shows_app/features/tv_shows_screen/tv_shows_builder.dart';

class TVShowsScreen extends StatelessWidget {
  const TVShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TVShowsBrain>(
      init: TVShowsBrain(),
      builder: (controller) => DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Text('TV Shows'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text('Popular'),
                ),
                Tab(
                  child: Text('Airing Today'),
                ),
                Tab(
                  child: Text('On TV'),
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
                condition: controller.popularTVShows != null,
                builder: (context) =>
                    TVShowsBuilder(response: controller.popularTVShows!),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
              ConditionalBuilder(
                condition: controller.airingTodayTVShows != null,
                builder: (context) =>
                    TVShowsBuilder(response: controller.airingTodayTVShows!),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
              ConditionalBuilder(
                condition: controller.onTheAirTVShows != null,
                builder: (context) =>
                    TVShowsBuilder(response: controller.onTheAirTVShows!),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
              ConditionalBuilder(
                condition: controller.topRatedTVShows != null,
                builder: (context) =>
                    TVShowsBuilder(response: controller.topRatedTVShows!),
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
