import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({
    super.key,
    required this.rating,
  });
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          size: 20,
          color: Colors.amber,
        ),
        AppSpacing.w5,
        Text(
          rating,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
