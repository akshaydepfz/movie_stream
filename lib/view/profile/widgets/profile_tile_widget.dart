import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/style/app_color.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.trailing,
    required this.isBackButtonEnable,
  });
  final String title;
  final IconData icon;
  final String trailing;
  final bool isBackButtonEnable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: AppColor.secondary, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.grey,
              ),
              AppSpacing.w10,
              Text(title),
            ],
          ),
          isBackButtonEnable
              ? const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey,
                )
              : Text(trailing)
        ],
      ),
    );
  }
}
