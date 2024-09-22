import 'package:flutter/material.dart';
import 'package:movie_stream/constants/app_spacing.dart';
import 'package:movie_stream/style/app_color.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: AppColor.primary, borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.logout,
                color: Colors.white,
              ),
              AppSpacing.w10,
              Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
