import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.icon,
    this.padding = 8,
    required this.onTap,
  });
  final IconData icon;
  final double padding;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: padding),
        margin: const EdgeInsets.all(15),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Icon(
          icon,
          size: 20,
        )),
      ),
    );
  }
}
