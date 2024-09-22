import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/style/app_color.dart';

class BottomBarButton extends StatelessWidget {
  const BottomBarButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });
  final String icon;
  final String title;
  final bool isSelected;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
              height: 25,
              child: Image.asset(icon,
                  color: isSelected ? AppColor.primary : Colors.grey)),
          AppSpacing.h5,
          Text(
            title,
            style:
                TextStyle(color: isSelected ? AppColor.primary : Colors.grey),
          )
        ],
      ),
    );
  }
}
