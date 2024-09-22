import 'package:flutter/material.dart';

class DivdingWidget extends StatelessWidget {
  const DivdingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: const Divider(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Or'),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: const Divider(),
        ),
      ],
    );
  }
}
