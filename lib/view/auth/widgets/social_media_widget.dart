import 'package:flutter/material.dart';
import 'package:movie_stream/style/app_color.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    required this.icon,
  });
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: AppColor.secondary, shape: BoxShape.circle),
      child: Image.asset(icon),
    );
  }
}
