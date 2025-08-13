import 'package:flutter/material.dart';

class Custominput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool password;

  const Custominput({
    super.key, 
    required this.label,
    required this.controller,
    this.password = false,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: password,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}