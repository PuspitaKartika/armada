import 'package:armada/theme.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const MainButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: secondary),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ));
  }
}
