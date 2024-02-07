import 'package:flutter/material.dart';

class PlayerNameTextField extends StatelessWidget {
  final Color color;
  final String hint;
  final TextEditingController controller;
  const PlayerNameTextField({super.key, required this.hint, required this.controller, required this.color});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 24,
      scrollPadding: const EdgeInsets.only(bottom: 80),
      controller: controller,
      style: TextStyle(
        color: color,
        fontSize: 10,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
        hintStyle: TextStyle(fontSize: 12, color: color),
        hintText: hint,
        counterText: '',
        fillColor: Colors.white70,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
