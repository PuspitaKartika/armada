import 'package:armada/theme.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;

  final String hintText;
  final bool? enable;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.enable = true,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final FocusNode _focusNode = FocusNode();

  bool _obscureText = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Password",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 4,
      ),
      TextFormField(
        controller: widget.controller,
        enabled: widget.enable,
        focusNode: _focusNode,
        obscureText: _obscureText,
        decoration: InputDecoration(
            hintText: widget.hintText,
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
            suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                })),
      )
    ]);
  }
}
