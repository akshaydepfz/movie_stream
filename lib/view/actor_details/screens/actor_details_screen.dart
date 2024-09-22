import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/database/movie_data.dart';
import 'package:movie_stream/style/app_color.dart';
import 'package:movie_stream/view/actor_details/widgets/rank_card.dart';
import 'package:movie_stream/view/home/widgets/movie_card_widget.dart';
import 'package:movie_stream/view/movie_details_screen/screens/movie_details_screen.dart';
import 'package:movie_stream/view/movie_details_screen/widgets/action_button.dart';
import 'package:movie_stream/view/movie_details_screen/widgets/title_text.dart';

class ActorDetailsSceen extends StatelessWidget {
  const ActorDetailsSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/actor1.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          color: Colors.black.withOpacity(
                              0), // To keep the blur effect visible
                        ),
                      ),
                    ),
                    ActionButton(
                        icon: Icons.arrow_back_ios,
                        onTap: () {
                          Navigator.pop(context);
                        }),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/actor1.jpg'),
                            )),
                        AppSpacing.h10,
                        const Text('Robert John Downey Jr',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        AppSpacing.h10,
                        Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.primary,
                          ),
                          child: const Center(
                              child: Text(
                            'Following',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        AppSpacing.h20,
                      ],
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSpacing.h20,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RankCardWidget(title: 'Followers', value: '32 M'),
                        RankCardWidget(title: 'Rank', value: '12'),
                        RankCardWidget(title: 'Awards', value: '25'),
                      ],
                    ),
                    AppSpacing.h20,
                    AppSpacing.h20,
                    const Text(
                      'Bio',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    AppSpacing.h10,
                    const Text(
                        'Robert John Downey Jr. is an American actor. His films as a leading actor have grossed over \$14 billion worldwide, making him one of the highest-grossing actors of all time.'),
                    AppSpacing.h10,
                    const Text(
                      'Gallery',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    AppSpacing.h10,
                    SizedBox(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          SizedBox(
                              height: 100,
                              width: MediaQuery.of(context).size.width / 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/actor5.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                          AppSpacing.w20,
                          SizedBox(
                              height: 100,
                              width: MediaQuery.of(context).size.width / 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/actor6.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ],
                      ),
                    ),
                    AppSpacing.h20,
                    const TitleText(title: "Staring in"),
                    AppSpacing.h10,
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
                                        builder: (context) =>
                                            MovieDetailsScreen(
                                              image: MovieData.movies[i].image,
                                            )));
                              },
                            );
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
