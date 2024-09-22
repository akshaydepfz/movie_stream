import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/database/movie_data.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/actor_details/screens/actor_details_screen.dart';

import 'package:movie_stream/view/movie_details_screen/screens/movie_details_screen.dart';
import 'package:movie_stream/view/search/widgets/actors_card.dart';
import 'package:movie_stream/view/search/widgets/search_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColor.secondary)),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    AppSpacing.w10,
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Search...'),
                    )),
                  ],
                ),
              ),
              AppSpacing.h20,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Actors',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      AppSpacing.h10,
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                            itemCount: MovieData.actors.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) {
                              return ActorsCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ActorDetailsSceen()));
                                },
                                image: MovieData.actors[i].image,
                                name: MovieData.actors[i].name,
                              );
                            }),
                      ),
                      AppSpacing.h20,
                      const Text(
                        'Movies & Seriers',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      AppSpacing.h20,
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 5,
                          childAspectRatio: 0.6,
                        ),
                        itemCount: MovieData.movies3.length,
                        itemBuilder: (context, i) {
                          return SearchMovieCard(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MovieDetailsScreen(
                                            image: MovieData.movies3[i].image,
                                          )));
                            },
                            name: MovieData.movies3[i].name,
                            image: MovieData.movies3[i].image,
                            duration: MovieData.movies3[i].duration,
                            rating: MovieData.movies3[i].rating,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

