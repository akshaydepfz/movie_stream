import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/view/home/widgets/star_rating_widget.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.name,
    required this.image,
    required this.duration,
    required this.rating,
    required this.onTap,
  });
  final String name;
  final String image;
  final String duration;
  final String rating;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            height: 200,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                borderRadius: BorderRadius.circular(10)),
          ),
          AppSpacing.h10,
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          AppSpacing.h10,
          SizedBox(
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  duration,
                  style: const TextStyle(color: Colors.grey),
                ),
                StarRatingWidget(rating: rating)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
