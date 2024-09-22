import 'package:flutter/material.dart';
import 'package:movie_stream/style/app_color.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'By signup you accept',
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Privacy Policy T&C',
              style: TextStyle(fontSize: 13, color: AppColor.primary),
            ))
      ],
    );
  }
}
