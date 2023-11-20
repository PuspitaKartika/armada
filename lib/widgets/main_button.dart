import 'package:armada/theme.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: secondary),
        onPressed: () {},
        child: const Text(
          "Masuk",
          style: TextStyle(color: Colors.black),
        ));
  }
}
