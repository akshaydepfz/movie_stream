import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/database/movie_data.dart';
import 'package:movie_stream/view/actor_details/screens/actor_details_screen.dart';
import 'package:movie_stream/view/home/widgets/movie_card_widget.dart';
import 'package:movie_stream/view/home/widgets/play_button.dart';
import 'package:movie_stream/view/movie_details_screen/widgets/action_button.dart';
import 'package:movie_stream/view/movie_details_screen/widgets/title_text.dart';
import 'package:movie_stream/view/search/widgets/actors_card.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover)),
                  ),
                  Positioned(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(
                          icon: Icons.arrow_back_ios,
                          onTap: () {
                            Navigator.pop(context);
                          }),
                      ActionButton(
                        icon: Icons.bookmark,
                        onTap: () {},
                        padding: 0,
                      ),
                    ],
                  )),
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
                                const Text(
                                  'Mulan',
                                  style: TextStyle(
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
                              ],
                            ),
                            PlayButton(
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              AppSpacing.h20,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleText(title: "Story"),
                    AppSpacing.h5,
                    const Text(
                      'In a post-apocalyptic world, Regan and her family learn that the alien predators can be defeated using high-frequency audio. Soon, armed with this knowledge, they set out to look for other survivors.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    AppSpacing.h20,
                    const TitleText(title: "Gallery"),
                    AppSpacing.h10,
                    SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/poster9.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                    AppSpacing.h20,
                    const TitleText(title: "Cast"),
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
                    const TitleText(title: "Similar"),
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
