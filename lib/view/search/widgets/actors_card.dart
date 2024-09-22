import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';

class ActorsCard extends StatelessWidget {
  const ActorsCard({
    super.key,
    required this.image,
    required this.name,
    required this.onTap,
  });
  final String image;
  final String name;
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
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          AppSpacing.h10,
          SizedBox(
            width: 70,
            height: 50,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
