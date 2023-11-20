import 'package:armada/theme.dart';
import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final IconButton? surfix;

  const MainTextField({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.surfix,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: neutral,
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              suffixIcon: surfix),
        ),
      ],
    );
  }
}
