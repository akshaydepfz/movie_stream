import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_images.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/database/movie_data.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/actor_details/screens/actor_details_screen.dart';
import 'package:movie_stream/view/home/providers/landing_provider.dart';
import 'package:movie_stream/view/home/widgets/movie_card_widget.dart';
import 'package:movie_stream/view/home/widgets/play_button.dart';
import 'package:movie_stream/view/home/widgets/star_rating_widget.dart';
import 'package:movie_stream/view/home/widgets/title_card_widget.dart';
import 'package:movie_stream/view/movie_details_screen/screens/movie_details_screen.dart';
import 'package:movie_stream/view/search/widgets/actors_card.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Consumer<LandingProvider>(builder: (context, p, _) {
              return Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: p.sliderbanners.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        height: MediaQuery.of(context).size.height * .40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(p.sliderbanners[index]),
                                fit: BoxFit.cover)),
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * .40,
                      autoPlay: true,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        p.onSliderIndexChange(index);
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  p.bannerTitels[p.activeIndex],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text('Action'),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text('Drama'),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text('Adventure'),
                                  ],
                                ),
                                AppSpacing.h10,
                                Consumer<LandingProvider>(
                                    builder: (context, p, _) {
                                  return buildIndicator(p.activeIndex);
                                }),
                              ],
                            ),
                            PlayButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieDetailsScreen(
                                              image:
                                                  'assets/images/poster4.jpg',
                                            )));
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const TitleCardWidget(
                    title: 'Latests',
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                        itemCount: MovieData.movies.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return MovieCard(
                            name: MovieData.movies[i].name,
                            image: MovieData.movies[i].image,
                            duration: MovieData.movies[i].duration,
                            rating: MovieData.movies[i].rating,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MovieDetailsScreen(
                                            image: MovieData.movies[i].image,
                                          )));
                            },
                          );
                        }),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.secondary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(AppImages.poster2),
                          ),
                          AppSpacing.w15,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('6 Sesons'),
                              AppSpacing.h15,
                              const Text(
                                'Vikings',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  const Text('Action'),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    height: 8,
                                    width: 8,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text('Drama'),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    height: 8,
                                    width: 8,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text('Adventure'),
                                ],
                              ),
                              AppSpacing.h10,
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .58,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PlayButton(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MovieDetailsScreen(
                                                      image:
                                                          'assets/images/poster4.jpg',
                                                    )));
                                      },
                                    ),
                                    const StarRatingWidget(
                                      rating: '4.2',
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.h20,
                  const TitleCardWidget(
                    title: 'Popular Actors',
                  ),
                  AppSpacing.h20,
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
                  const TitleCardWidget(
                    title: 'Trending',
                  ),
                  AppSpacing.h20,
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                        itemCount: MovieData.movies2.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return MovieCard(
                            name: MovieData.movies2[i].name,
                            image: MovieData.movies2[i].image,
                            duration: MovieData.movies2[i].duration,
                            rating: MovieData.movies2[i].rating,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MovieDetailsScreen(
                                            image: MovieData.movies2[i].image,
                                          )));
                            },
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(int activeIndex) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: ExpandingDotsEffect(
          dotColor: Colors.grey.withOpacity(0.3),
          activeDotColor: AppColor.primary,
          dotHeight: 10,
          dotWidth: 10,
        ),
      );
}
