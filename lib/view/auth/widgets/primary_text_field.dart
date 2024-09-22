import 'package:flutter/material.dart';
import 'package:movie_stream/style/app_color.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.primary)),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
