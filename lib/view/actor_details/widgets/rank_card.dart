import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';

class RankCardWidget extends StatelessWidget {
  const RankCardWidget({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        AppSpacing.h5,
        Text(value)
      ],
    );
  }
}
