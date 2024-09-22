import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/view/movie_details_screen/screens/movie_details_screen.dart';

class HistoryWatchCard extends StatelessWidget {
  const HistoryWatchCard({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MovieDetailsScreen(image: image)));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Icon(
                    Icons.play_arrow,
                    size: 35,
                  ),
                ),
              ),
            ),
            AppSpacing.w20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const Text(
                  '00:32:52 / 02:25:00',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const Text(
                  'Last Watched: 2h ago',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            )
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey,
        )
      ],
    );
  }
}
