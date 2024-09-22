import 'package:flutter/material.dart';
import 'package:movie_stream/style/app_color.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
    required this.onTap,
  });
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
            color: AppColor.primary, shape: BoxShape.circle),
        child: const Center(
          child: Icon(
            Icons.play_arrow,
            size: 30,
          ),
        ),
      ),
    );
  }
}
