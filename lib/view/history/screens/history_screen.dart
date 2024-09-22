import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/database/movie_data.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/history/widgets/download_movie_card.dart';
import 'package:movie_stream/view/history/widgets/history_watch_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs: Watching and Downloaded
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.red,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    border: null,
                    color:
                        AppColor.primary, // Background color for selected tab
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        width: MediaQuery.of(context).copyWith().size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColor.primary), // Border color
                        ),
                        child: const Center(child: Text('Watching')),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: MediaQuery.of(context).copyWith().size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppColor.primary), // Border color
                        ),
                        child: const Center(child: Text('Downloaded')),
                      ),
                    ),
                  ],
                ),
                AppSpacing.h20,
                Expanded(
                  child: TabBarView(
                    children: [
                      Expanded(
                          child: ListView.builder(
                              itemCount: MovieData.movies3.length,
                              itemBuilder: (context, i) {
                                return HistoryWatchCard(
                                    image: MovieData.movies3[i].image,
                                    title: MovieData.movies3[i].name);
                              })),
                      Expanded(
                          child: ListView.builder(
                              itemCount: MovieData.movies3.length,
                              itemBuilder: (context, i) {
                                return DownloadedMovieCard(
                                    image: MovieData.movies3[i].image,
                                    title: MovieData.movies3[i].name);
                              })),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
