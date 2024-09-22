import 'package:flutter/material.dart';

class TitleCardWidget extends StatelessWidget {
  const TitleCardWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'See All',
              style: TextStyle(color: Colors.grey),
            ))
      ],
    );
  }
}
